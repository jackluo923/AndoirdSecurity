import com.ibm.wala.classLoader.*;
import com.ibm.wala.ipa.callgraph.*;
import com.ibm.wala.ipa.callgraph.impl.ClassHierarchyClassTargetSelector;
import com.ibm.wala.ipa.callgraph.impl.ClassHierarchyMethodTargetSelector;
import com.ibm.wala.ipa.callgraph.impl.DefaultContextSelector;
import com.ibm.wala.ipa.callgraph.impl.DefaultEntrypoint;
import com.ibm.wala.ipa.callgraph.propagation.SSAPropagationCallGraphBuilder;
import com.ibm.wala.ipa.callgraph.propagation.cfa.ZeroXCFABuilder;
import com.ibm.wala.ipa.callgraph.propagation.cfa.ZeroXInstanceKeys;
import com.ibm.wala.ipa.cha.ClassHierarchy;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.types.Selector;
import com.ibm.wala.types.TypeReference;
import com.ibm.wala.util.config.AnalysisScopeReader;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import java.util.jar.JarFile;

/**
 * Author: Xu Zhao
 * */

// 1. Detect exported Broadcast Receivers registered to receive Intents with
//    System actions
// 2.
public class IntentSpoofingDetector {
    private final String _androidLib = "lib/android.jar";
    private String _appDir = null;
    private Vulnerabilities vul;

    /*
     * This program accepts one argument:  the directory in which the APK file was
     * extracted.  If you have an APK file for an app that you wish to analyze, use
     * the preprocessing scripts first to create the "appDir" that the following code
     * expects.
     */
    public static void main(String[] args) throws Exception {
        java.lang.System.out.println("Working Directory = " +
                java.lang.System.getProperty("user.dir"));
        String appDir = "Vulnerabilities/IntentSpoofing-APK/"; // default analysis application
        if (args.length == 0) {
            // do nothing, use default settings
        } else if (args.length == 1) {
            appDir = args[0];
            java.lang.System.out.println("Analyzing application: "+ appDir);
        } else {
            java.lang.System.err.println("usage: IntentSpoofingDetector <directory of extracted APK>");
            return;
        }
        java.lang.System.out.println("Starting vulnerability detection for " + appDir);

        IntentSpoofingDetector analysis = new IntentSpoofingDetector(appDir);
        analysis.analyze();
    }

    public IntentSpoofingDetector(String appDir) {
        _appDir = appDir;
    }

    public void analyze() throws Exception {
        String appPath = null;
        String manifestPath = null;

        // Get class files and manifest from APK directory
        String extractedApkPath = _appDir;
        File extractedApkDir = new File(extractedApkPath);

        if (extractedApkDir.isDirectory()) {
            appPath = extractedApkPath + "/classes.jar";
            manifestPath = extractedApkPath + "/AndroidManifest.2.xml";
        } else {
            java.lang.System.out.println("\nMissing AndroidManifest.xml and/or classes.jar files in target APK directory. Exiting");
            return;
        }

        // Load classes in WALA
        AnalysisScope appScope = AnalysisScopeReader.makeJavaBinaryAnalysisScope(appPath, null);
        Module androidMod = new JarFileModule(new JarFile(_androidLib));
        appScope.addToScope(ClassLoaderReference.Extension, androidMod);
        // System.out.println(appScope.toString());

        vul = new Vulnerabilities();
        intentSpoofAnalysis(vul, appScope, manifestPath);
    }

    public void intentSpoofAnalysis(Vulnerabilities vul, AnalysisScope appScope, String manifestPath) throws Exception {
        System.out.println("--------------------");
        System.out.println("IntentSpoofingDetector");
        System.out.println("--------------------");
        ManifestModel model = new ManifestModel(manifestPath);
        IClassHierarchy appHierarchy = ClassHierarchy.make(appScope);
        Iterator<IClass> it =appHierarchy.iterator();
        while(it.hasNext()) {
            IClass c = it.next();
            if (isApplicationClass(c)) {
                int index = vulnerableComponentCheck(model, c);
                if(index != -1) {
                    model.components.get(index).c = c;
                    model.components.get(index).extraData = extraDataCheck(c);
                }
            }
        }
        // TODO: Add dynamically added IntentSpoofing Receivers
        vul.IntentSpoofing = new ArrayList<>();
        for(int i = 0; i < model.components.size(); i ++) {
            Vulnerabilities.SpoofedComponent spc = new Vulnerabilities.SpoofedComponent();
            spc.component = model.components.get(i).name;
            spc.type = model.components.get(i).type;
            if(model.components.get(i).extraData) {
                spc.withData = "true";
            } else {
                spc.withData = "false";
            }
            vul.IntentSpoofing.add(spc);
        }
    }
    private static boolean isApplicationClass (IClass c) {
        // only preserve application classes
        if(c.getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
            return true;
        } else {
            return false;
        }
    }
    private static boolean isBroadcastReceiver (IClass c) {
        IClass superClass = c.getSuperclass();
        while(true) {
            if(superClass.getClassLoader().toString().equals("Extension")) {
                if(superClass.getName().getClassName().toString().contains("BroadcastReceiver")) {
                    return true;
                } else {
                    return false;
                }
            } else {
                if(!superClass.getClassLoader().getReference().toString().equals("Application")) {
                    return false;
                } else {
                    superClass = superClass.getSuperclass();
                }
            }
        }
    }

