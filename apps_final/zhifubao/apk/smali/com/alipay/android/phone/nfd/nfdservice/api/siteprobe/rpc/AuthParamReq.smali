.class public Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/rpc/AuthParamReq;
.super Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public authType:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public clientType:Ljava/lang/String;

.field public deviceMac:Ljava/lang/String;

.field public fromPortal:Z

.field public sign:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public wifiParams:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/common/ToString;-><init>()V

    return-void
.end method
