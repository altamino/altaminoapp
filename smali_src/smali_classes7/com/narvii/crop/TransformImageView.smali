.class public Lcom/narvii/crop/TransformImageView;
.super Lcom/narvii/widget/NVImageView;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/crop/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/crop/TransformImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mMatrixValues:[F

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    .line 5
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->init()V

    return-void
.end method

.method private updateCurrentImagePoints()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCorners:[F

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCorners:[F

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v2, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageCenter:[F

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCenter:[F

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 24
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected calculateMaxBitmapSize()I
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "window"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/view/WindowManager;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Point;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 25
    .line 26
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 27
    .line 28
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 29
    int-to-double v2, v0

    .line 30
    .line 31
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 35
    move-result-wide v2

    .line 36
    int-to-double v0, v1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 40
    move-result-wide v0

    .line 41
    add-double/2addr v2, v0

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 45
    move-result-wide v0

    .line 46
    double-to-int v0, v0

    .line 47
    return v0
.end method

.method protected dispatchImageChanged(ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->dispatchImageChanged(ILcom/narvii/model/Media;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->onImageLaidOut()V

    .line 7
    return-void
.end method

.method public getCurrentAngle()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentScale()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMatrixAngle(Landroid/graphics/Matrix;)F
    .locals 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    .line 5
    move-result v0

    .line 6
    float-to-double v0, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v2}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    .line 11
    move-result p1

    .line 12
    float-to-double v2, p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 22
    mul-double/2addr v0, v2

    .line 23
    neg-double v0, v0

    .line 24
    double-to-float p1, v0

    .line 25
    return p1
.end method

.method public getMatrixScale(Landroid/graphics/Matrix;)F
    .locals 6
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    .line 5
    move-result v0

    .line 6
    float-to-double v0, v0

    .line 7
    .line 8
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 12
    move-result-wide v0

    .line 13
    const/4 v4, 0x3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v4}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    .line 17
    move-result p1

    .line 18
    float-to-double v4, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 22
    move-result-wide v2

    .line 23
    add-double/2addr v0, v2

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 27
    move-result-wide v0

    .line 28
    double-to-float p1, v0

    .line 29
    return p1
.end method

.method protected getMatrixValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mMatrixValues:[F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mMatrixValues:[F

    .line 8
    .line 9
    aget p1, p1, p2

    .line 10
    return p1
.end method

.method public getMaxBitmapSize()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    .line 3
    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/crop/TransformImageView;->calculateMaxBitmapSize()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    .line 13
    return v0
.end method

.method protected init()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/crop/TransformImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6
    return-void
.end method

.method protected onImageLaidOut()V
    .locals 5

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
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    float-to-int v3, v1

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    aput-object v3, v2, v4

    .line 29
    float-to-int v3, v0

    .line 30
    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    aput-object v3, v2, v4

    .line 37
    .line 38
    const-string v3, "Image size: [%d:%d]"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const-string v3, "TransformImageView"

    .line 45
    .line 46
    .line 47
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    new-instance v2, Landroid/graphics/RectF;

    .line 50
    const/4 v3, 0x0

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lcom/narvii/crop/RectUtils;->getCornersFromRect(Landroid/graphics/RectF;)[F

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCorners:[F

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/narvii/crop/RectUtils;->getCenterFromRect(Landroid/graphics/RectF;)[F

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/crop/TransformImageView;->mInitialImageCenter:[F

    .line 66
    return-void
.end method

.method public postRotate(FFF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onRotate(F)V

    .line 29
    :cond_0
    return-void
.end method

.method public postScale(FFF)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/crop/TransformImageView$TransformImageListener;->onScale(F)V

    .line 29
    :cond_0
    return-void
.end method

.method public postTranslate(FF)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    cmpl-float v0, p2, v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 20
    :cond_1
    return-void
.end method

.method protected printMatrix(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2, v0}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x5

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, v1}, Lcom/narvii/crop/TransformImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/narvii/crop/TransformImageView;->getMatrixAngle(Landroid/graphics/Matrix;)F

    .line 18
    move-result p2

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p1, ": matrix: { x: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p1, ", y: "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p1, ", scale: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, ", angle: "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p1, " }"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    const-string p2, "TransformImageView"

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mCurrentImageMatrix:Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/crop/TransformImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 9
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/crop/TransformImageView;->updateCurrentImagePoints()V

    .line 7
    return-void
.end method

.method public setMaxBitmapSize(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/crop/TransformImageView;->mMaxBitmapSize:I

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const-string p1, "TransformImageView"

    .line 11
    .line 12
    const-string v0, "Invalid ScaleType. Only ScaleType.MATRIX can be used"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    return-void
.end method

.method public setTransformImageListener(Lcom/narvii/crop/TransformImageView$TransformImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/crop/TransformImageView;->mTransformImageListener:Lcom/narvii/crop/TransformImageView$TransformImageListener;

    return-void
.end method