    public class ManifestModel {
        private Component parseNode(String type, Node nl) {
            Component com = new Component();
            com.type = type;
            Node act = nl;
            if(act.getNodeType() == Node.ELEMENT_NODE) {
                Element e = (Element) act;
                com.name = e.getAttribute("android:name");
                if(e.getAttribute("android:permission") == null) {
                    com.permission = this.defaultPermission;
                } else {
                    com.permission = e.getAttribute("android:permission");
                }
                NodeList intentFilters = e.getElementsByTagName("intent-filter");
                com.intentFilter = new ArrayList<>();
                for(int j = 0; j < intentFilters.getLength(); j ++) {
                    IntentFilter ifilter = new IntentFilter();
                    Element ife = (Element)intentFilters.item(j);
                    if(ife.getElementsByTagName("action").getLength() > 0) {
                        ifilter.action = ((Element)ife.getElementsByTagName("action").item(0)).getAttribute("android:name");
                    }
                    if(ife.getElementsByTagName("category").getLength() > 0) {
                        ifilter.category = ((Element)ife.getElementsByTagName("category").item(0)).getAttribute("android:name");
                    }
                    if(ife.getElementsByTagName("data").getLength() > 0) {
                        ifilter.data = ((Element)ife.getElementsByTagName("data").item(0)).getAttribute("android:name");
                    }
                    com.intentFilter.add(ifilter);
                }
            }
            // check if weak permission or with IntentFilter, then this is vulnerable component
            if(com.permission.contains("DANGEROUS") || com.permission.contains("WEAK")) {
                return com;
            } else if (com.intentFilter.size() != 0) {
                return com;
            }
            return null;
        }
        public ManifestModel(String manifestPath) throws ParserConfigurationException, IOException, SAXException {
            DocumentBuilderFactory factory =
                    DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            ByteArrayInputStream input = new ByteArrayInputStream(Files.readAllBytes(Paths.get(manifestPath)));
            Document doc = builder.parse(input);
            Element root = doc.getDocumentElement();
            NodeList rootList = root.getChildNodes();
            for(int i = 0; i < rootList.getLength(); i ++) {
                if(rootList.item(i).getNodeName() == "permission") {
                    this.defaultPermission = ((Element)rootList.item(i)).getAttribute("android:name");
                    this.defaultProtectionLevel = ((Element)rootList.item(i)).getAttribute("android:protectionLevel");
                }
            }
            NodeList activities = root.getElementsByTagName("activity");
            this.components = new ArrayList<>();
            for(int i = 0; i < activities.getLength(); i ++) {
                Component com = this.parseNode("Activity", activities.item(i));
                if (com != null) {
                    this.components.add(com);
                }
            }
            NodeList recs = root.getElementsByTagName("receiver");
            for(int i = 0; i < recs.getLength(); i ++) {
                Component com = this.parseNode("Receiver", recs.item(i));
                if (com != null) {
                    this.components.add(com);
                }
            }
            NodeList services = root.getElementsByTagName("service");
            for(int i = 0; i < services.getLength(); i ++) {
                Component com = this.parseNode("Service", services.item(i));
                if (com != null) {
                    this.components.add(com);
                }
            }
        }
        public String defaultPermission;
        public String defaultProtectionLevel;
        public List<Component> components;
        public class Component {
            public IClass c;
            String type;
            String name;
            String permission;
            List<IntentFilter> intentFilter;
            boolean extraData;
        }
    }
    public class IntentFilter {
        String action;
        String data;
        String category;
        String extradata;
    }

    private static int vulnerableComponentCheck(ManifestModel model, IClass c) throws
            ParserConfigurationException, IOException, SAXException {
        String name = (c.getName().getPackage().toString() + "/" + c.getName().getClassName().toString()).replaceAll("/", ".");
        for(int i = 0; i < model.components.size(); i ++) {
            if (model.components.get(i).name.equals(name)) {
                return i;
            }
        }
        return -1;
    }

