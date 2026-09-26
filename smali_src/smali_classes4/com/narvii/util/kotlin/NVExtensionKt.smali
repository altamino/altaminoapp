.class public final Lcom/narvii/util/kotlin/NVExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final bind(Landroid/view/ViewGroup;I)Lw7/m;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/kotlin/NVExtensionKt$bind$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/narvii/util/kotlin/NVExtensionKt$bind$1;-><init>(Landroid/view/ViewGroup;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final synthetic createIfAbsent(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/String;)Lcom/narvii/app/NVFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/narvii/app/NVFragment;",
            ">(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "clz"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "tag"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    const/4 v1, 0x3

    .line 24
    .line 25
    const-string v2, "T"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->p(ILjava/lang/String;)V

    .line 29
    .line 30
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 36
    return-object v0

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    const-string v0, "beginTransaction(...)"

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 71
    .line 72
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 73
    return-object p1
.end method

.method public static synthetic createIfAbsent$default(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/narvii/app/NVFragment;
    .locals 1

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    const-string p4, "getSimpleName(...)"

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    :cond_1
    const-string p4, "<this>"

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    const-string p4, "clz"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo p4, "tag"

    .line 32
    .line 33
    .line 34
    invoke-static {p3, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 38
    move-result-object p4

    .line 39
    .line 40
    if-eqz p4, :cond_3

    .line 41
    const/4 p5, 0x3

    .line 42
    .line 43
    const-string v0, "T"

    .line 44
    .line 45
    .line 46
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->p(ILjava/lang/String;)V

    .line 47
    .line 48
    instance-of p5, p4, Lcom/narvii/app/NVFragment;

    .line 49
    .line 50
    if-nez p5, :cond_2

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    check-cast p4, Lcom/narvii/app/NVFragment;

    .line 54
    return-object p4

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    const-string p4, "beginTransaction(...)"

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result p2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 89
    .line 90
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 91
    return-object p1
.end method

.method public static final loadImageForce(Lcom/narvii/widget/NVImageView;Ljava/lang/String;)V
    .locals 4
    .param p0    # Lcom/narvii/widget/NVImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "url"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    instance-of v1, v0, Lcom/narvii/util/image/NVImageLoader;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 37
    move-result v1

    .line 38
    const/4 v3, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/narvii/util/image/NVImageLoader;->getLocal(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 52
    return-void
.end method
