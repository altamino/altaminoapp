.class public Lcom/narvii/chat/audio/AudioVolumeRippleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->prepareChildViews()V

    .line 12
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->prepareAnimation()V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/audio/AudioVolumeRippleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->reset()V

    return-void
.end method

.method private prepareAnimation()V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    .line 12
    int-to-float v3, v2

    .line 13
    .line 14
    .line 15
    const v4, 0x3da3d70a    # 0.08f

    .line 16
    mul-float/2addr v3, v4

    .line 17
    .line 18
    const/high16 v5, 0x3f800000    # 1.0f

    .line 19
    add-float/2addr v3, v5

    .line 20
    int-to-float v6, v0

    .line 21
    mul-float/2addr v6, v4

    .line 22
    add-float/2addr v6, v5

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float/2addr v2, v4

    .line 25
    add-float/2addr v5, v2

    .line 26
    const/4 v7, 0x1

    .line 27
    .line 28
    const/high16 v8, 0x3f000000    # 0.5f

    .line 29
    const/4 v9, 0x1

    .line 30
    .line 31
    const/high16 v10, 0x3f000000    # 0.5f

    .line 32
    move-object v2, v1

    .line 33
    move v4, v6

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 37
    .line 38
    iput-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    .line 41
    .line 42
    iget v3, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    .line 43
    sub-int/2addr v2, v3

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 47
    move-result v2

    .line 48
    .line 49
    mul-int/lit8 v2, v2, 0x5

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1e

    .line 52
    int-to-long v2, v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 58
    .line 59
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 60
    .line 61
    .line 62
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 68
    const/4 v2, 0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 74
    .line 75
    new-instance v3, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;

    .line 76
    .line 77
    .line 78
    invoke-direct {v3, p0, v0}, Lcom/narvii/chat/audio/AudioVolumeRippleView$1;-><init>(Lcom/narvii/chat/audio/AudioVolumeRippleView;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    .line 91
    return-void
.end method

.method private prepareChildViews()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/chat/video/view/CircleView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/narvii/chat/video/view/CircleView;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    iput-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    return-void
.end method

.method private reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->currentLevel:I

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    .line 13
    return-void
.end method


# virtual methods
.method public setCircleViewColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->circleView:Lcom/narvii/chat/video/view/CircleView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/view/CircleView;->setColor(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    .line 4
    .line 5
    div-int/lit16 p1, p1, 0x258

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->nextLevel:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->animating:Z

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->prepareAnimation()V

    .line 27
    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/audio/AudioVolumeRippleView;->canceled:Z

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->reset()V

    .line 7
    return-void
.end method
