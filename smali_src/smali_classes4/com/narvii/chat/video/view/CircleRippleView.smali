.class public Lcom/narvii/chat/video/view/CircleRippleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/CircleRippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    const/16 p1, 0xdac

    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    .line 3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    iget p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    iget p2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    .line 4
    div-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    .line 5
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    new-array v2, v1, [F

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    const/high16 v4, 0x3f800000    # 1.0f

    .line 12
    .line 13
    aput v4, v2, v3

    .line 14
    .line 15
    iget v5, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    .line 16
    const/4 v6, 0x1

    .line 17
    .line 18
    aput v5, v2, v6

    .line 19
    .line 20
    const-string v5, "scaleX"

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 24
    move-result-object v2

    .line 25
    const/4 v5, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 32
    .line 33
    iget v7, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    .line 34
    mul-int/2addr v7, p2

    .line 35
    int-to-long v7, v7

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 39
    .line 40
    iget v7, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    .line 41
    int-to-long v7, v7

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    new-array v2, v1, [F

    .line 50
    .line 51
    aput v4, v2, v3

    .line 52
    .line 53
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    .line 54
    .line 55
    aput v3, v2, v6

    .line 56
    .line 57
    const-string v3, "scaleY"

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 68
    .line 69
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    .line 70
    mul-int/2addr v3, p2

    .line 71
    int-to-long v3, v3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 75
    .line 76
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    .line 77
    int-to-long v3, v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    new-array v1, v1, [F

    .line 86
    .line 87
    .line 88
    fill-array-data v1, :array_0

    .line 89
    .line 90
    const-string v2, "alpha"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 101
    .line 102
    iget v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    .line 103
    int-to-long v1, v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    iget v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDelay:I

    .line 109
    mul-int/2addr p2, v1

    .line 110
    int-to-long v1, p2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v0

    .line 118
    nop

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data
.end method

.method private prepareAnimation()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->inited:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->inited:Z

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 26
    :cond_1
    return-void

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 40
    .line 41
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 42
    .line 43
    iget v2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    .line 44
    int-to-long v2, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 50
    .line 51
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    :goto_0
    iget v3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    .line 66
    .line 67
    if-ge v2, v3, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v3, v2}, Lcom/narvii/chat/video/view/CircleRippleView;->addAnimToCircleView(Landroid/view/View;I)Ljava/util/List;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_4
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 89
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    return-void
.end method

.method private prepareChildViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animationDuration:I

    .line 5
    int-to-long v1, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 24
    const/4 v1, -0x1

    .line 25
    const/4 v2, -0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    const/16 v1, 0x11

    .line 31
    .line 32
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->circleCount:I

    .line 36
    .line 37
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/chat/video/view/CircleView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lcom/narvii/chat/video/view/CircleView;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/chat/video/view/CircleRippleView;->prepareAnimation()V

    .line 16
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/narvii/chat/video/view/CircleRippleView;->inited:Z

    .line 22
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget p3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewWidth:I

    .line 6
    .line 7
    if-eq p3, p1, :cond_0

    .line 8
    .line 9
    iget p3, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewHeight:I

    .line 10
    .line 11
    if-eq p3, p2, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewWidth:I

    .line 14
    .line 15
    iput p2, p0, Lcom/narvii/chat/video/view/CircleRippleView;->viewHeight:I

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->prepareFinished:Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/chat/video/view/CircleRippleView;->prepareAnimation()V

    .line 22
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 22
    move-result p1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setRippleScale(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/video/view/CircleRippleView;->rippleScale:F

    return-void
.end method
