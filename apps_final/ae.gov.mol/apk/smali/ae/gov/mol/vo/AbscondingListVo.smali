.class public Lae/gov/mol/vo/AbscondingListVo;
.super Ljava/lang/Object;
.source "AbscondingListVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/AbscondingListVo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CardDescription_arb:Ljava/lang/String;

.field private CardDescription_eng:Ljava/lang/String;

.field private CardExpiryDate:Ljava/lang/String;

.field private CardNumber:Ljava/lang/String;

.field private Natioanlity_eng:Ljava/lang/String;

.field private Nationality_arb:Ljava/lang/String;

.field private PassportNo:Ljava/lang/String;

.field private PersonCode:Ljava/lang/String;

.field private PersonName_arb:Ljava/lang/String;

.field private PersonName_eng:Ljava/lang/String;

.field private mLongDate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lae/gov/mol/vo/AbscondingListVo$1;

    invoke-direct {v0}, Lae/gov/mol/vo/AbscondingListVo$1;-><init>()V

    sput-object v0, Lae/gov/mol/vo/AbscondingListVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardExpiryDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_arb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_eng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Nationality_arb:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PassportNo:Ljava/lang/String;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/AbscondingListVo;->mLongDate:J

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardNumber:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardExpiryDate:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_eng:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_arb:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonCode:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_arb:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_eng:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Nationality_arb:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PassportNo:Ljava/lang/String;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lae/gov/mol/vo/AbscondingListVo;->mLongDate:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardNumber:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardExpiryDate:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_eng:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_arb:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonCode:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_arb:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_eng:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Nationality_arb:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PassportNo:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getCardDescription_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getCardDescription_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getCardExpiryDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNatioanlity_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Natioanlity_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Nationality_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PassportNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_arb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_arb:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName_eng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_eng:Ljava/lang/String;

    return-object v0
.end method

.method public getmLongDate()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lae/gov/mol/vo/AbscondingListVo;->mLongDate:J

    return-wide v0
.end method

.method public setCardDescription_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardDescription_arb"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_arb:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCardDescription_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardDescription_eng"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_eng:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCardExpiryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardExpiryDate"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->CardExpiryDate:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "cardNumber"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->CardNumber:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setNatioanlity_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "natioanlity_eng"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->Natioanlity_eng:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setNationality_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality_arb"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->Nationality_arb:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPassportNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "passportNo"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->PassportNo:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setPersonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "personCode"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonCode:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPersonName_arb(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_arb"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_arb:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setPersonName_eng(Ljava/lang/String;)V
    .locals 0
    .param p1, "personName_eng"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_eng:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setmLongDate(J)V
    .locals 0
    .param p1, "mLongDate"    # J

    .prologue
    .line 197
    iput-wide p1, p0, Lae/gov/mol/vo/AbscondingListVo;->mLongDate:J

    .line 198
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardExpiryDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->CardDescription_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PersonName_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Nationality_arb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->Natioanlity_eng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lae/gov/mol/vo/AbscondingListVo;->PassportNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    return-void
.end method