    private final String[] activityLifecycleMethods = {
            "onCreate(Landroid/os/Bundle;)V",
            "onStart()V",
            "onResume()V",
            "onPause()V",
            "onStop()V",
            "onRestart()V",
            "onDestroy()V"
    };

    private static boolean extraDataCheck(IClass c) {
        // third check if component receives an intent and only reads action, categories, component and packagename
        // if so no extra data, else extra data
        // done.
        // Step 1: get all methods in c
        // Step 2: add each methods in c as entry point
        // for the entry point get call graph, traverse call graph
        // check for each function call, if calls any method that as Intent but not the following:
        // Intent.getAction()
        // Intent.getCategories()
        // Intent.getComponent()
        // Intent.getPackage()
        Collection<IMethod> methods = c.getAllMethods();
        Iterator<IMethod> it = methods.iterator();
        while(it.hasNext()) {
            IMethod m = it.next();
        }
        return true;
    }

    private HashMap<IMethod, MethodState> dict;


    public class MethodState {
        IMethod method;
        String type; // type of the method: Activity, Service, Receiver, ...
        List<IntentState> intents;
        boolean vul;
        List<IntentSinkState> intentSinks;
    }
    public class IntentState {
        String type; // Instantiate, argument, or return value
        boolean hasAction;
        boolean hasFlag;
        boolean extraData;
        String permission;
        boolean madeExplicit;
    }
    public class IntentSinkState {
        String name;
        IMethod sinker;
    }

    private void vulnerableIntentCheck(AnalysisScope scope) throws ClassHierarchyException {
        List<Vulnerabilities.VulnerableIntent> res = new ArrayList<Vulnerabilities.VulnerableIntent>();
        IClassHierarchy cha = ClassHierarchy.make(scope);
        List<Entrypoint> appEntrypoints = getAppEntrypoints(cha);
        CallGraph cg = makeZeroCFACallgraph(appEntrypoints, scope, cha);
        CGNode root = cg.getFakeRootNode();

        // Traverse  call graph
        callGraphTraverse(cg, root, 0);
        for(Map.Entry<IMethod, MethodState> entry : dict.entrySet()) {
            MethodState state = entry.getValue();
            if (state.vul) {
                Vulnerabilities.VulnerableIntent vi = new Vulnerabilities.VulnerableIntent();
                vi.type = state.type;
                vi.intentSender = state.method.toString();
                vi.withData = "false";
                boolean withData = false;
                for(IntentState is : state.intents) {
                    withData = withData || is.extraData;
                }
                res.add(vi);
            }
        }
        vul.UnauthorizedIntentReceipt = res;
    }

    private boolean isIntentType(TypeReference tp) {
        if(tp.isClassType()) {
            if(tp.getClassLoader().getName().toString().contains("Intent")) {
                return true;
            }
        }
        return false;
    }

    private boolean methodNameMatch(IMethod m, String name) {
        if(m.toString().contains(name)) {
            return true;
        }
        return false;
    }

    private boolean isWeekPermission(String permission) {
        return true;
    }

    private boolean isIntentSinker(IMethod m) {
        return false;
    }

