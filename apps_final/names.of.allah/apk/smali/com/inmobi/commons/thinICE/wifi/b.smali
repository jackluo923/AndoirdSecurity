.class final Lcom/inmobi/commons/thinICE/wifi/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a()Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->b()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;->onTimeout()V

    :cond_0
    return-void
.end method
