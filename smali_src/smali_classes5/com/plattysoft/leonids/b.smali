.class public Lcom/plattysoft/leonids/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAccelerationX:F

.field public mAccelerationY:F

.field public mAlpha:I

.field private mBitmapHalfHeight:I

.field private mBitmapHalfWidth:I

.field public mCurrentX:F

.field public mCurrentY:F

.field public mHidden:Z

.field protected mImage:Landroid/graphics/Bitmap;

.field public mInitialRotation:F

.field private mInitialX:F

.field private mInitialY:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb6/b;",
            ">;"
        }
    .end annotation
.end field

.field public final mPaint:Landroid/graphics/Paint;

.field private mRotation:F

.field public mRotationSpeed:F

.field public mScale:F

.field public mSpeedX:F

.field public mSpeedY:F

.field protected mStartingMilisecond:J

.field private mTimeToLive:J


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/plattysoft/leonids/b;->mScale:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/plattysoft/leonids/b;->mAlpha:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/plattysoft/leonids/b;->mInitialRotation:F

    iput v0, p0, Lcom/plattysoft/leonids/b;->mRotationSpeed:F

    iput v0, p0, Lcom/plattysoft/leonids/b;->mSpeedX:F

    iput v0, p0, Lcom/plattysoft/leonids/b;->mSpeedY:F

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/b;->mMatrix:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/b;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/plattysoft/leonids/b;-><init>()V

    iput-object p1, p0, Lcom/plattysoft/leonids/b;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a(JLjava/util/List;)Lcom/plattysoft/leonids/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lb6/b;",
            ">;)",
            "Lcom/plattysoft/leonids/b;"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/plattysoft/leonids/b;->mStartingMilisecond:J

    iput-object p3, p0, Lcom/plattysoft/leonids/b;->mModifiers:Ljava/util/List;

    return-object p0
.end method

.method public b(JFF)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mImage:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 6
    move-result v0

    .line 7
    .line 8
    div-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    iput v0, p0, Lcom/plattysoft/leonids/b;->mBitmapHalfWidth:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mImage:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    move-result v0

    .line 17
    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/plattysoft/leonids/b;->mBitmapHalfHeight:I

    .line 21
    .line 22
    iget v1, p0, Lcom/plattysoft/leonids/b;->mBitmapHalfWidth:I

    .line 23
    int-to-float v1, v1

    .line 24
    sub-float/2addr p3, v1

    .line 25
    .line 26
    iput p3, p0, Lcom/plattysoft/leonids/b;->mInitialX:F

    .line 27
    int-to-float v0, v0

    .line 28
    sub-float/2addr p4, v0

    .line 29
    .line 30
    iput p4, p0, Lcom/plattysoft/leonids/b;->mInitialY:F

    .line 31
    .line 32
    iput p3, p0, Lcom/plattysoft/leonids/b;->mCurrentX:F

    .line 33
    .line 34
    iput p4, p0, Lcom/plattysoft/leonids/b;->mCurrentY:F

    .line 35
    .line 36
    iput-wide p1, p0, Lcom/plattysoft/leonids/b;->mTimeToLive:J

    .line 37
    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/plattysoft/leonids/b;->mHidden:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/plattysoft/leonids/b;->mAlpha:I

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mMatrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mMatrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    iget v1, p0, Lcom/plattysoft/leonids/b;->mRotation:F

    .line 19
    .line 20
    iget v2, p0, Lcom/plattysoft/leonids/b;->mBitmapHalfWidth:I

    .line 21
    int-to-float v2, v2

    .line 22
    .line 23
    iget v3, p0, Lcom/plattysoft/leonids/b;->mBitmapHalfHeight:I

    .line 24
    int-to-float v3, v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    iget v1, p0, Lcom/plattysoft/leonids/b;->mScale:F

    .line 32
    .line 33
    iget v2, p0, Lcom/plattysoft/leonids/b;->mBitmapHalfWidth:I

    .line 34
    int-to-float v2, v2

    .line 35
    .line 36
    iget v3, p0, Lcom/plattysoft/leonids/b;->mBitmapHalfHeight:I

    .line 37
    int-to-float v3, v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mMatrix:Landroid/graphics/Matrix;

    .line 43
    .line 44
    iget v1, p0, Lcom/plattysoft/leonids/b;->mCurrentX:F

    .line 45
    .line 46
    iget v2, p0, Lcom/plattysoft/leonids/b;->mCurrentY:F

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 50
    .line 51
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mPaint:Landroid/graphics/Paint;

    .line 52
    .line 53
    iget v1, p0, Lcom/plattysoft/leonids/b;->mAlpha:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mImage:Landroid/graphics/Bitmap;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/plattysoft/leonids/b;->mMatrix:Landroid/graphics/Matrix;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/plattysoft/leonids/b;->mPaint:Landroid/graphics/Paint;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 66
    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/plattysoft/leonids/b;->mScale:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/plattysoft/leonids/b;->mAlpha:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/plattysoft/leonids/b;->mHidden:Z

    return-void
.end method

.method public e(J)Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/plattysoft/leonids/b;->mStartingMilisecond:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/plattysoft/leonids/b;->mTimeToLive:J

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    return v1

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/plattysoft/leonids/b;->mInitialX:F

    .line 14
    .line 15
    iget v2, p0, Lcom/plattysoft/leonids/b;->mSpeedX:F

    .line 16
    long-to-float v3, p1

    .line 17
    mul-float/2addr v2, v3

    .line 18
    add-float/2addr v0, v2

    .line 19
    .line 20
    iget v2, p0, Lcom/plattysoft/leonids/b;->mAccelerationX:F

    .line 21
    mul-float/2addr v2, v3

    .line 22
    mul-float/2addr v2, v3

    .line 23
    add-float/2addr v0, v2

    .line 24
    .line 25
    iput v0, p0, Lcom/plattysoft/leonids/b;->mCurrentX:F

    .line 26
    .line 27
    iget v0, p0, Lcom/plattysoft/leonids/b;->mInitialY:F

    .line 28
    .line 29
    iget v2, p0, Lcom/plattysoft/leonids/b;->mSpeedY:F

    .line 30
    mul-float/2addr v2, v3

    .line 31
    add-float/2addr v0, v2

    .line 32
    .line 33
    iget v2, p0, Lcom/plattysoft/leonids/b;->mAccelerationY:F

    .line 34
    mul-float/2addr v2, v3

    .line 35
    mul-float/2addr v2, v3

    .line 36
    add-float/2addr v0, v2

    .line 37
    .line 38
    iput v0, p0, Lcom/plattysoft/leonids/b;->mCurrentY:F

    .line 39
    .line 40
    iget v0, p0, Lcom/plattysoft/leonids/b;->mInitialRotation:F

    .line 41
    .line 42
    iget v2, p0, Lcom/plattysoft/leonids/b;->mRotationSpeed:F

    .line 43
    mul-float/2addr v2, v3

    .line 44
    .line 45
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 46
    div-float/2addr v2, v3

    .line 47
    add-float/2addr v0, v2

    .line 48
    .line 49
    iput v0, p0, Lcom/plattysoft/leonids/b;->mRotation:F

    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mModifiers:Ljava/util/List;

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    move-result v0

    .line 56
    .line 57
    if-ge v1, v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/plattysoft/leonids/b;->mModifiers:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    check-cast v0, Lb6/b;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, p0, p1, p2}, Lb6/b;->apply(Lcom/plattysoft/leonids/b;J)V

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p1, 0x1

    .line 73
    return p1
.end method
