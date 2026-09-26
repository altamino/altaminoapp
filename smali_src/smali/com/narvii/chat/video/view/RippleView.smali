.class public Lcom/narvii/chat/video/view/RippleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 p1, 0x3

    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    const/16 p1, 0xdac

    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    .line 3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    iget p1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    iget p2, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    .line 4
    div-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->rippleScale:F

    .line 5
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
    iget v5, p0, Lcom/narvii/chat/video/view/RippleView;->rippleScale:F

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
    iget v7, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

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
    iget v7, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

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
    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->rippleScale:F

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
    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

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
    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

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
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    .line 86
    div-int/2addr v2, v1

    .line 87
    int-to-float v2, v2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 91
    .line 92
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->viewHeight:I

    .line 93
    .line 94
    iget v3, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    .line 95
    .line 96
    div-int/lit8 v3, v3, 0x4

    .line 97
    sub-int/2addr v2, v3

    .line 98
    int-to-float v2, v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 102
    .line 103
    new-array v1, v1, [F

    .line 104
    .line 105
    .line 106
    fill-array-data v1, :array_0

    .line 107
    .line 108
    const-string v2, "alpha"

    .line 109
    .line 110
    .line 111
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 119
    .line 120
    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    .line 121
    int-to-long v1, v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    .line 126
    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDelay:I

    .line 127
    mul-int/2addr p2, v1

    .line 128
    int-to-long v1, p2

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    return-object v0

    .line 136
    nop

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method private prepareAnimation()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/view/RippleView;->prepareFinished:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 18
    :cond_0
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 34
    .line 35
    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    .line 36
    int-to-long v1, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 42
    .line 43
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    .line 58
    .line 59
    if-ge v1, v2, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v2, v1}, Lcom/narvii/chat/video/view/RippleView;->addAnimToCircleView(Landroid/view/View;I)Ljava/util/List;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/4 v1, 0x1

    .line 75
    .line 76
    iput-boolean v1, p0, Lcom/narvii/chat/video/view/RippleView;->prepareFinished:Z

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 82
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    return-void
.end method

.method private prepareChildViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/video/view/RippleView;->animationDuration:I

    .line 5
    int-to-long v1, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

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
    iget v2, p0, Lcom/narvii/chat/video/view/RippleView;->circleCount:I

    .line 36
    .line 37
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/chat/video/view/RippleChildView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lcom/narvii/chat/video/view/RippleChildView;-><init>(Landroid/content/Context;)V

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
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget p3, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    .line 6
    .line 7
    if-eq p3, p1, :cond_0

    .line 8
    .line 9
    iget p3, p0, Lcom/narvii/chat/video/view/RippleView;->viewHeight:I

    .line 10
    .line 11
    if-eq p3, p2, :cond_0

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/chat/video/view/RippleView;->viewWidth:I

    .line 14
    .line 15
    iput p2, p0, Lcom/narvii/chat/video/view/RippleView;->viewHeight:I

    .line 16
    const/4 p1, 0x0

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/narvii/chat/video/view/RippleView;->prepareFinished:Z

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/chat/video/view/RippleView;->prepareAnimation()V

    .line 22
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleView;->animatorSet:Landroid/animation/AnimatorSet;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 34
    move v1, v0

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    move-result v2

    .line 39
    .line 40
    if-ge v1, v2, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    move v3, v0

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    const/16 v3, 0x8

    .line 51
    .line 52
    .line 53
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 63
    return-void
.end method
