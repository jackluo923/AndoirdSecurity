.class public Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;
.super Landroid/os/AsyncTask;
.source "FragmentGCCEmployeesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackProcess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mResultResponse:Ljava/lang/String;

.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;


# direct methods
.method public constructor <init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->mResultResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 193
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->strNumber:Ljava/lang/String;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v7, v7, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-static {v7}, Lae/gov/mol/MolApplication;->getUserLoggedin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lae/gov/mol/MolApplication;->getmLanguageNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lae/gov/mol/webservices/WebServiceResponse;->getGCCEmployeesList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->mResultResponse:Ljava/lang/String;

    .line 194
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-static {v5}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 200
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 201
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 203
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    new-instance v6, Lae/gov/xmlhandler/GCCEmployeesByCompanyCodeDetailsHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/GCCEmployeesByCompanyCodeDetailsHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mDetailsHandler:Lae/gov/xmlhandler/GCCEmployeesByCompanyCodeDetailsHandler;

    .line 204
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mDetailsHandler:Lae/gov/xmlhandler/GCCEmployeesByCompanyCodeDetailsHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 205
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 206
    .local v1, "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 207
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 208
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 209
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mDetailsHandler:Lae/gov/xmlhandler/GCCEmployeesByCompanyCodeDetailsHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/GCCEmployeesByCompanyCodeDetailsHandler;->getmArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mArrayList:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 212
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 213
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    new-instance v6, Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    invoke-direct {v6}, Lae/gov/xmlhandler/CompanyStatusInfoHandler;-><init>()V

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    .line 214
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 215
    new-instance v1, Lorg/xml/sax/InputSource;

    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    invoke-direct {v1}, Lorg/xml/sax/InputSource;-><init>()V

    .line 216
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 217
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 218
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 219
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCompanyStatusInfoHandler:Lae/gov/xmlhandler/CompanyStatusInfoHandler;

    invoke-virtual {v6}, Lae/gov/xmlhandler/CompanyStatusInfoHandler;->getmCompanyStatusInfoVo()Lae/gov/mol/vo/CompanyStatusInfoVo;

    move-result-object v6

    iput-object v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCompanyStatusInfoVo:Lae/gov/mol/vo/CompanyStatusInfoVo;

    .line 220
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->isDataRecieved:Z

    .line 222
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mArrayList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 223
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v5, v5, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 224
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V

    .line 233
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 227
    .restart local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .restart local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v4    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    iget-object v5, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v6, v6, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v7, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->mResultResponse:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lae/gov/mol/helper/CommonMethods;->getErrorHandlerMessage(Ljava/lang/String;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v6

    invoke-static {v5, v6}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$0(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v1    # "inputSource":Lorg/xml/sax/InputSource;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v3, 0x7f090239

    const v6, 0x7f09019f

    const v2, 0x7f090137

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-virtual {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    invoke-virtual {v0}, Lae/gov/mol/webservices/WebServiceResponse;->checkInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 242
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isTimeOutError:Z

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-virtual {v1, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto :goto_1

    .line 247
    :cond_3
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mWebServiceResponse:Lae/gov/mol/webservices/WebServiceResponse;

    iget-boolean v0, v0, Lae/gov/mol/webservices/WebServiceResponse;->isOtherError:Z

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    .line 249
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 252
    :cond_4
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 253
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 254
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/Fragment_ENetwasalForm;->setActivityFinish(Z)V

    .line 255
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    new-instance v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$ListBaseAdapter;

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    invoke-direct {v1, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$ListBaseAdapter;-><init>(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;)V

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$ListBaseAdapter;

    .line 256
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mListBaseAdapter:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$ListBaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 258
    :cond_5
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 259
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 261
    :cond_6
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 264
    :cond_7
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v0}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 265
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    # getter for: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mErrorHandlerVo:Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$2(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;)Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;

    move-result-object v1

    invoke-virtual {v1}, Lae/gov/mol/vo/ErrorHandlerandForgotPassWordVo;->getResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1

    .line 267
    :cond_8
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v0, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCommonMethods:Lae/gov/mol/helper/CommonMethods;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->strNumber:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mTextViewTitle:Landroid/widget/TextView;

    # invokes: Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getTitle(Landroid/widget/TextView;)Ljava/lang/String;
    invoke-static {v2, v3}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->access$1(Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v3, v3, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v4, v3}, Lae/gov/mol/helper/CommonMethods;->ShowAlertFinishFragmentActivity(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    iget-object v1, v1, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    const-string v2, ""

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList$BackProcess;->this$0:Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;

    const v4, 0x7f09007d

    invoke-virtual {v3, v4}, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lae/gov/mol/fragment/eTasheel/eNetwasal/FragmentGCCEmployeesList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 188
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 189
    return-void
.end method
