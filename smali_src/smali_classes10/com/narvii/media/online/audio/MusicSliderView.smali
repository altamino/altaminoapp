.class public Lcom/narvii/media/online/audio/MusicSliderView;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private deltaX:F

.field private mScaledTouchSlop:F

.field private mTouchDownX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput p2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mScaledTouchSlop:F

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 14
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mScaledTouchSlop:F

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 22
    return-void
.end method

.method private callSuper(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result v1

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->deltaX:F

    .line 11
    add-float/2addr v1, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mTouchDownX:F

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v2

    .line 22
    mul-int/2addr v0, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 26
    move-result v2

    .line 27
    div-int/2addr v0, v2

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    move-result v2

    .line 38
    .line 39
    sub-int v0, v2, v0

    .line 40
    :cond_0
    int-to-float v0, v0

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mTouchDownX:F

    .line 43
    sub-float/2addr v0, v2

    .line 44
    .line 45
    iput v0, p0, Lcom/narvii/media/online/audio/MusicSliderView;->deltaX:F

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    .line 49
    return v1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 53
    move-result v0

    .line 54
    .line 55
    if-ne v0, v1, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 59
    move-result v0

    .line 60
    .line 61
    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mTouchDownX:F

    .line 62
    sub-float/2addr v0, v2

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 66
    move-result v0

    .line 67
    .line 68
    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mScaledTouchSlop:F

    .line 69
    .line 70
    cmpl-float v0, v0, v2

    .line 71
    .line 72
    if-lez v0, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    .line 76
    move-result p1

    .line 77
    return p1

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 81
    return v1

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 85
    move-result v0

    .line 86
    const/4 v1, 0x2

    .line 87
    .line 88
    if-ne v0, v1, :cond_4

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    .line 92
    move-result p1

    .line 93
    return p1

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    .line 97
    move-result p1

    .line 98
    return p1
.end method
