.class public Lcom/narvii/media/online/audio/MusicSliderView;
.super Landroid/widget/SeekBar;
.source "MusicSliderView.java"


# instance fields
.field private deltaX:F

.field private mScaledTouchSlop:F

.field private mTouchDownX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mScaledTouchSlop:F

    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mScaledTouchSlop:F

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    return-void
.end method

.method private callSuper(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 54
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->deltaX:F

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 56
    invoke-super {p0, v0}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mTouchDownX:F

    .line 31
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    mul-int v0, v0, v2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/2addr v0, v2

    .line 32
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    :cond_0
    int-to-float v0, v0

    .line 35
    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mTouchDownX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/narvii/media/online/audio/MusicSliderView;->deltaX:F

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    return v1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mTouchDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/narvii/media/online/audio/MusicSliderView;->mScaledTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->callOnClick()Z

    return v1

    .line 45
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 48
    :cond_4
    invoke-direct {p0, p1}, Lcom/narvii/media/online/audio/MusicSliderView;->callSuper(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
