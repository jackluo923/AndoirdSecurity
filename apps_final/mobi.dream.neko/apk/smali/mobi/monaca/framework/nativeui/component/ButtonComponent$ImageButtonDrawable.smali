.class public Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "ButtonComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/nativeui/component/ButtonComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageButtonDrawable"
.end annotation


# instance fields
.field protected backgroundColor:I

.field protected pressedBackgroundColor:I

.field final synthetic this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;


# direct methods
.method private constructor <init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v7, 0x66000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;->this$0:Lmobi/monaca/framework/nativeui/component/ButtonComponent;

    .line 198
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 199
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p1, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p2, v3}, Lmobi/monaca/framework/nativeui/UIUtil;->createBitmapWithColorFilter(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 201
    .local v1, "pressed":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p1, Lmobi/monaca/framework/nativeui/component/ButtonComponent;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v2}, Lmobi/monaca/framework/nativeui/UIContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p2, v3}, Lmobi/monaca/framework/nativeui/UIUtil;->createBitmapWithColorFilter(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 204
    .local v0, "disabled":Landroid/graphics/drawable/Drawable;
    new-array v2, v6, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    invoke-virtual {p0, v2, v1}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 205
    new-array v2, v6, [I

    const v3, -0x101009e

    aput v3, v2, v5

    invoke-virtual {p0, v2, v0}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 206
    new-array v2, v5, [I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Landroid/graphics/drawable/Drawable;Lmobi/monaca/framework/nativeui/component/ButtonComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lmobi/monaca/framework/nativeui/component/ButtonComponent;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x2"    # Lmobi/monaca/framework/nativeui/component/ButtonComponent$1;

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/nativeui/component/ButtonComponent$ImageButtonDrawable;-><init>(Lmobi/monaca/framework/nativeui/component/ButtonComponent;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
