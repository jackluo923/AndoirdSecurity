.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;
.super Ljava/lang/Object;
.source "AliUserRegisterWebviewEx_.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->a:Landroid/content/Context;

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->b:Landroid/content/Intent;

    .line 113
    return-void
.end method


# virtual methods
.method public flags(I)Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    return-object p0
.end method

.method public get()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public startForResult(I)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_$IntentBuilder_;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
