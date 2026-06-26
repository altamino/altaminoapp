.class public Lcom/narvii/widget/RandomBlinkingView;
.super Landroid/widget/FrameLayout;
.source "RandomBlinkingView.java"


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

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/narvii/widget/RandomBlinkingView;->updateViewPosition(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/widget/RandomBlinkingView;Landroid/view/View;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/RandomBlinkingView;->alphaAnimationProcess(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/widget/RandomBlinkingView;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    return-object p0
.end method

.method private alphaAnimationProcess(Landroid/view/View;F)V
    .locals 8

    float-to-double v0, p2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    const-wide v4, 0x3fd999999999999aL    # 0.4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-double v7, v0, v4

    if-ltz v7, :cond_0

    cmpg-double v7, v0, v2

    if-gtz v7, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v7

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_0

    .line 152
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_1

    cmpg-double v7, v0, v4

    if-gtz v7, :cond_1

    const v0, 0x3ecccccd    # 0.4f

    div-float/2addr p2, v0

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    cmpg-float v0, p2, v6

    if-gtz v0, :cond_2

    sub-float/2addr v6, p2

    const p2, 0x3e4ccccd    # 0.2f

    div-float/2addr v6, p2

    .line 156
    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateViewPosition(Landroid/view/View;)V
    .locals 7

    .line 161
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 162
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    :goto_0
    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpl-double v6, v0, v4

    if-gtz v6, :cond_3

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    goto :goto_3

    :cond_0
    :goto_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    goto :goto_2

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    double-to-float v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 167
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    goto :goto_1

    .line 164
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method public enable()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 140
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 142
    iput-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 146
    iput-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b05d9

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking1:Landroid/widget/ImageView;

    const v1, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 60
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinking2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 62
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    .line 63
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 65
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/narvii/widget/RandomBlinkingView$1;

    invoke-direct {v6, p0}, Lcom/narvii/widget/RandomBlinkingView$1;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    iget-object v1, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator1:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/narvii/widget/RandomBlinkingView$2;

    invoke-direct {v6, p0}, Lcom/narvii/widget/RandomBlinkingView$2;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 89
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    .line 90
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 93
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 94
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/widget/RandomBlinkingView$3;

    invoke-direct {v1, p0}, Lcom/narvii/widget/RandomBlinkingView$3;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    iget-object v0, p0, Lcom/narvii/widget/RandomBlinkingView;->blinkAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/widget/RandomBlinkingView$4;

    invoke-direct {v1, p0}, Lcom/narvii/widget/RandomBlinkingView$4;-><init>(Lcom/narvii/widget/RandomBlinkingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
