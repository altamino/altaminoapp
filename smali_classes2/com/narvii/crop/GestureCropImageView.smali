.class public Lcom/narvii/crop/GestureCropImageView;
.super Lcom/narvii/crop/CropImageView;
.source "GestureCropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/crop/GestureCropImageView$GestureListener;,
        Lcom/narvii/crop/GestureCropImageView$ScaleListener;,
        Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;
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

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    const/4 p1, 0x5

    .line 33
    iput p1, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/GestureCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    const/4 p1, 0x5

    .line 33
    iput p1, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/crop/GestureCropImageView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntX:F

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/crop/GestureCropImageView;)F
    .locals 0

    .line 13
    iget p0, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntY:F

    return p0
.end method

.method private setupGestureListeners()V
    .locals 5

    .line 131
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/narvii/crop/GestureCropImageView$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/narvii/crop/GestureCropImageView$GestureListener;-><init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/GestureCropImageView$1;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 132
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/narvii/crop/GestureCropImageView$ScaleListener;

    invoke-direct {v2, p0, v3}, Lcom/narvii/crop/GestureCropImageView$ScaleListener;-><init>(Lcom/narvii/crop/GestureCropImageView;Lcom/narvii/crop/GestureCropImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public getDoubleTapScaleSteps()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return v0
.end method

.method protected getDoubleTapTargetScale()F
    .locals 5

    .line 127
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMinScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    return v0
.end method

.method protected init()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/narvii/crop/TransformImageView;->init()V

    .line 118
    invoke-direct {p0}, Lcom/narvii/crop/GestureCropImageView;->setupGestureListeners()V

    return-void
.end method

.method public isRotateEnabled()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    return v0
.end method

.method public isScaleEnabled()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->cancelAllAnimations()V

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntX:F

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/narvii/crop/GestureCropImageView;->mMidPntY:F

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    iget-boolean v0, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_6

    .line 98
    iget-boolean p1, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    if-nez p1, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->setImageToWrapCropBounds()V

    goto :goto_0

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/narvii/crop/GestureCropImageView;->mOnScaleUpListener:Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;

    if-eqz p1, :cond_6

    .line 102
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    invoke-static {p1}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->setImageToWrapCropBounds()V

    return v1

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/narvii/crop/GestureCropImageView;->mOnScaleUpListener:Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p1

    float-to-int p1, v2

    invoke-interface {v0, p1}, Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;->onChangeImageWidth(I)V

    :cond_6
    :goto_0
    return v1
.end method

.method public setDoubleTapScaleSteps(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/narvii/crop/GestureCropImageView;->mDoubleTapScaleSteps:I

    return-void
.end method

.method public setOnScaleUpListener(Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/crop/GestureCropImageView;->mOnScaleUpListener:Lcom/narvii/crop/GestureCropImageView$OnScaleUpListener;

    return-void
.end method

.method public setRotateEnabled(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsRotateEnabled:Z

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/narvii/crop/GestureCropImageView;->mIsScaleEnabled:Z

    return-void
.end method
