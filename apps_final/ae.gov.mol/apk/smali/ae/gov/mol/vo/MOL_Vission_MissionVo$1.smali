.class Lae/gov/mol/vo/MOL_Vission_MissionVo$1;
.super Ljava/lang/Object;
.source "MOL_Vission_MissionVo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/MOL_Vission_MissionVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lae/gov/mol/vo/MOL_Vission_MissionVo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/MOL_Vission_MissionVo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 60
    new-instance v0, Lae/gov/mol/vo/MOL_Vission_MissionVo;

    invoke-direct {v0, p1}, Lae/gov/mol/vo/MOL_Vission_MissionVo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/MOL_Vission_MissionVo$1;->createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/MOL_Vission_MissionVo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lae/gov/mol/vo/MOL_Vission_MissionVo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 55
    new-array v0, p1, [Lae/gov/mol/vo/MOL_Vission_MissionVo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/MOL_Vission_MissionVo$1;->newArray(I)[Lae/gov/mol/vo/MOL_Vission_MissionVo;

    move-result-object v0

    return-object v0
.end method
