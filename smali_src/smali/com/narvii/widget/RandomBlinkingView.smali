.class public Lcom/narvii/widget/RandomBlinkingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final BLINK_DURATION:I = 0xbb8


# instance fields
.field private blinkAnimator1:Landroid/animation/ValueAnimator;

.field private blinkAnimator2:Landroid/animation/ValueAnimator;

.field private blinking1:Landroid/widget/ImageView;

.field private blinking2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    return-object p0
.end method

.method private alphaAnimationProcess(Landroid/view/View;F)V
    .locals 8

    .line 1
    float-to-double v0, p2

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 7
    .line 8
    cmpl-double v4, v0, v2

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 14
    .line 15
    const/high16 v7, 0x3f800000    # 1.0f

    .line 16
    .line 17
    if-ltz v4, :cond_0

    .line 18
    .line 19
    cmpg-double v4, v0, v5

    .line 20
    .line 21
    if-gtz v4, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 25
    move-result v4

    .line 26
    .line 27
    cmpl-float v4, v4, v7

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    .line 36
    cmpl-float v4, p2, v4

    .line 37
    .line 38
    if-ltz v4, :cond_1

    .line 39
    .line 40
    cmpg-double v2, v0, v2

    .line 41
    .line 42
    if-gtz v2, :cond_1

    .line 43
    .line 44
    .line 45
    const v0, 0x3ecccccd    # 0.4f

    .line 46
    div-float/2addr p2, v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    cmpl-double v0, v0, v5

    .line 53
    .line 54
    if-ltz v0, :cond_2

    .line 55
    .line 56
    cmpg-float v0, p2, v7

    .line 57
    .line 58
    if-gtz v0, :cond_2

    .line 59
    sub-float/2addr v7, p2

    .line 60
    .line 61
    .line 62
    const p2, 0x3e4ccccd    # 0.2f

    .line 63
    div-float/2addr v7, p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 67
    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RandomBlinkingView;->alphaAnimationProcess(Landroid/view/View;F)V

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/RandomBlinkingView;->updateViewPosition(Landroid/view/View;)V

    return-void
.end method

.method private updateViewPosition(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    :goto_0
    const-wide v4, 0x3fee666666666666L    # 0.95

    .line 14
    .line 15
    cmpl-double v4, v0, v4

    .line 16
    .line 17
    if-gtz v4, :cond_3

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v4, 0x3fa999999999999aL    # 0.05

    .line 23
    .line 24
    cmpg-double v4, v0, v4

    .line 25
    .line 26
    if-gez v4, :cond_0

    .line 27
    goto :goto_3

    .line 28
    .line 29
    :cond_0
    :goto_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 30
    .line 31
    cmpl-double v4, v2, v4

    .line 32
    .line 33
    if-gtz v4, :cond_2

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 39
    .line 40
    cmpg-double v4, v2, v4

    .line 41
    .line 42
    if-gez v4, :cond_1

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 47
    move-result v4

    .line 48
    int-to-double v4, v4

    .line 49
    mul-double/2addr v4, v0

    .line 50
    double-to-float v0, v4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 57
    move-result v0

    .line 58
    int-to-double v0, v0

    .line 59
    mul-double/2addr v0, v2

    .line 60
    double-to-float v0, v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    return-void

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 68
    move-result-wide v2

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 73
    move-result-wide v0

    .line 74
    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 31
    :cond_1
    return-void
.end method

.method public enable()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 31
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    .line 13
    iput-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 23
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0d0690

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroid/widget/ImageView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    .line 52
    .line 53
    .line 54
    const v1, 0x3c23d70a    # 0.01f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 63
    const/4 v0, 0x2

    .line 64
    .line 65
    new-array v1, v0, [F

    .line 66
    .line 67
    .line 68
    fill-array-data v1, :array_0

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    iput-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    const-wide/16 v2, 0xbb8

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 82
    const/4 v4, 0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 88
    const/4 v5, -0x1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    new-instance v6, Lcom/narvii/widget/RandomBlinkingView$1;

    .line 96
    .line 97
    .line 98
    invoke-direct {v6, p0}, Lcom/narvii/widget/RandomBlinkingView$1;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    .line 103
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 104
    .line 105
    new-instance v6, Lcom/narvii/widget/RandomBlinkingView$2;

    .line 106
    .line 107
    .line 108
    invoke-direct {v6, p0}, Lcom/narvii/widget/RandomBlinkingView$2;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    .line 113
    new-array v0, v0, [F

    .line 114
    .line 115
    .line 116
    fill-array-data v0, :array_1

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 138
    .line 139
    const-wide/16 v1, 0x5dc

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 143
    .line 144
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 145
    .line 146
    new-instance v1, Lcom/narvii/widget/RandomBlinkingView$3;

    .line 147
    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/narvii/widget/RandomBlinkingView$3;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 155
    .line 156
    new-instance v1, Lcom/narvii/widget/RandomBlinkingView$4;

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, p0}, Lcom/narvii/widget/RandomBlinkingView$4;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    return-void

    .line 164
    nop

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
