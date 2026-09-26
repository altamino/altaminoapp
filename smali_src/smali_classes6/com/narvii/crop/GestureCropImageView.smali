.class public Lcom/narvii/crop/GestureCropImageView;
.super Lcom/narvii/crop/CropImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;,
        Lcom/narvii/crop/GestureCropImageView$GestureListener;,
        Lcom/narvii/crop/GestureCropImageView$ScaleListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_ZOOM_DURATION:I = 0xc8


# instance fields
.field private mDoubleTapScaleSteps:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsRotateEnabled:Z

.field private mIsScaleEnabled:Z

.field private mMidPntX:F

.field private mMidPntY:F

.field mOnScaleUpListener:Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    const/4 p1, 0x5

    iput p1, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/GestureCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    const/4 p1, 0x5

    iput p1, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/crop/GestureCropImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntX:F

    return p0
.end method

.method static bridge synthetic e(Lcom/narvii/crop/GestureCropImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntY:F

    return p0
.end method

.method private setupGestureListeners()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Lcom/narvii/crop/GestureCropImageView$GestureListener;

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0, v3}, Lcom/narvii/crop/GestureCropImageView$GestureListener;-><init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/a;)V

    .line 13
    const/4 v4, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 19
    .line 20
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    new-instance v2, Lcom/narvii/crop/GestureCropImageView$ScaleListener;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, v3}, Lcom/narvii/crop/GestureCropImageView$ScaleListener;-><init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/b;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 35
    return-void
.end method


# virtual methods
.method public getDoubleTapScaleSteps()I
    .locals 1

    iget v0, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return v0
.end method

.method protected getDoubleTapTargetScale()F
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMinScale()F

    .line 12
    move-result v2

    .line 13
    div-float/2addr v1, v2

    .line 14
    float-to-double v1, v1

    .line 15
    .line 16
    iget v3, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    .line 17
    int-to-float v3, v3

    .line 18
    .line 19
    const/high16 v4, 0x3f800000    # 1.0f

    .line 20
    div-float/2addr v4, v3

    .line 21
    float-to-double v3, v4

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 25
    move-result-wide v1

    .line 26
    double-to-float v1, v1

    .line 27
    mul-float/2addr v0, v1

    .line 28
    return v0
.end method

.method protected init()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/crop/TransformImageView;->init()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/crop/GestureCropImageView;->setupGestureListeners()V

    .line 7
    return-void
.end method

.method public isRotateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    return v0
.end method

.method public isScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    move-result v0

    .line 13
    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->cancelAllAnimations()V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-le v0, v1, :cond_2

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 34
    move-result v3

    .line 35
    add-float/2addr v2, v3

    .line 36
    .line 37
    const/high16 v3, 0x40000000    # 2.0f

    .line 38
    div-float/2addr v2, v3

    .line 39
    .line 40
    iput v2, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntX:F

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 48
    move-result v2

    .line 49
    add-float/2addr v0, v2

    .line 50
    div-float/2addr v0, v3

    .line 51
    .line 52
    iput v0, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntY:F

    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 70
    move-result p1

    .line 71
    .line 72
    and-int/lit16 p1, p1, 0xff

    .line 73
    .line 74
    if-ne p1, v1, :cond_6

    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->setImageToWrapCropBounds()V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_4
    iget-object p1, p0, Lcom/narvii/crop/GestureCropImageView;->mOnScaleUpListener:Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->setImageToWrapCropBounds()V

    .line 102
    return v1

    .line 103
    .line 104
    :cond_5
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mOnScaleUpListener:Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;

    .line 105
    .line 106
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 107
    .line 108
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 109
    sub-float/2addr v2, p1

    .line 110
    float-to-int p1, v2

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, p1}, Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;->onChangeImageWidth(I)V

    .line 114
    :cond_6
    :goto_0
    return v1
.end method

.method public setDoubleTapScaleSteps(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method public setOnScaleUpListener(Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/crop/GestureCropImageView;->mOnScaleUpListener:Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;

    return-void
.end method

.method public setRotateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    return-void
.end method
