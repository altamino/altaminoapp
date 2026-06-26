.class public Lcom/narvii/chat/video/view/CircleRippleView;
.super Landroid/widget/FrameLayout;
.source "CircleRippleView.java"


# static fields
.field private static final DEFAULT_CIRCLE_COUNT:I = 0x2

.field private static final DEFAULT_DELAY:I = 0xdac

.field private static final DEFAULT_SCALE:F = 1.5f


# instance fields
.field private animationDelay:I

.field private animationDuration:I

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private circleCount:I

.field private inited:Z

.field private prepareFinished:Z

.field private rippleScale:F

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/CircleRippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 29
    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    const/16 p1, 0xdac

    .line 30
    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    .line 34
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 47
    iget p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    iget p2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 48
    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/video/view/CircleRippleView;->prepareChildViews()V

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

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 145
    iget v5, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "scaleX"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v5, -0x1

    .line 147
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 148
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 149
    iget v7, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    mul-int v7, v7, p2

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 150
    iget v7, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    int-to-long v7, v7

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v1, [F

    aput v3, v2, v4

    .line 153
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    aput v3, v2, v6

    const-string v3, "scaleY"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 155
    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 156
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 157
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    mul-int v3, v3, p2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 158
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [F

    .line 161
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 163
    invoke-virtual {p1, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 164
    invoke-virtual {p1, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 165
    iget v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 166
    iget v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    mul-int p2, p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 167
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method private prepareAnimation()V
    .locals 4

    .line 115
    iget-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->inited:Z

    .line 119
    iget-boolean v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    if-eqz v1, :cond_2

    .line 120
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 129
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 131
    :goto_0
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    if-ge v2, v3, :cond_4

    .line 132
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/narvii/chat/video/view/CircleRippleView;->addAnimToCircleView(Landroid/view/View;I)Ljava/util/List;

    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_4
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    .line 136
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private prepareChildViews()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 103
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 105
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 107
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    if-ge v1, v2, :cond_0

    .line 109
    new-instance v2, Lcom/narvii/chat/video/view/CircleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/chat/video/view/CircleView;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 86
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    .line 88
    invoke-direct {p0}, Lcom/narvii/chat/video/view/CircleRippleView;->prepareAnimation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->inited:Z

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 59
    iget p3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewWidth:I

    if-eq p3, p1, :cond_0

    iget p3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewHeight:I

    if-eq p3, p2, :cond_0

    .line 60
    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewWidth:I

    .line 61
    iput p2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewHeight:I

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    .line 63
    invoke-direct {p0}, Lcom/narvii/chat/video/view/CircleRippleView;->prepareAnimation()V

    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setRippleScale(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    return-void
.end method