    private void callGraphTraverse(CallGraph cg, CGNode currentNode, int level) {
        IClassHierarchy cha = cg.getClassHierarchy();
        IMethod currentMethod = currentNode.getMethod();
        boolean vul = false;
        // check if there is new intent instantiated
        IntentState its = null;
        if(dict.get(currentMethod).intents.size() != 0) {
            its = dict.get(currentMethod).intents.get(0); // get first one if it is not null
        }
        Iterator<NewSiteReference> newsiteIter = currentNode.iterateNewSites();
        while(newsiteIter.hasNext()) {
            NewSiteReference newsite = newsiteIter.next();
            if(isIntentType(newsite.getDeclaredType())) {
                its = new IntentState();
                its.type = "instantiate";
            }
        }

        Iterator<CallSiteReference> callsiteIter = currentNode.iterateCallSites();
        IntentSinkState iss = null;
        while(callsiteIter.hasNext()) {
            // if it is setAction: set action for intent
            CallSiteReference callsite = callsiteIter.next();
            IMethod m = cha.resolveMethod(callsite.getDeclaredTarget());
            if (isIntentType(m.getDeclaringClass().getReference()) && methodNameMatch(m, "setAction")) {
                its.hasAction = true;
            }
            if (isIntentType(m.getDeclaringClass().getReference()) && methodNameMatch(m, "setFlags")) {
                its.hasFlag = true;
            }
            if (isIntentType(m.getDeclaringClass().getReference()) &&
                    (!methodNameMatch(m, "setAction") && (!methodNameMatch(m, "setFlags") &&
                            ((methodNameMatch(m, "set")))))) {
                its.extraData = true;
            }
            // In callee methods: check if there exists an intent sinker
            if (isIntentSinker(m)) {
                iss = new IntentSinkState();
                iss.name = m.toString();
                iss.sinker = m;
            }
        }
        if(!dict.containsKey(currentMethod)) {
            dict.put(currentMethod, new MethodState());
        }
        if(dict.get(currentMethod).intents == null) {
            dict.get(currentMethod).intents = = new ArrayList<IntentState>();
        }
        dict.get(currentMethod).intentSinks = new ArrayList<IntentSinkState>();
        dict.get(currentMethod).method = currentMethod;
        dict.get(currentMethod).type = "Activity";
        if(its != null) {
            dict.get(currentMethod).intents.add(its);
        }
        if(iss != null) {
            dict.get(currentMethod).intentSinks.add(iss);
        }
        if(its != null && iss != null) {
            if(isWeekPermission(its.permission)) {
                vul = true;
            }
        }
        dict.get(currentMethod).vul = vul;

        Iterator<CallSiteReference> callsiteIter2 = currentNode.iterateCallSites();
        while (callsiteIter2.hasNext()) {
            CallSiteReference callsite = callsiteIter2.next();
            IMethod calledMethod = cha.resolveMethod(callsite.getDeclaredTarget());
            if (cg.getPossibleTargets(currentNode, callsite).isEmpty()) {
                // do nothing
            } else {
                for (CGNode targetNode : cg.getPossibleTargets(currentNode, callsite)) {
                    if (targetNode.getMethod().getDeclaringClass().getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
                        IMethod callee = targetNode.getMethod();
                        int para_num = callee.getNumberOfParameters();
                        boolean hasintent = false;
                        for(int i = 0; i < para_num; i ++) {
                            TypeReference tp = calledMethod.getParameterType(i);
                            if(isIntentType(tp)) {
                                hasintent = true;
                            }
                        }
                        if (hasintent) {
                            // add Intent in current node to callee dict
                            if(!dict.containsKey(calledMethod)) {
                                dict.put(calledMethod, new MethodState());
                                dict.get(calledMethod).intents = new ArrayList<IntentState>();
                                IntentState calleeits = new IntentState();
                                calleeits.type = its.type;
                                calleeits.extraData = its.extraData;
                                calleeits.hasAction = its.hasAction;
                                calleeits.hasFlag = its.hasFlag;
                                calleeits.permission = its.permission;
                                calleeits.madeExplicit = its.madeExplicit;
                                dict.get(calledMethod).intents.add(calleeits);
                            }
                        }
                        callGraphTraverse(cg, targetNode, level + 1);
                    } else {
                        // dont further zoom in because it reaches Android boundary
                    }
                }
            }
        }
    }


    private CallGraph makeZeroCFACallgraph(Iterable<Entrypoint> entrypoints, AnalysisScope scope, IClassHierarchy cha) {
        try {
            AnalysisOptions options = new AnalysisOptions(scope, entrypoints);
            options.setSelector(new ClassHierarchyMethodTargetSelector(cha));
            options.setSelector(new ClassHierarchyClassTargetSelector(cha));

            SSAPropagationCallGraphBuilder builder = ZeroXCFABuilder.make(cha, options, new AnalysisCache(), new DefaultContextSelector(options, cha), null, ZeroXInstanceKeys.NONE);

            CallGraph cg = builder.makeCallGraph(options, null);
            return cg;

        } catch (Exception e) {
            System.out.println("Error: " + e.toString());
            return null;
        }
    }

    private List<Entrypoint> getAppEntrypoints(IClassHierarchy cha) {
        List<Entrypoint> entrypoints = new ArrayList<Entrypoint>();

        // For now, just get lifecycle handlers
        IClass activityClass = cha.lookupClass(TypeReference.findOrCreate(ClassLoaderReference.Extension, "Landroid/app/Activity"));

        for (IClass activitySubclass : cha.computeSubClasses(activityClass.getReference())) {
            if (!activitySubclass.getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
                continue;
            }

            Collection<IMethod> declaredMethods = activitySubclass.getDeclaredMethods();

            for (String lifecycle : activityLifecycleMethods) {
                IMethod lifecycleMethod = cha.resolveMethod(activitySubclass, Selector.make(lifecycle));

                if (declaredMethods.contains(lifecycleMethod)) {
                    entrypoints.add(new DefaultEntrypoint(lifecycleMethod, cha));
                }
            }
        }

        return entrypoints;
    }
    public class Intent {
        public boolean explicited;
        public boolean actioned;
        public int flags;
        public String extra_data;
    }
    public class IntentSink {
        public IMethod method;
        public boolean implicit_sink;
    }
}
