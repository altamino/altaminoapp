.class public Lcom/narvii/crop/TransformImageView;
.super Lcom/narvii/widget/NVImageView;
.source "TransformImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/crop/TransformImageView$TransformImageListener;
    }
.end annotation


# static fields
.field protected static final MATRIX_VALUES_COUNT:I = 0x9

.field protected static final RECT_CENTER_POINT_COORDS:I = 0x2

.field protected static final RECT_CORNER_POINTS_COORDS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TransformImageView"


# instance fields
.field protected final mCurrentImageCenter:[F

.field protected final mCurrentImageCorners:[F

.field protected mCurrentImageMatrix:Landroid/graphics/Matrix;

.field private mImageUri:Landroid/net/Uri;

.field protected mInitialImageCenter:[F

.field protected mInitialImageCorners:[F

.field private final mMatrixValues:[F

.field private mMaxBitmapSize:I

.field protected mThisHeight:I

.field protected mThisWidth:I

.field protected mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/narvii/crop/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 35
    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 36
    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 37
    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mMatrixValues:[F

    .line 38
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    .line 60
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->init()V

    return-void
.end method

.method private updateCurrentImagePoints()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCorners:[F

    if-nez v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 281
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    iget-object v2, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCenter:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected calculateMaxBitmapSize()I
    .locals 7

    .line 209
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 210
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 214
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 216
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 217
    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 220
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 222
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected dispatchImageChanged(ILcom/narvii/model/Media;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->dispatchImageChanged(ILcom/narvii/model/Media;)V

    .line 102
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->onImageLaidOut()V

    return-void
.end method

.method public getCurrentAngle()F
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getCurrentScale()F
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMatrixAngle(Landroid/graphics/Matrix;)F
    .locals 4

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0, p1, v2}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result p1

    float-to-double v2, p1

    .line 140
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    neg-double v0, v0

    double-to-float p1, v0

    return p1
.end method

.method public getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 6

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v4, 0x3

    .line 126
    invoke-virtual {p0, p1, v4}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result p1

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method protected getMatrixValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 255
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method public getMaxBitmapSize()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    if-gtz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->calculateMaxBitmapSize()I

    move-result v0

    iput v0, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    .line 81
    :cond_0
    iget v0, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    return v0
.end method

.method protected init()V
    .locals 1

    .line 198
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected onImageLaidOut()V
    .locals 5

    .line 231
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 237
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    float-to-int v4, v1

    .line 239
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Image size: [%d:%d]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransformImageView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 242
    invoke-static {v2}, Lcom/narvii/crop/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCorners:[F

    .line 243
    invoke-static {v2}, Lcom/narvii/crop/RectUtils;->getCenterFromRect(Landroid/graphics/RectF;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCenter:[F

    return-void
.end method

.method public postRotate(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 190
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 191
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    if-eqz p1, :cond_0

    .line 192
    iget-object p2, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onRotate(F)V

    :cond_0
    return-void
.end method

.method public postScale(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 173
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    if-eqz p1, :cond_0

    .line 175
    iget-object p2, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onScale(F)V

    :cond_0
    return-void
.end method

.method public postTranslate(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 159
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method protected printMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x2

    .line 264
    invoke-virtual {p0, p2, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    const/4 v1, 0x5

    .line 265
    invoke-virtual {p0, p2, v1}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v1

    .line 266
    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result v2

    .line 267
    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    move-result p2

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": matrix: { x: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", y: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", scale: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", angle: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " }"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TransformImageView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 147
    invoke-direct {p0}, Lcom/narvii/crop/TransformImageView;->updateCurrentImagePoints()V

    return-void
.end method

.method public setMaxBitmapSize(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 70
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    const-string p1, "TransformImageView"

    const-string v0, "Invalid ScaleType. Only ScaleType.MATRIX can be used"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setTransformImageListener(Lcom/narvii/crop/TransformImageView$TransformImageListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    return-void
.end method
