.class public Lcom/narvii/livelayer/LiveLayerActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "LiveLayerActivity.java"


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

    .line 25
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerActivity;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/LiveLayerActivity;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerActivity;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public static intent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "WRAPPER_ACTIVITY"

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    .line 39
    :goto_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    const-class v1, Lcom/narvii/livelayer/LiveLayerActivity;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string v1, "__ignoreStoryDraftId"

    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static prepare(Landroid/app/Activity;)V
    .locals 3

    .line 47
    invoke-static {p0}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithCapture(Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 50
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const v1, 0x7f090106

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    const/high16 p0, -0x34000000    # -3.3554432E7f

    .line 55
    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 58
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/narvii/livelayer/LiveLayerActivity;->BACK_MASK:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 61
    fill-array-data p0, :array_0

    const-string v0, "alpha"

    invoke-static {v2, v0, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private removeView(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 113
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 114
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    .line 79
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 80
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/narvii/livelayer/LiveLayerActivity$1;

    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerActivity$1;-><init>(Lcom/narvii/livelayer/LiveLayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 86
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    return-void
.end method

.method public getBackgroundMask()Landroid/view/View;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getCustomTheme()I

    move-result v0

    return v0
.end method

.method public hasDrawer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget-object p1, Lcom/narvii/livelayer/LiveLayerActivity;->BACK_MASK:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->fadeoutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerActivity;->backgroundMask:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerActivity;->removeView(Landroid/view/View;)V

    .line 96
    :cond_1
    invoke-super {p0}, Lcom/narvii/app/DrawerActivity;->onDestroy()V

    return-void
.end method
