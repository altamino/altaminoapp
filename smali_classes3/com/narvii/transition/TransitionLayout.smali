.class public Lcom/narvii/transition/TransitionLayout;
.super Landroid/widget/FrameLayout;
.source "TransitionLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/transition/TransitionLayout$TransitionListener;
    }
.end annotation


# instance fields
.field animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field endView:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field height:I

.field lastHeight:I

.field progress:F

.field rootView:Landroid/view/View;

.field startAnimationRunnable:Ljava/lang/Runnable;

.field startView:Landroid/view/View;

.field transitionListener:Lcom/narvii/transition/TransitionLayout$TransitionListener;

.field transitionManager:Lcom/narvii/transition/TransitionManager;

.field public va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Lcom/narvii/transition/TransitionLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/transition/TransitionLayout$1;-><init>(Lcom/narvii/transition/TransitionLayout;)V

    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 48
    new-instance p1, Lcom/narvii/transition/TransitionLayout$2;

    invoke-direct {p1, p0}, Lcom/narvii/transition/TransitionLayout$2;-><init>(Lcom/narvii/transition/TransitionLayout;)V

    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->startAnimationRunnable:Ljava/lang/Runnable;

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method

.method private setClipFalse(Landroid/view/View;)V
    .locals 1

    .line 98
    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->startView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 100
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->startView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    if-eqz v0, :cond_1

    .line 137
    iget-boolean v0, v0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 139
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/narvii/transition/TransitionManager;->captureEndValues(Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/transition/TransitionManager;->changeTextViewScale(Landroid/view/View;F)V

    .line 141
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Lcom/narvii/transition/TransitionManager;->animateViews(Landroid/view/View;F)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 145
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    iget p3, p0, Lcom/narvii/transition/TransitionLayout;->progress:F

    invoke-virtual {p1, p2, p3}, Lcom/narvii/transition/TransitionManager;->animateViews(Landroid/view/View;F)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    if-eqz v0, :cond_1

    .line 107
    iget-boolean v0, v0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/transition/TransitionLayout;->height:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 113
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    .line 114
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 122
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    invoke-virtual {p1, p0}, Lcom/narvii/transition/TransitionManager;->measureMatchParentViews(Landroid/view/View;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 125
    iget p1, p0, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    int-to-float p2, p1

    iget v0, p0, Lcom/narvii/transition/TransitionLayout;->height:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/narvii/transition/TransitionLayout;->progress:F

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 127
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    invoke-virtual {p1, p0}, Lcom/narvii/transition/TransitionManager;->measureMatchParentViews(Landroid/view/View;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTransitionListener(Lcom/narvii/transition/TransitionLayout$TransitionListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionListener:Lcom/narvii/transition/TransitionLayout$TransitionListener;

    return-void
.end method

.method public setTransitionManager(Lcom/narvii/transition/TransitionManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 76
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public transition(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->rootView:Landroid/view/View;

    .line 83
    iput-object p2, p0, Lcom/narvii/transition/TransitionLayout;->startView:Landroid/view/View;

    .line 84
    iput-object p3, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    .line 85
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1, p2}, Lcom/narvii/transition/TransitionManager;->captureStartValues(Landroid/view/View;)V

    .line 90
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    invoke-virtual {p1, p3}, Lcom/narvii/transition/TransitionManager;->captureEndTextSize(Landroid/view/View;)V

    .line 92
    :cond_1
    invoke-direct {p0, p2}, Lcom/narvii/transition/TransitionLayout;->setClipFalse(Landroid/view/View;)V

    .line 93
    invoke-direct {p0, p3}, Lcom/narvii/transition/TransitionLayout;->setClipFalse(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    return-void
.end method
