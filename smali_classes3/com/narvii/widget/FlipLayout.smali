.class public Lcom/narvii/widget/FlipLayout;
.super Landroid/widget/FrameLayout;
.source "FlipLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FlipLayout$FlipListener;
    }
.end annotation


# instance fields
.field animIn:Landroid/animation/AnimatorSet;

.field animOut:Landroid/animation/AnimatorSet;

.field backView:Landroid/view/View;

.field flipListener:Lcom/narvii/widget/FlipLayout$FlipListener;

.field frontView:Landroid/view/View;

.field isShowBack:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f020008

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    .line 41
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f020007

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    .line 42
    iget-object p1, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/narvii/widget/FlipLayout$1;

    invoke-direct {p2, p0}, Lcom/narvii/widget/FlipLayout$1;-><init>(Lcom/narvii/widget/FlipLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setCameraDistance()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e80

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    .line 97
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setCameraDistance(F)V

    .line 98
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setCameraDistance(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public flip()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-boolean v2, p0, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    if-nez v2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 71
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 77
    iget-object v0, p0, Lcom/narvii/widget/FlipLayout;->animIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/narvii/widget/FlipLayout;->isShowBack:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090494

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FlipLayout;->backView:Landroid/view/View;

    const v0, 0x7f090498

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FlipLayout;->frontView:Landroid/view/View;

    .line 88
    invoke-direct {p0}, Lcom/narvii/widget/FlipLayout;->setCameraDistance()V

    return-void
.end method

.method public setFlipListener(Lcom/narvii/widget/FlipLayout$FlipListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/narvii/widget/FlipLayout;->flipListener:Lcom/narvii/widget/FlipLayout$FlipListener;

    return-void
.end method
