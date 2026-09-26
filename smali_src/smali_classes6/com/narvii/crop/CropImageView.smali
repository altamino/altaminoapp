.class public Lcom/narvii/crop/CropImageView;
.super Lcom/narvii/crop/TransformImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;,
        Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;,
        Lcom/narvii/crop/CropImageView$ZoomImageToPosition;
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/crop/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    .line 4
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 5
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    const/high16 p2, 0x41200000    # 10.0f

    iput p2, p0, Lcom/narvii/crop/CropImageView;->mMaxScaleMultiplier:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/narvii/crop/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeX:I

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeY:I

    const-wide/16 p1, 0x1f4

    iput-wide p1, p0, Lcom/narvii/crop/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/crop/CropImageView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method private calculateImageIndents()[F
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    .line 11
    move-result v1

    .line 12
    neg-float v1, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 18
    array-length v1, v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/narvii/crop/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 49
    .line 50
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 51
    sub-float/2addr v2, v3

    .line 52
    .line 53
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 54
    .line 55
    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 56
    sub-float/2addr v3, v4

    .line 57
    .line 58
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 59
    .line 60
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 61
    sub-float/2addr v4, v5

    .line 62
    .line 63
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 64
    .line 65
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 66
    sub-float/2addr v0, v1

    .line 67
    const/4 v1, 0x4

    .line 68
    .line 69
    new-array v1, v1, [F

    .line 70
    const/4 v5, 0x0

    .line 71
    .line 72
    cmpl-float v6, v2, v5

    .line 73
    .line 74
    if-lez v6, :cond_0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move v2, v5

    .line 77
    :goto_0
    const/4 v6, 0x0

    .line 78
    .line 79
    aput v2, v1, v6

    .line 80
    .line 81
    cmpl-float v2, v3, v5

    .line 82
    .line 83
    if-lez v2, :cond_1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move v3, v5

    .line 86
    :goto_1
    const/4 v2, 0x1

    .line 87
    .line 88
    aput v3, v1, v2

    .line 89
    .line 90
    cmpg-float v2, v4, v5

    .line 91
    .line 92
    if-gez v2, :cond_2

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v4, v5

    .line 95
    :goto_2
    const/4 v2, 0x2

    .line 96
    .line 97
    aput v4, v1, v2

    .line 98
    .line 99
    cmpg-float v2, v0, v5

    .line 100
    .line 101
    if-gez v2, :cond_3

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    move v0, v5

    .line 104
    :goto_3
    const/4 v2, 0x3

    .line 105
    .line 106
    aput v0, v1, v2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    .line 117
    move-result v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 121
    .line 122
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 126
    return-object v1
.end method

.method private setupCropBounds()V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/crop/TransformImageView;->mThisWidth:I

    .line 3
    int-to-float v1, v0

    .line 4
    .line 5
    iget v2, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 6
    div-float/2addr v1, v2

    .line 7
    float-to-int v1, v1

    .line 8
    .line 9
    iget v3, p0, Lcom/narvii/crop/TransformImageView;->mThisHeight:I

    .line 10
    .line 11
    if-le v1, v3, :cond_0

    .line 12
    int-to-float v1, v3

    .line 13
    mul-float/2addr v1, v2

    .line 14
    float-to-int v1, v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 20
    .line 21
    iget v4, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    .line 22
    .line 23
    add-int v5, v4, v0

    .line 24
    int-to-float v5, v5

    .line 25
    .line 26
    iget v6, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    .line 27
    int-to-float v7, v6

    .line 28
    add-int/2addr v4, v1

    .line 29
    add-int/2addr v4, v0

    .line 30
    int-to-float v0, v4

    .line 31
    add-int/2addr v6, v3

    .line 32
    int-to-float v1, v6

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sub-int/2addr v3, v1

    .line 38
    .line 39
    div-int/lit8 v3, v3, 0x2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 42
    .line 43
    iget v4, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    .line 44
    int-to-float v5, v4

    .line 45
    .line 46
    iget v6, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    .line 47
    .line 48
    add-int v7, v6, v3

    .line 49
    int-to-float v7, v7

    .line 50
    add-int/2addr v4, v0

    .line 51
    int-to-float v0, v4

    .line 52
    add-int/2addr v6, v1

    .line 53
    add-int/2addr v6, v3

    .line 54
    int-to-float v1, v6

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v5, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    return-void

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->resetScale()V

    .line 68
    return-void
.end method

.method private setupInitialImagePosition(FF)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 12
    move-result v1

    .line 13
    .line 14
    div-float v2, v0, p1

    .line 15
    .line 16
    div-float v3, v1, p2

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 20
    move-result v2

    .line 21
    .line 22
    iput v2, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    .line 23
    mul-float/2addr p1, v2

    .line 24
    sub-float/2addr v0, p1

    .line 25
    .line 26
    const/high16 p1, 0x40000000    # 2.0f

    .line 27
    div-float/2addr v0, p1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 32
    add-float/2addr v0, v4

    .line 33
    mul-float/2addr p2, v2

    .line 34
    sub-float/2addr v1, p2

    .line 35
    div-float/2addr v1, p1

    .line 36
    .line 37
    iget p1, v3, Landroid/graphics/RectF;->top:F

    .line 38
    add-float/2addr v1, p1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    iget p2, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->resetScale()V

    .line 59
    return-void
.end method


# virtual methods
.method public cancelAllAnimations()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public cropImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getCropBoundsChangeListener()Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropBoundsChangeListener:Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCropResult(Lcom/narvii/app/NVContext;)Lcom/narvii/theme/ThemeImage;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->cancelAllAnimations()V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/crop/RectUtils;->trapToRect([F)Landroid/graphics/RectF;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    return-object v0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 31
    .line 32
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 33
    .line 34
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 35
    sub-float/2addr v2, v3

    .line 36
    div-float/2addr v2, v0

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    cmpg-float v4, v2, v3

    .line 40
    .line 41
    if-gez v4, :cond_2

    .line 42
    move v2, v3

    .line 43
    .line 44
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 45
    .line 46
    iget p1, p1, Landroid/graphics/RectF;->left:F

    .line 47
    sub-float/2addr v4, p1

    .line 48
    div-float/2addr v4, v0

    .line 49
    .line 50
    cmpg-float p1, v4, v3

    .line 51
    .line 52
    if-gez p1, :cond_3

    .line 53
    move v4, v3

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 57
    move-result p1

    .line 58
    div-float/2addr p1, v0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 64
    move-result v1

    .line 65
    div-float/2addr v1, v0

    .line 66
    .line 67
    new-instance v0, Lcom/narvii/theme/ThemeImage;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Lcom/narvii/theme/ThemeImage;-><init>()V

    .line 71
    .line 72
    iput v4, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 73
    .line 74
    iput v2, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 75
    .line 76
    const/16 v2, 0x9

    .line 77
    .line 78
    new-array v2, v2, [F

    .line 79
    .line 80
    iput-object v2, v0, Lcom/narvii/theme/ThemeImage;->imageMatrix:[F

    .line 81
    .line 82
    iget-object v4, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 86
    .line 87
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 88
    .line 89
    iget v2, p0, Lcom/narvii/crop/CropImageView;->mMinCropWidth:I

    .line 90
    int-to-float v4, v2

    .line 91
    .line 92
    cmpg-float p1, p1, v4

    .line 93
    .line 94
    if-gez p1, :cond_4

    .line 95
    int-to-float p1, v2

    .line 96
    .line 97
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 98
    .line 99
    :cond_4
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 100
    .line 101
    iget v2, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 102
    add-float/2addr p1, v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 110
    move-result v2

    .line 111
    int-to-float v2, v2

    .line 112
    .line 113
    cmpl-float p1, p1, v2

    .line 114
    .line 115
    if-lez p1, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 123
    move-result p1

    .line 124
    int-to-float p1, p1

    .line 125
    .line 126
    iget v2, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 127
    sub-float/2addr p1, v2

    .line 128
    .line 129
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 130
    .line 131
    :cond_5
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 132
    .line 133
    cmpg-float p1, p1, v3

    .line 134
    .line 135
    if-gez p1, :cond_6

    .line 136
    .line 137
    iput v3, v0, Lcom/narvii/theme/ThemeImage;->x:F

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 145
    move-result p1

    .line 146
    int-to-float p1, p1

    .line 147
    .line 148
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->width:F

    .line 149
    .line 150
    :cond_6
    iput v1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 151
    .line 152
    iget p1, p0, Lcom/narvii/crop/CropImageView;->mMinCropHeight:I

    .line 153
    int-to-float v2, p1

    .line 154
    .line 155
    cmpg-float v1, v1, v2

    .line 156
    .line 157
    if-gez v1, :cond_7

    .line 158
    int-to-float p1, p1

    .line 159
    .line 160
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 161
    .line 162
    :cond_7
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 163
    .line 164
    iget v1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 165
    add-float/2addr p1, v1

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 173
    move-result v1

    .line 174
    int-to-float v1, v1

    .line 175
    .line 176
    cmpl-float p1, p1, v1

    .line 177
    .line 178
    if-lez p1, :cond_8

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 186
    move-result p1

    .line 187
    int-to-float p1, p1

    .line 188
    .line 189
    iget v1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 190
    sub-float/2addr p1, v1

    .line 191
    .line 192
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 193
    .line 194
    :cond_8
    iget p1, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 195
    .line 196
    cmpg-float p1, p1, v3

    .line 197
    .line 198
    if-gez p1, :cond_9

    .line 199
    .line 200
    iput v3, v0, Lcom/narvii/theme/ThemeImage;->y:F

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 204
    move-result-object p1

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 208
    move-result p1

    .line 209
    int-to-float p1, p1

    .line 210
    .line 211
    iput p1, v0, Lcom/narvii/theme/ThemeImage;->height:F

    .line 212
    .line 213
    :cond_9
    iget-object p1, p0, Lcom/narvii/crop/CropImageView;->imageUrl:Ljava/lang/String;

    .line 214
    .line 215
    iput-object p1, v0, Lcom/narvii/theme/ThemeImage;->path:Ljava/lang/String;

    .line 216
    .line 217
    const-string p1, "crop_result"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/narvii/theme/ThemeImage;->toString()Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    .line 224
    invoke-static {p1, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    iget v0, p0, Lcom/narvii/crop/CropImageView;->mMaxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    iget v0, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    return v0
.end method

.method public getTargetAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    return v0
.end method

.method protected isImageWrapCropBounds()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v0

    return v0
.end method

.method protected isImageWrapCropBounds([F)Z
    .locals 2

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 3
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 6
    invoke-static {v0}, Lcom/narvii/crop/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/crop/TransformImageView;->onImageLaidOut()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    cmpl-float v2, v2, v3

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    div-float v2, v1, v0

    .line 30
    .line 31
    iput v2, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->setupCropBounds()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1, v0}, Lcom/narvii/crop/CropImageView;->setupInitialImagePosition(FF)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onScale(F)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onRotate(F)V

    .line 63
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    .line 8
    .line 9
    iget p2, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result p3

    .line 14
    .line 15
    iget p4, p0, Lcom/narvii/crop/CropImageView;->mPaddingRight:I

    .line 16
    sub-int/2addr p3, p4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p4

    .line 21
    .line 22
    iget p5, p0, Lcom/narvii/crop/CropImageView;->mPaddingBottom:I

    .line 23
    sub-int/2addr p4, p5

    .line 24
    sub-int/2addr p3, p1

    .line 25
    .line 26
    iput p3, p0, Lcom/narvii/crop/TransformImageView;->mThisWidth:I

    .line 27
    sub-int/2addr p4, p2

    .line 28
    .line 29
    iput p4, p0, Lcom/narvii/crop/TransformImageView;->mThisHeight:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->onImageLaidOut()V

    .line 33
    :cond_0
    return-void
.end method

.method public postRotate(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/crop/TransformImageView;->postRotate(FFF)V

    .line 16
    return-void
.end method

.method public postScale(FFF)V
    .locals 3

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    cmpl-float v1, p1, v0

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    .line 10
    move-result v1

    .line 11
    mul-float/2addr v1, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    .line 15
    move-result v2

    .line 16
    .line 17
    cmpg-float v1, v1, v2

    .line 18
    .line 19
    if-gtz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/crop/TransformImageView;->postScale(FFF)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    cmpg-float v0, p1, v0

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    .line 31
    move-result v0

    .line 32
    mul-float/2addr v0, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMinScale()F

    .line 36
    move-result v1

    .line 37
    .line 38
    cmpl-float v0, v0, v1

    .line 39
    .line 40
    if-ltz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/crop/TransformImageView;->postScale(FFF)V

    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public resetScale()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 6
    move-result v0

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/crop/CropImageView;->mMinCropWidth:I

    .line 12
    int-to-float v2, v2

    .line 13
    mul-float/2addr v2, v1

    .line 14
    div-float/2addr v0, v2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 20
    move-result v2

    .line 21
    mul-float/2addr v2, v1

    .line 22
    .line 23
    iget v3, p0, Lcom/narvii/crop/CropImageView;->mMinCropHeight:I

    .line 24
    int-to-float v3, v3

    .line 25
    mul-float/2addr v3, v1

    .line 26
    div-float/2addr v2, v3

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 30
    move-result v0

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/crop/CropImageView;->mMaxScale:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 48
    move-result v0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 55
    move-result v0

    .line 56
    :goto_0
    mul-float/2addr v0, v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 64
    move-result v2

    .line 65
    int-to-float v2, v2

    .line 66
    div-float/2addr v0, v2

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 72
    move-result v2

    .line 73
    mul-float/2addr v2, v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 81
    move-result v1

    .line 82
    int-to-float v1, v1

    .line 83
    div-float/2addr v2, v1

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 87
    move-result v0

    .line 88
    .line 89
    iput v0, p0, Lcom/narvii/crop/CropImageView;->mMinScale:F

    .line 90
    :cond_1
    return-void
.end method

.method public setCropBoundsChangeListener(Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;)V
    .locals 0
    .param p1    # Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mCropBoundsChangeListener:Lcom/narvii/crop/CropImageView$CropBoundsChangeListener;

    return-void
.end method

.method public setCropRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setCustomPadding(IIII)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mPaddingLeft:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/crop/CropImageView;->mPaddingTop:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/crop/CropImageView;->mPaddingRight:I

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/crop/CropImageView;->mPaddingBottom:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->setupCropBounds()V

    .line 12
    return-void
.end method

.method public setImageCenter([F)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aget v2, p1, v1

    .line 9
    .line 10
    aput v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    aget p1, p1, v1

    .line 14
    .line 15
    aput p1, v0, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    return-void
.end method

.method public setImageCorners([F)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    :goto_0
    const/16 v1, 0x8

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 11
    .line 12
    aget v2, p1, v0

    .line 13
    .line 14
    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method

.method public setImageToWrapCropBounds()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/crop/CropImageView;->setImageToWrapCropBounds(Z)V

    return-void
.end method

.method public setImageToWrapCropBounds(Z)V
    .locals 13

    .line 2
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    const/4 v1, 0x0

    .line 3
    aget v6, v0, v1

    const/4 v2, 0x1

    .line 4
    aget v7, v0, v2

    .line 5
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v10

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr v0, v6

    iget-object v3, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 7
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v7

    iget-object v4, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 8
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 9
    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 10
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 11
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 12
    invoke-virtual {p0, v4}, Lcom/narvii/crop/CropImageView;->isImageWrapCropBounds([F)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 13
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->calculateImageIndents()[F

    move-result-object v0

    .line 14
    aget v1, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v1, v3

    neg-float v1, v1

    .line 15
    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    add-float/2addr v2, v0

    neg-float v0, v2

    const/4 v2, 0x0

    move v9, v0

    move v8, v1

    move v11, v2

    goto :goto_0

    .line 16
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 17
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 18
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentAngle()F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v5, p0, Lcom/narvii/crop/CropImageView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 19
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v5, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 20
    invoke-static {v5}, Lcom/narvii/crop/RectUtils;->getRectSidesFromCorners([F)[F

    move-result-object v5

    .line 21
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    aget v1, v5, v1

    div-float/2addr v8, v1

    .line 22
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    aget v2, v5, v2

    div-float/2addr v1, v2

    .line 23
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3ff028f5c28f5c29L    # 1.01

    mul-double/2addr v1, v4

    double-to-float v1, v1

    mul-float/2addr v1, v10

    sub-float/2addr v1, v10

    move v8, v0

    move v11, v1

    move v9, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 24
    new-instance p1, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;

    iget-wide v4, p0, Lcom/narvii/crop/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/narvii/crop/CropImageView$WrapCropBoundsRunnable;-><init>(Lcom/narvii/crop/CropImageView;JFFFFFFZ)V

    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mWrapCropBoundsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0, v8, v9}, Lcom/narvii/crop/TransformImageView;->postTranslate(FF)V

    if-nez v12, :cond_2

    add-float/2addr v10, v11

    iget-object p1, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 26
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
    .locals 2
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/narvii/crop/CropImageView;->mImageToWrapCropBoundsAnimDuration:J

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Animation duration cannot be negative value."

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method public setInitailImageCenter([F)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCenter:[F

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aget v2, p1, v1

    .line 9
    .line 10
    aput v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    aget p1, p1, v1

    .line 14
    .line 15
    aput p1, v0, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    return-void
.end method

.method public setInitailImageCorner([F)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    .line 6
    :goto_0
    const/16 v1, 0x8

    .line 7
    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCorners:[F

    .line 11
    .line 12
    aget v2, p1, v0

    .line 13
    .line 14
    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    return-void
.end method

.method public setMaxResultImageSizeX(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeX:I

    return-void
.end method

.method public setMaxResultImageSizeY(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxResultImageSizeY:I

    return-void
.end method

.method public setMaxScaleMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMaxScaleMultiplier:F

    return-void
.end method

.method public setMinCropHeight(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMinCropHeight:I

    return-void
.end method

.method public setMinCropWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/crop/CropImageView;->mMinCropWidth:I

    return-void
.end method

.method public setTargetAspectRatio(F)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    .line 12
    cmpl-float v1, p1, v1

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    div-float/2addr p1, v0

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iput p1, p0, Lcom/narvii/crop/CropImageView;->mTargetAspectRatio:F

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-direct {p0}, Lcom/narvii/crop/CropImageView;->setupCropBounds()V

    .line 34
    return-void
.end method

.method public sethAdjust(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/crop/CropImageView;->hAdjust:Z

    return-void
.end method

.method protected zoomImageToPosition(FFFJ)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    .line 4
    move-result v0

    .line 5
    .line 6
    cmpl-float v0, p1, v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    .line 16
    move-result v4

    .line 17
    .line 18
    sub-float v5, p1, v4

    .line 19
    .line 20
    new-instance p1, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;

    .line 21
    move-object v0, p1

    .line 22
    move-object v1, p0

    .line 23
    move-wide v2, p4

    .line 24
    move v6, p2

    .line 25
    move v7, p3

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/narvii/crop/CropImageView$ZoomImageToPosition;-><init>(Lcom/narvii/crop/CropImageView;JFFFF)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/crop/CropImageView;->mZoomImageToPositionRunnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method public zoomInImage(F)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 1
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

    .line 2
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMaxScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/crop/CropImageView;->postScale(FFF)V

    :cond_0
    return-void
.end method

.method public zoomOutImage(F)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/crop/CropImageView;->mCropRect:Landroid/graphics/RectF;

    .line 1
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

    .line 2
    invoke-virtual {p0}, Lcom/narvii/crop/CropImageView;->getMinScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->getCurrentScale()F

    move-result v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/crop/CropImageView;->postScale(FFF)V

    :cond_0
    return-void
.end method
