.class public Lcom/ali/user/mobile/login/sso/model/CreateSsoTokenRequest;
.super Ljava/lang/Object;
.source "CreateSsoTokenRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alipaySsoToken:Ljava/lang/String;

.field public deviceId:Ljava/lang/String;

.field public did:Ljava/lang/String;

.field public externParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public systemType:Ljava/lang/String;

.field public taobaoSsoToken:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
