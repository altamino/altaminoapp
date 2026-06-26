.class public Lcom/narvii/crop/CropImageView;
.super Lcom/narvii/crop/TransformImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/crop/CropImageView$ZoomImageToPosition;,
        Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;,
        Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ASPECT_RATIO:F = 0.0f

.field public static final DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION:I = 0x1f4

.field public static final DEFAULT_MAX_BITMAP_SIZE:I = 0x0

.field public static final DEFAULT_MAX_SCALE_MULTIPLIER:F = 10.0f

.field public static final SOURCE_IMAGE_ASPECT_RATIO:F


# instance fields
.field protected hAdjust:Z

.field public imageUrl:Ljava/lang/String;

.field private mCropBoundsChangeListener:Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;

.field private mCropRect:Landroid/graphics/RectF;

.field private mImageToWrapCropBoundsAnimDuration:J

.field private mMaxResultImageSizeX:I

.field private mMaxResultImageSizeY:I

.field private mMaxScale:F

.field private mMaxScaleMultiplier:F

.field private mMinCropHeight:I

.field private mMinCropWidth:I

.field private mMinScale:F

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mTargetAspectRatio:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mWrapCropBoundsRunnable:Ljava/lang/Runnable;

.field private mZoomImageToPositionRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/crop/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    .line 35
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 37
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    const/high16 p2, 0x41200000    # 10.0f

    .line 40
    iput p2, p0, Lcom/narvii/crop/CropImageView;->mMaxScaleMultiplier:F

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/narvii/crop/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    .line 47
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeX:I

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeY:I

    const-wide/16 p1, 0x1f4

    .line 48
    iput-wide p1, p0, Lcom/narvii/crop/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/crop/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private calculateImageIndents()[F
    .locals 7

    .line 512
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 513
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 515
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/narvii/crop/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v1

    .line 518
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 519
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 521
    invoke-static {v0}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v0

    .line 522
    invoke-static {v1}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v1

    .line 524
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    .line 525
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    .line 526
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    .line 527
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v6, 0x0

    aput v2, v1, v6

    const/4 v2, 0x1

    cmpl-float v6, v3, v5

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput v3, v1, v2

    const/4 v2, 0x2

    cmpg-float v3, v4, v5

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    aput v4, v1, v2

    const/4 v2, 0x3

    cmpg-float v3, v0, v5

    if-gez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    aput v0, v1, v2

    .line 535
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 536
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 537
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-object v1
.end method

.method private setupCropBounds()V
    .locals 8

    .line 663
    iget v0, p0, Lcom/narvii/crop/TransformImageView;->mThisWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 664
    iget v3, p0, Lcom/narvii/crop/TransformImageView;->mThisHeight:I

    if-le v1, v3, :cond_0

    int-to-float v1, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 666
    div-int/lit8 v0, v0, 0x2

    .line 667
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    add-int v5, v4, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    int-to-float v7, v6

    add-int/2addr v4, v1

    add-int/2addr v4, v0

    int-to-float v0, v4

    add-int/2addr v6, v3

    int-to-float v1, v6

    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v1

    .line 670
    div-int/lit8 v3, v3, 0x2

    .line 671
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    int-to-float v5, v4

    iget v6, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    add-int v7, v6, v3

    int-to-float v7, v7

    add-int/2addr v4, v0

    int-to-float v0, v4

    add-int/2addr v6, v1

    add-int/2addr v6, v3

    int-to-float v1, v6

    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 675
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->resetScale()V

    return-void
.end method

.method private setupInitialImagePosition(FF)V
    .locals 5

    .line 640
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 641
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v2, v0, p1

    div-float v3, v1, p2

    .line 646
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    .line 649
    iget v2, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    mul-float p1, p1, v2

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    iget-object v3, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v4

    mul-float p2, p2, v2

    sub-float/2addr v1, p2

    div-float/2addr v1, p1

    .line 650
    iget p1, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    .line 652
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 653
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    iget p2, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 654
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 655
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->resetScale()V

    return-void
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 437
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cropImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCropBoundsChangeListener()Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropBoundsChangeListener:Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCropResult(Lcom/narvii/app/NVContext;)Lcom/narvii/theme/ThemeImage;
    .locals 5

    .line 139
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->cancelAllAnimations()V

    .line 145
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    invoke-static {p1}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    const/4 v1, 0x0

    .line 156
    :cond_2
    iget-object v3, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, p1

    div-float p1, v3, v0

    cmpg-float v3, p1, v2

    if-gez v3, :cond_3

    const/4 p1, 0x0

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v0

    .line 161
    iget-object v4, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v0

    .line 164
    new-instance v0, Lcom/narvii/theme/ThemeImage;

    invoke-direct {v0}, Lcom/narvii/theme/ThemeImage;-><init>()V

    .line 165
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 166
    iput v1, v0, Lcom/narvii/theme/ThemeImage;->y:F

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 167
    iput-object p1, v0, Lcom/narvii/theme/ThemeImage;->imageMatrix:[F

    .line 168
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, v0, Lcom/narvii/theme/ThemeImage;->imageMatrix:[F

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 170
    iput v3, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 171
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    iget v1, p0, Lcom/narvii/crop/CropImageView;->mMinCropWidth:I

    int-to-float v3, v1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_4

    int-to-float p1, v1

    .line 172
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 174
    :cond_4
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    iget v1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 175
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    iget v1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    sub-float/2addr p1, v1

    iput p1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 178
    :cond_5
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_6

    .line 179
    iput v2, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 180
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 183
    :cond_6
    iput v4, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 184
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    iget v1, p0, Lcom/narvii/crop/CropImageView;->mMinCropHeight:I

    int-to-float v3, v1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_7

    int-to-float p1, v1

    .line 185
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 187
    :cond_7
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->y:F

    iget v1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    .line 188
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    sub-float/2addr p1, v1

    iput p1, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 191
    :cond_8
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->y:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_9

    .line 192
    iput v2, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 193
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 196
    :cond_9
    iget-object p1, p0, Lcom/narvii/crop/CropImageView;->imageUrl:Ljava/lang/String;

    iput-object p1, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 197
    invoke-virtual {v0}, Lcom/narvii/theme/ThemeImage;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "crop_result"

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 274
    iget v0, p0, Lcom/narvii/crop/CropImageView;->mMaxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 281
    iget v0, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    return v0
.end method

.method public getTargetAspectRatio()F
    .locals 1

    .line 288
    iget v0, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    return v0
.end method

.method protected isImageWrapCropBounds()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    invoke-virtual {p0, v0}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v0

    return v0
.end method

.method protected isImageWrapCropBounds([F)Z
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 601
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 603
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 604
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 606
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/narvii/crop/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 609
    invoke-static {p1}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {v0}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method protected onImageLaidOut()V
    .locals 4

    .line 562
    invoke-super {p0}, Lcom/narvii/crop/TransformImageView;->onImageLaidOut()V

    .line 563
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 569
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 571
    iget v2, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    div-float v2, v1, v0

    .line 572
    iput v2, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 575
    :cond_1
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->setupCropBounds()V

    .line 576
    invoke-direct {p0, v1, v0}, Lcom/narvii/crop/CropImageView;->setupInitialImagePosition(FF)V

    .line 577
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 579
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onScale(F)V

    .line 581
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onRotate(F)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 544
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 546
    iget p1, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    .line 547
    iget p2, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    .line 548
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    iget p4, p0, Lcom/narvii/crop/CropImageView;->mPaddingRight:I

    sub-int/2addr p3, p4

    .line 549
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    iget p5, p0, Lcom/narvii/crop/CropImageView;->mPaddingBottom:I

    sub-int/2addr p4, p5

    sub-int/2addr p3, p1

    .line 550
    iput p3, p0, Lcom/narvii/crop/TransformImageView;->mThisWidth:I

    sub-int/2addr p4, p2

    .line 551
    iput p4, p0, Lcom/narvii/crop/TransformImageView;->mThisHeight:I

    .line 553
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->onImageLaidOut()V

    :cond_0
    return-void
.end method

.method public postRotate(F)V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/crop/TransformImageView;->postRotate(FFF)V

    return-void
.end method

.method public postScale(FFF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v1

    mul-float v1, v1, p1

    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 417
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/crop/TransformImageView;->postScale(FFF)V

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v0

    mul-float v0, v0, p1

    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMinScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 419
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/crop/TransformImageView;->postScale(FFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetScale()V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lcom/narvii/crop/CropImageView;->mMinCropWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v0, v2

    .line 686
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v1

    iget v3, p0, Lcom/narvii/crop/CropImageView;->mMinCropHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    div-float/2addr v2, v3

    .line 687
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/crop/CropImageView;->mMaxScale:F

    .line 689
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    iget-boolean v0, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    :goto_0
    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 691
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 692
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    :cond_1
    return-void
.end method

.method public setCropBoundsChangeListener(Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mCropBoundsChangeListener:Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;

    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setCustomPadding(IIII)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    .line 316
    iput p2, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    .line 317
    iput p3, p0, Lcom/narvii/crop/CropImageView;->mPaddingRight:I

    .line 318
    iput p4, p0, Lcom/narvii/crop/CropImageView;->mPaddingBottom:I

    .line 319
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->setupCropBounds()V

    return-void
.end method

.method public setImageCenter([F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 99
    aget p1, p1, v1

    aput p1, v0, v1

    .line 100
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageCorners([F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    aget v2, p1, v0

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageToWrapCropBounds()V
    .locals 1

    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, v0}, Lcom/narvii/crop/CropImageView;->setImageToWrapCropBounds(Z)V

    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
    .locals 13

    .line 453
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds()Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v2, 0x1

    .line 456
    aget v7, v0, v2

    .line 457
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v10

    .line 459
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr v0, v6

    .line 460
    iget-object v3, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v7

    const/4 v4, 0x0

    .line 463
    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 464
    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 466
    iget-object v5, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    array-length v8, v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    .line 467
    iget-object v8, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 469
    invoke-virtual {p0, v5}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->calculateImageIndents()[F

    move-result-object v0

    .line 473
    aget v1, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    .line 474
    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    add-float/2addr v2, v0

    neg-float v0, v2

    move v9, v0

    move v8, v1

    const/4 v11, 0x0

    goto :goto_0

    .line 476
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 477
    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 478
    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 479
    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 481
    iget-object v5, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    invoke-static {v5}, Lcom/narvii/crop/RectUtils;->getRectSidesFromCorners([F)[F

    move-result-object v5

    .line 483
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    aget v1, v5, v1

    div-float/2addr v8, v1

    .line 484
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    aget v2, v5, v2

    div-float/2addr v1, v2

    .line 483
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3ff028f5c28f5c29L    # 1.01

    .line 486
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    double-to-float v1, v1

    mul-float v1, v1, v10

    sub-float/2addr v1, v10

    move v8, v0

    move v11, v1

    move v9, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 491
    new-instance p1, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;

    iget-wide v4, p0, Lcom/narvii/crop/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;-><init>(Lcom/narvii/crop/CropImageView;JFFFFFFZ)V

    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 495
    :cond_1
    invoke-virtual {p0, v8, v9}, Lcom/narvii/crop/TransformImageView;->postTranslate(FF)V

    if-nez v12, :cond_2

    add-float/2addr v10, v11

    .line 497
    iget-object p1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, v10, p1, v0}, Lcom/narvii/crop/CropImageView;->zoomInImage(FFF)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setImageToWrapCropBoundsAnimDuration(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 360
    iput-wide p1, p0, Lcom/narvii/crop/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    return-void

    .line 362
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Animation duration cannot be negative value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInitailImageCenter([F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCenter:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 121
    aget p1, p1, v1

    aput p1, v0, v1

    .line 122
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setInitailImageCorner([F)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCorners:[F

    aget v2, p1, v0

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setMaxResultImageSizeX(I)V
    .locals 0

    .line 341
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeX:I

    return-void
.end method

.method public setMaxResultImageSizeY(I)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeY:I

    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxScaleMultiplier:F

    return-void
.end method

.method public setMinCropHeight(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMinCropHeight:I

    return-void
.end method

.method public setMinCropWidth(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMinCropWidth:I

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 2

    .line 299
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 306
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    goto :goto_0

    .line 308
    :cond_1
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 311
    :goto_0
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->setupCropBounds()V

    return-void
.end method

.method public sethAdjust(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    return-void
.end method

.method protected zoomImageToPosition(FFFJ)V
    .locals 8

    .line 621
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    move-result p1

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v4

    sub-float v5, p1, v4

    .line 628
    new-instance p1, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;-><init>(Lcom/narvii/crop/CropImageView;JFFFF)V

    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zoomInImage(F)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/crop/CropImageView;->zoomInImage(FFF)V

    return-void
.end method

.method public zoomInImage(FFF)V
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/crop/CropImageView;->postScale(FFF)V

    :cond_0
    return-void
.end method

.method public zoomOutImage(F)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/crop/CropImageView;->zoomOutImage(FFF)V

    return-void
.end method

.method public zoomOutImage(FFF)V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMinScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/crop/CropImageView;->postScale(FFF)V

    :cond_0
    return-void
.end method
