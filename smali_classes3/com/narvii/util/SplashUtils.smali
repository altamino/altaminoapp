.class public Lcom/narvii/util/SplashUtils;
.super Ljava/lang/Object;
.source "SplashUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelSplash(Landroid/app/Activity;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 19
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 20
    check-cast p0, Landroid/view/ViewGroup;

    const v0, 0x7f09001d

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/narvii/master/SplashView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 23
    move-object v1, v0

    check-cast v1, Lcom/narvii/master/SplashView;

    invoke-virtual {v1}, Lcom/narvii/master/SplashView;->cancel()V

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static splash(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 36
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f09001d

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0b035f

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 41
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 42
    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 44
    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/SplashView;

    .line 46
    invoke-virtual {p1, p0, p2, p3}, Lcom/narvii/master/SplashView;->splash(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 50
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    return-void
.end method
