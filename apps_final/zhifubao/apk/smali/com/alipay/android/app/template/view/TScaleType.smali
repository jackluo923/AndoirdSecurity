.class public final enum Lcom/alipay/android/app/template/view/TScaleType;
.super Ljava/lang/Enum;
.source "TScaleType.java"


# static fields
.field public static final enum Center:Lcom/alipay/android/app/template/view/TScaleType;

.field public static final enum ScaleAspectAuto:Lcom/alipay/android/app/template/view/TScaleType;

.field public static final enum ScaleAspectFill:Lcom/alipay/android/app/template/view/TScaleType;

.field public static final enum ScaleAspectFit:Lcom/alipay/android/app/template/view/TScaleType;

.field public static final enum ScaleToFill:Lcom/alipay/android/app/template/view/TScaleType;

.field private static final synthetic a:[Lcom/alipay/android/app/template/view/TScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/alipay/android/app/template/view/TScaleType;

    const-string/jumbo v1, "ScaleToFill"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/view/TScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/TScaleType;->ScaleToFill:Lcom/alipay/android/app/template/view/TScaleType;

    new-instance v0, Lcom/alipay/android/app/template/view/TScaleType;

    const-string/jumbo v1, "ScaleAspectFit"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/view/TScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectFit:Lcom/alipay/android/app/template/view/TScaleType;

    new-instance v0, Lcom/alipay/android/app/template/view/TScaleType;

    const-string/jumbo v1, "ScaleAspectFill"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/view/TScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectFill:Lcom/alipay/android/app/template/view/TScaleType;

    new-instance v0, Lcom/alipay/android/app/template/view/TScaleType;

    const-string/jumbo v1, "ScaleAspectAuto"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/template/view/TScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectAuto:Lcom/alipay/android/app/template/view/TScaleType;

    new-instance v0, Lcom/alipay/android/app/template/view/TScaleType;

    const-string/jumbo v1, "Center"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/template/view/TScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/TScaleType;->Center:Lcom/alipay/android/app/template/view/TScaleType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/android/app/template/view/TScaleType;

    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleToFill:Lcom/alipay/android/app/template/view/TScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectFit:Lcom/alipay/android/app/template/view/TScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectFill:Lcom/alipay/android/app/template/view/TScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->ScaleAspectAuto:Lcom/alipay/android/app/template/view/TScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/template/view/TScaleType;->Center:Lcom/alipay/android/app/template/view/TScaleType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/android/app/template/view/TScaleType;->a:[Lcom/alipay/android/app/template/view/TScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/TScaleType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/view/TScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/TScaleType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/view/TScaleType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/view/TScaleType;->a:[Lcom/alipay/android/app/template/view/TScaleType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/view/TScaleType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
