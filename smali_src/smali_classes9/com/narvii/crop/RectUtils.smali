.class public Lcom/narvii/crop/RectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getCenterFromRect(Landroid/graphics/RectF;)[F
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    aput v1, v0, v2

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    .line 15
    move-result p0

    .line 16
    .line 17
    aput p0, v0, v1

    .line 18
    return-object v0
.end method

.method public static getCornersFromRect(Landroid/graphics/RectF;)[F
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    .line 6
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    aput v1, v0, v2

    .line 10
    .line 11
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    aput v2, v0, v3

    .line 15
    .line 16
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 17
    const/4 v4, 0x2

    .line 18
    .line 19
    aput v3, v0, v4

    .line 20
    const/4 v4, 0x3

    .line 21
    .line 22
    aput v2, v0, v4

    .line 23
    const/4 v2, 0x4

    .line 24
    .line 25
    aput v3, v0, v2

    .line 26
    .line 27
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 28
    const/4 v2, 0x5

    .line 29
    .line 30
    aput p0, v0, v2

    .line 31
    const/4 v2, 0x6

    .line 32
    .line 33
    aput v1, v0, v2

    .line 34
    const/4 v1, 0x7

    .line 35
    .line 36
    aput p0, v0, v1

    .line 37
    return-object v0
.end method

.method public static getRectSidesFromCorners([F)[F
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    aget v4, p0, v0

    .line 9
    sub-float/2addr v3, v4

    .line 10
    float-to-double v3, v3

    .line 11
    .line 12
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    .line 15
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 16
    move-result-wide v3

    .line 17
    const/4 v7, 0x1

    .line 18
    .line 19
    aget v8, p0, v7

    .line 20
    const/4 v9, 0x3

    .line 21
    .line 22
    aget v10, p0, v9

    .line 23
    sub-float/2addr v8, v10

    .line 24
    float-to-double v10, v8

    .line 25
    .line 26
    .line 27
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 28
    move-result-wide v10

    .line 29
    add-double/2addr v3, v10

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    move-result-wide v3

    .line 34
    double-to-float v3, v3

    .line 35
    .line 36
    aput v3, v1, v2

    .line 37
    .line 38
    aget v0, p0, v0

    .line 39
    const/4 v2, 0x4

    .line 40
    .line 41
    aget v2, p0, v2

    .line 42
    sub-float/2addr v0, v2

    .line 43
    float-to-double v2, v0

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 47
    move-result-wide v2

    .line 48
    .line 49
    aget v0, p0, v9

    .line 50
    const/4 v4, 0x5

    .line 51
    .line 52
    aget p0, p0, v4

    .line 53
    sub-float/2addr v0, p0

    .line 54
    float-to-double v8, v0

    .line 55
    .line 56
    .line 57
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 58
    move-result-wide v4

    .line 59
    add-double/2addr v2, v4

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 63
    move-result-wide v2

    .line 64
    double-to-float p0, v2

    .line 65
    .line 66
    aput p0, v1, v7

    .line 67
    return-object v1
.end method

.method public static trapToRect([F)Landroid/graphics/RectF;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/RectF;

    .line 3
    .line 4
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 5
    .line 6
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    array-length v2, p0

    .line 12
    .line 13
    if-ge v1, v2, :cond_4

    .line 14
    .line 15
    add-int/lit8 v2, v1, -0x1

    .line 16
    .line 17
    aget v2, p0, v2

    .line 18
    .line 19
    aget v3, p0, v1

    .line 20
    .line 21
    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 22
    .line 23
    cmpg-float v5, v2, v4

    .line 24
    .line 25
    if-gez v5, :cond_0

    .line 26
    move v4, v2

    .line 27
    .line 28
    :cond_0
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 29
    .line 30
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 31
    .line 32
    cmpg-float v5, v3, v4

    .line 33
    .line 34
    if-gez v5, :cond_1

    .line 35
    move v4, v3

    .line 36
    .line 37
    :cond_1
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 40
    .line 41
    cmpl-float v5, v2, v4

    .line 42
    .line 43
    if-lez v5, :cond_2

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v4

    .line 46
    .line 47
    :goto_1
    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 48
    .line 49
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    cmpl-float v4, v3, v2

    .line 52
    .line 53
    if-lez v4, :cond_3

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v3, v2

    .line 56
    .line 57
    :goto_2
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 58
    .line 59
    add-int/lit8 v1, v1, 0x2

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->sort()V

    .line 64
    return-object v0
.end method
