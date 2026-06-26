.class public Lcom/narvii/chat/video/view/RippleView;
.super Landroid/widget/FrameLayout;
.source "RippleView.java"


# static fields
.field private static final DEFAULT_CIRCLE_COUNT:I = 0x3

.field private static final DEFAULT_DELAY:I = 0xdac

.field private static final DEFAULT_SCALE:F = 1.5f


# instance fields
.field private animationDelay:I

.field private animationDuration:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private circleCount:I

.field private prepareFinished:Z

.field private rippleScale:F

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 28
    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    const/16 p1, 0xdac

    .line 29
    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    .line 33
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 45
    iget p1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    iget p2, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 46
    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->rippleScale:F

    .line 47
    invoke-direct {p0}, Lcom/narvii/chat/video/view/RippleView;->prepareChildViews()V

    return-void
.end method

.method private addAnimToCircleView(Landroid/view/View;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 101
    iget v5, p0, Lcom/narvii/chat/video/view/RippleView;->rippleScale:F

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "scaleX"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, -0x1

    .line 103
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 104
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 105
    iget v7, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

    mul-int v7, v7, p2

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 106
    iget v7, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    aput v3, v2, v4

    .line 109
    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->rippleScale:F

    aput v3, v2, v6

    const-string v3, "scaleY"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 112
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 113
    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

    mul-int v3, v3, p2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 114
    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 115
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    div-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 117
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->viewHeight:I

    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    new-array v1, v1, [F

    .line 119
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 121
    invoke-virtual {p1, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 122
    invoke-virtual {p1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 123
    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

    mul-int p2, p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 125
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method private prepareAnimation()V
    .locals 3

    .line 75
    iget-boolean v0, p0, Lcom/narvii/chat/video/view/RippleView;->prepareFinished:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 85
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 87
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    if-ge v1, v2, :cond_3

    .line 88
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/narvii/chat/video/view/RippleView;->addAnimToCircleView(Landroid/view/View;I)Ljava/util/List;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/narvii/chat/video/view/RippleView;->prepareFinished:Z

    .line 92
    iget-object v1, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private prepareChildViews()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 63
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 65
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 67
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 68
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    if-ge v1, v2, :cond_0

    .line 69
    new-instance v2, Lcom/narvii/chat/video/view/RippleChildView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/chat/video/view/RippleChildView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 53
    iget p3, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    if-eq p3, p1, :cond_0

    iget p3, p0, Lcom/narvii/chat/video/view/RippleView;->viewHeight:I

    if-eq p3, p2, :cond_0

    .line 54
    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    .line 55
    iput p2, p0, Lcom/narvii/chat/video/view/RippleView;->viewHeight:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/narvii/chat/video/view/RippleView;->prepareFinished:Z

    .line 57
    invoke-direct {p0}, Lcom/narvii/chat/video/view/RippleView;->prepareAnimation()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 131
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 144
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 145
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method
