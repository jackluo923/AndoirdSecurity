.class public Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineReq;
.super Ljava/lang/Object;


# instance fields
.field public engineVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineReq;->engineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/appengine/facade/AndroidEngineReq;->engineVersion:Ljava/lang/String;

    return-void
.end method
