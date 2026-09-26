.class public Lcom/narvii/transition/TransitionLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/transition/TransitionLayout$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/transition/TransitionLayout$1;-><init>(Lcom/narvii/transition/TransitionLayout;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/transition/TransitionLayout$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/transition/TransitionLayout$2;-><init>(Lcom/narvii/transition/TransitionLayout;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->startAnimationRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->handler:Landroid/os/Handler;

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 32
    return-void
.end method

.method private setClipFalse(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->startView:Landroid/view/View;

    .line 7
    .line 8
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->startView:Landroid/view/View;

    .line 15
    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/transition/TransitionManager;->captureEndValues(Landroid/view/View;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    .line 23
    const/4 p3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/narvii/transition/TransitionManager;->changeTextViewScale(Landroid/view/View;F)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Lcom/narvii/transition/TransitionManager;->animateViews(Landroid/view/View;F)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    .line 42
    .line 43
    iget p3, p0, Lcom/narvii/transition/TransitionLayout;->progress:F

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/narvii/transition/TransitionManager;->animateViews(Landroid/view/View;F)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 51
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/narvii/transition/TransitionManager;->waitingLayout:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 15
    move-result p1

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/transition/TransitionLayout;->height:I

    .line 18
    const/4 p1, 0x2

    .line 19
    .line 20
    new-array p1, p1, [F

    .line 21
    .line 22
    .line 23
    fill-array-data p1, :array_0

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    const-wide/16 v0, 0xc8

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->handler:Landroid/os/Handler;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->startAnimationRunnable:Ljava/lang/Runnable;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->handler:Landroid/os/Handler;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/transition/TransitionLayout;->startAnimationRunnable:Ljava/lang/Runnable;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 59
    move-result p1

    .line 60
    .line 61
    iget p2, p0, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lcom/narvii/transition/TransitionManager;->measureMatchParentViews(Landroid/view/View;)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 74
    .line 75
    iget p1, p0, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    .line 76
    int-to-float p2, p1

    .line 77
    .line 78
    iget v0, p0, Lcom/narvii/transition/TransitionLayout;->height:I

    .line 79
    sub-int/2addr v0, p1

    .line 80
    int-to-float p1, v0

    .line 81
    .line 82
    iget v0, p0, Lcom/narvii/transition/TransitionLayout;->progress:F

    .line 83
    mul-float/2addr p1, v0

    .line 84
    add-float/2addr p2, p1

    .line 85
    float-to-int p1, p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 89
    move-result p2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Lcom/narvii/transition/TransitionManager;->measureMatchParentViews(Landroid/view/View;)V

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 102
    :goto_0
    return-void

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTransitionListener(Lcom/narvii/transition/TransitionLayout$TransitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionListener:Lcom/narvii/transition/TransitionLayout$TransitionListener;

    return-void
.end method

.method public setTransitionManager(Lcom/narvii/transition/TransitionManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    :cond_0
    return-void
.end method

.method public transition(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/transition/TransitionLayout;->rootView:Landroid/view/View;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/transition/TransitionLayout;->startView:Landroid/view/View;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/transition/TransitionLayout;->endView:Landroid/view/View;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->va:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/transition/TransitionManager;->captureStartValues(Landroid/view/View;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/transition/TransitionLayout;->transitionManager:Lcom/narvii/transition/TransitionManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lcom/narvii/transition/TransitionManager;->captureEndTextSize(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0, p2}, Lcom/narvii/transition/TransitionLayout;->setClipFalse(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p3}, Lcom/narvii/transition/TransitionLayout;->setClipFalse(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result p1

    .line 36
    .line 37
    iput p1, p0, Lcom/narvii/transition/TransitionLayout;->lastHeight:I

    .line 38
    return-void
.end method
