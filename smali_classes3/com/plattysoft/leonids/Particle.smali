.class public Lcom/plattysoft/leonids/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


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
            "Lcom/plattysoft/leonids/modifiers/ParticleModifier;",
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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mScale:F

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialRotation:F

    .line 24
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mRotationSpeed:F

    .line 26
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mSpeedX:F

    .line 27
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mSpeedY:F

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/plattysoft/leonids/Particle;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/plattysoft/leonids/Particle;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public activate(JLjava/util/List;)Lcom/plattysoft/leonids/Particle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/plattysoft/leonids/modifiers/ParticleModifier;",
            ">;)",
            "Lcom/plattysoft/leonids/Particle;"
        }
    .end annotation

    .line 107
    iput-wide p1, p0, Lcom/plattysoft/leonids/Particle;->mStartingMilisecond:J

    .line 109
    iput-object p3, p0, Lcom/plattysoft/leonids/Particle;->mModifiers:Ljava/util/List;

    return-object p0
.end method

.method public configure(JFF)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    .line 70
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    .line 72
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iput p3, p0, Lcom/plattysoft/leonids/Particle;->mInitialX:F

    .line 73
    iget p3, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    int-to-float p3, p3

    sub-float/2addr p4, p3

    iput p4, p0, Lcom/plattysoft/leonids/Particle;->mInitialY:F

    .line 74
    iget p3, p0, Lcom/plattysoft/leonids/Particle;->mInitialX:F

    iput p3, p0, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    .line 75
    iget p3, p0, Lcom/plattysoft/leonids/Particle;->mInitialY:F

    iput p3, p0, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    .line 77
    iput-wide p1, p0, Lcom/plattysoft/leonids/Particle;->mTimeToLive:J

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 95
    iget-boolean v0, p0, Lcom/plattysoft/leonids/Particle;->mHidden:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 99
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mRotation:F

    iget v2, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 100
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mScale:F

    iget v2, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/plattysoft/leonids/Particle;->mBitmapHalfHeight:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 101
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    iget v2, p0, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 102
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/plattysoft/leonids/Particle;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/plattysoft/leonids/Particle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mScale:F

    const/16 v0, 0xff

    .line 64
    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mAlpha:I

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/plattysoft/leonids/Particle;->mHidden:Z

    return-void
.end method

.method public update(J)Z
    .locals 4

    .line 81
    iget-wide v0, p0, Lcom/plattysoft/leonids/Particle;->mStartingMilisecond:J

    sub-long/2addr p1, v0

    .line 82
    iget-wide v0, p0, Lcom/plattysoft/leonids/Particle;->mTimeToLive:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    return v2

    .line 85
    :cond_0
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialX:F

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mSpeedX:F

    long-to-float v3, p1

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mAccelerationX:F

    mul-float v1, v1, v3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mCurrentX:F

    .line 86
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialY:F

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mSpeedY:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mAccelerationY:F

    mul-float v1, v1, v3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mCurrentY:F

    .line 87
    iget v0, p0, Lcom/plattysoft/leonids/Particle;->mInitialRotation:F

    iget v1, p0, Lcom/plattysoft/leonids/Particle;->mRotationSpeed:F

    mul-float v1, v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/plattysoft/leonids/Particle;->mRotation:F

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mModifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/plattysoft/leonids/Particle;->mModifiers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/plattysoft/leonids/modifiers/ParticleModifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/plattysoft/leonids/modifiers/ParticleModifier;->apply(Lcom/plattysoft/leonids/Particle;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
