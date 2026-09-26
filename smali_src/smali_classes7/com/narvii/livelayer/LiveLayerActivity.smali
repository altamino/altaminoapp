.class public Lcom/narvii/livelayer/LiveLayerActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# static fields
.field private static BACK_MASK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backgroundMask:Landroid/view/View;

.field private fadeoutAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    return-void
.end method

.method public static intent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :try_start_0
    const-string v2, "WRAPPER_ACTIVITY"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    move-object v1, v2

    .line 20
    .line 21
    .line 22
    :catch_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    const-class v1, Lcom/narvii/livelayer/LiveLayerActivity;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    const-string v1, "fragment"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    const-string p0, "__ignoreStoryDraftId"

    .line 50
    const/4 v1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    return-object v0
.end method

.method public static prepare(Landroid/app/Activity;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithCapture(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0a0198

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    new-instance v2, Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 33
    .line 34
    const/high16 p0, -0x34000000    # -3.3554432E7f

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    .line 39
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    .line 40
    const/4 v1, -0x1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    :cond_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 54
    .line 55
    sput-object p0, Lcom/narvii/livelayer/LiveLayerActivity;->BACK_MASK:Ljava/lang/ref/WeakReference;

    .line 56
    const/4 p0, 0x2

    .line 57
    .line 58
    new-array p0, p0, [F

    .line 59
    .line 60
    .line 61
    fill-array-data p0, :array_0

    .line 62
    .line 63
    const-string v0, "alpha"

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    const-wide/16 v0, 0x12c

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 77
    :cond_1
    return-void

    .line 78
    nop

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private removeView(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    :cond_1
    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/livelayer/LiveLayerActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/livelayer/LiveLayerActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerActivity;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    new-array v1, v1, [F

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 12
    move-result v3

    .line 13
    .line 14
    aput v3, v1, v2

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    aput v3, v1, v2

    .line 19
    .line 20
    const-string v2, "alpha"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    const-wide/16 v1, 0x12c

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/livelayer/LiveLayerActivity$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerActivity$1;-><init>(Lcom/narvii/livelayer/LiveLayerActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    .line 50
    return-void
.end method

.method public getBackgroundMask()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getCustomTheme()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasDrawer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object p1, Lcom/narvii/livelayer/LiveLayerActivity;->BACK_MASK:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/view/View;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    :goto_0
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    .line 18
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerActivity;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onDestroy()V

    .line 21
    return-void
.end method
