.class final Lcom/alipay/android/app/flybird/ui/window/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "mini_loading"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->a:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/a;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->c()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/widget/CustomToast;->a()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/a;->b:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->b(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
