.class public final enum Lcom/alipay/android/app/template/view/PositionType;
.super Ljava/lang/Enum;
.source "PositionType.java"


# static fields
.field private static final synthetic a:[Lcom/alipay/android/app/template/view/PositionType;

.field public static final enum absolute:Lcom/alipay/android/app/template/view/PositionType;

.field public static final enum relative:Lcom/alipay/android/app/template/view/PositionType;

.field public static final enum staticc:Lcom/alipay/android/app/template/view/PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alipay/android/app/template/view/PositionType;

    const-string/jumbo v1, "staticc"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/view/PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/PositionType;->staticc:Lcom/alipay/android/app/template/view/PositionType;

    new-instance v0, Lcom/alipay/android/app/template/view/PositionType;

    const-string/jumbo v1, "absolute"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/view/PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/PositionType;->absolute:Lcom/alipay/android/app/template/view/PositionType;

    new-instance v0, Lcom/alipay/android/app/template/view/PositionType;

    const-string/jumbo v1, "relative"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/view/PositionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/PositionType;->relative:Lcom/alipay/android/app/template/view/PositionType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/template/view/PositionType;

    sget-object v1, Lcom/alipay/android/app/template/view/PositionType;->staticc:Lcom/alipay/android/app/template/view/PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/template/view/PositionType;->absolute:Lcom/alipay/android/app/template/view/PositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/view/PositionType;->relative:Lcom/alipay/android/app/template/view/PositionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/template/view/PositionType;->a:[Lcom/alipay/android/app/template/view/PositionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/PositionType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/view/PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/PositionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/view/PositionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/view/PositionType;->a:[Lcom/alipay/android/app/template/view/PositionType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/view/PositionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
