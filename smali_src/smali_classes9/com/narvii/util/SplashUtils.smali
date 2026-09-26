.class public Lcom/narvii/util/SplashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static cancelSplash(Landroid/app/Activity;)Z
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0029

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    instance-of v1, v0, Lcom/narvii/master/SplashView;

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/master/SplashView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/master/SplashView;->cancel()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    return v2

    .line 41
    .line 42
    :cond_1
    if-eqz v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    return v2

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
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

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    .line 21
    const v1, 0x7f0a0029

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    const v2, 0x7f0d0399

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget v2, p0, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 55
    move-result v3

    .line 56
    add-int/2addr v2, v3

    .line 57
    .line 58
    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 64
    move-result p1

    .line 65
    add-int/2addr v2, p1

    .line 66
    .line 67
    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, Lcom/narvii/master/SplashView;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0, p2, p3}, Lcom/narvii/master/SplashView;->splash(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V

    .line 77
    return-void

    .line 78
    .line 79
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    invoke-interface {p3, p0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
