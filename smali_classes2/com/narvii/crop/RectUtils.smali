.class public Lcom/narvii/crop/RectUtils;
.super Ljava/lang/Object;
.source "RectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenterFromRect(Landroid/graphics/RectF;)[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 47
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 21
    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v2, p0, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x1

    aput v2, v0, v3

    iget v3, p0, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v4, 0x3

    aput v2, v0, v4

    const/4 v2, 0x4

    aput v3, v0, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x5

    aput p0, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method public static getRectSidesFromCorners([F)[F
    .locals 12

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 42
    aget v3, p0, v2

    aget v4, p0, v0

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const/4 v7, 0x1

    aget v8, p0, v7

    const/4 v9, 0x3

    aget v10, p0, v9

    sub-float/2addr v8, v10

    float-to-double v10, v8

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    aget v0, p0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    .line 43
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    aget v0, p0, v9

    const/4 v4, 0x5

    aget p0, p0, v4

    sub-float/2addr v0, p0

    float-to-double v8, v0

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    aput p0, v1, v7

    return-object v1
.end method

.method public static trapToRect([F)Landroid/graphics/RectF;
    .locals 6

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x1

    .line 60
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    .line 61
    aget v2, p0, v2

    .line 62
    aget v3, p0, v1

    .line 63
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_0

    move v4, v2

    :cond_0
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 64
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    move v4, v3

    :cond_1
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 65
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 66
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    move v2, v3

    :cond_3
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    return-object v0
.end method
