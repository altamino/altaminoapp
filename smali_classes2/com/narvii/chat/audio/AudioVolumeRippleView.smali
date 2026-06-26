.class public Lcom/narvii/chat/audio/AudioVolumeRippleView;
.super Landroid/widget/FrameLayout;
.source "AudioVolumeRippleView.java"


# instance fields
.field animating:Z

.field canceled:Z

.field public circleView:Lcom/narvii/chat/video/view/CircleView;

.field currentLevel:I

.field nextLevel:I

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    .line 28
    iput-boolean p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    .line 32
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->prepareChildViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->prepareAnimation()V

    return-void
.end method

.method private prepareAnimation()V
    .locals 12

    .line 65
    iget v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    .line 66
    iget v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    if-ne v1, v0, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    int-to-float v2, v1

    const v3, 0x3da3d70a    # 0.08f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v5, v2, v4

    int-to-float v2, v0

    mul-float v2, v2, v3

    add-float v6, v2, v4

    int-to-float v1, v1

    mul-float v1, v1, v3

    add-float/2addr v1, v4

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    move v3, v5

    move v4, v6

    move v5, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v11, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 70
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    iget v3, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1e

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 71
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 72
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 73
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v3, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;

    invoke-direct {v3, p0, v0}, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;-><init>(Lcom/narvii/chat/audio/AudioVolumeRippleView;I)V

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 95
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iput-boolean v2, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    return-void
.end method

.method private prepareChildViews()V
    .locals 3

    .line 100
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 102
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    new-instance v1, Lcom/narvii/chat/video/view/CircleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/video/view/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    .line 104
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    .line 59
    iput v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    .line 60
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 61
    iput-boolean v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    return-void
.end method


# virtual methods
.method public setCircleViewColor(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/CircleView;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    .line 38
    div-int/lit16 p1, p1, 0x258

    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 39
    iput p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    .line 40
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    if-nez p1, :cond_1

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->prepareAnimation()V

    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    .line 47
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->reset()V

    return-void
.end method
