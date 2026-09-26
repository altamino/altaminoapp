.class public Landroidx/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    array-length v2, v0

    .line 4
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x3

    .line 5
    add-int/2addr p1, p2

    .line 6
    .line 7
    aget p1, v0, p1

    .line 8
    return p1
.end method

.method public getArray()[F
    .locals 1

    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroidx/renderscript/Matrix3f;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/renderscript/Matrix3f;->getArray()[F

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    aput v2, v0, v1

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    aput v3, v0, v1

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    aput v3, v0, v1

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    aput v3, v0, v1

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    aput v2, v0, v1

    .line 21
    const/4 v1, 0x5

    .line 22
    .line 23
    aput v3, v0, v1

    .line 24
    const/4 v1, 0x6

    .line 25
    .line 26
    aput v3, v0, v1

    .line 27
    const/4 v1, 0x7

    .line 28
    .line 29
    aput v3, v0, v1

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    aput v2, v0, v1

    .line 34
    return-void
.end method

.method public loadMultiply(Landroidx/renderscript/Matrix3f;Landroidx/renderscript/Matrix3f;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x3

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v6, v0

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    :goto_1
    const/4 v7, 0x2

    .line 11
    const/4 v8, 0x1

    .line 12
    .line 13
    if-ge v6, v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v1, v6}, Landroidx/renderscript/Matrix3f;->get(II)F

    .line 17
    move-result v9

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v6, v0}, Landroidx/renderscript/Matrix3f;->get(II)F

    .line 21
    move-result v10

    .line 22
    mul-float/2addr v10, v9

    .line 23
    add-float/2addr v3, v10

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v6, v8}, Landroidx/renderscript/Matrix3f;->get(II)F

    .line 27
    move-result v8

    .line 28
    mul-float/2addr v8, v9

    .line 29
    add-float/2addr v4, v8

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v6, v7}, Landroidx/renderscript/Matrix3f;->get(II)F

    .line 33
    move-result v7

    .line 34
    mul-float/2addr v7, v9

    .line 35
    add-float/2addr v5, v7

    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroidx/renderscript/Matrix3f;->set(IIF)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v8, v4}, Landroidx/renderscript/Matrix3f;->set(IIF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v7, v5}, Landroidx/renderscript/Matrix3f;->set(IIF)V

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 4

    .line 13
    invoke-virtual {p0}, Landroidx/renderscript/Matrix3f;->loadIdentity()V

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    .line 16
    aput p1, v1, v2

    const/4 v2, 0x1

    neg-float v3, v0

    .line 17
    aput v3, v1, v2

    const/4 v2, 0x3

    .line 18
    aput v0, v1, v2

    const/4 v0, 0x4

    .line 19
    aput p1, v1, v0

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 9

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float/2addr v1, v2

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    div-float v1, v2, v1

    mul-float/2addr p2, v1

    mul-float/2addr p3, v1

    mul-float/2addr p4, v1

    :cond_0
    sub-float/2addr v2, p1

    mul-float v1, p2, p3

    mul-float v3, p3, p4

    mul-float v4, p4, p2

    mul-float v5, p2, v0

    mul-float v6, p3, v0

    mul-float/2addr v0, p4

    iget-object v7, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    mul-float/2addr p2, p2

    mul-float/2addr p2, v2

    add-float/2addr p2, p1

    const/4 v8, 0x0

    .line 4
    aput p2, v7, v8

    mul-float/2addr v1, v2

    sub-float p2, v1, v0

    const/4 v8, 0x3

    .line 5
    aput p2, v7, v8

    mul-float/2addr v4, v2

    add-float p2, v4, v6

    const/4 v8, 0x6

    .line 6
    aput p2, v7, v8

    const/4 p2, 0x1

    add-float/2addr v1, v0

    .line 7
    aput v1, v7, p2

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, p1

    const/4 p2, 0x4

    .line 8
    aput p3, v7, p2

    mul-float/2addr v3, v2

    sub-float p2, v3, v5

    const/4 p3, 0x7

    .line 9
    aput p2, v7, p3

    const/4 p2, 0x2

    sub-float/2addr v4, v6

    .line 10
    aput v4, v7, p2

    const/4 p2, 0x5

    add-float/2addr v3, v5

    .line 11
    aput v3, v7, p2

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, p1

    const/16 p1, 0x8

    .line 12
    aput p4, v7, p1

    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    .line 2
    aput p1, v0, v1

    const/4 p1, 0x4

    .line 3
    aput p2, v0, p1

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroidx/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    const/4 p1, 0x4

    .line 6
    aput p2, v0, p1

    const/16 p1, 0x8

    .line 7
    aput p3, v0, p1

    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Matrix3f;->loadIdentity()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    aput p1, v0, v1

    .line 9
    const/4 p1, 0x7

    .line 10
    .line 11
    aput p2, v0, p1

    .line 12
    return-void
.end method

.method public multiply(Landroidx/renderscript/Matrix3f;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix3f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Landroidx/renderscript/Matrix3f;->loadMultiply(Landroidx/renderscript/Matrix3f;Landroidx/renderscript/Matrix3f;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix3f;->load(Landroidx/renderscript/Matrix3f;)V

    .line 12
    return-void
.end method

.method public rotate(F)V
    .locals 1

    .line 4
    new-instance v0, Landroidx/renderscript/Matrix3f;

    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Landroidx/renderscript/Matrix3f;->loadRotate(F)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix3f;->multiply(Landroidx/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/renderscript/Matrix3f;

    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/renderscript/Matrix3f;->loadRotate(FFFF)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix3f;->multiply(Landroidx/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FF)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/renderscript/Matrix3f;

    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/Matrix3f;->loadScale(FF)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix3f;->multiply(Landroidx/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 4
    new-instance v0, Landroidx/renderscript/Matrix3f;

    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroidx/renderscript/Matrix3f;->loadScale(FFF)V

    .line 6
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix3f;->multiply(Landroidx/renderscript/Matrix3f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x3

    .line 5
    add-int/2addr p1, p2

    .line 6
    .line 7
    aput p3, v0, p1

    .line 8
    return-void
.end method

.method public translate(FF)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix3f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix3f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/Matrix3f;->loadTranslate(FF)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix3f;->multiply(Landroidx/renderscript/Matrix3f;)V

    .line 12
    return-void
.end method

.method public transpose()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    add-int/lit8 v1, v0, 0x1

    .line 7
    move v2, v1

    .line 8
    :goto_1
    const/4 v3, 0x3

    .line 9
    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/renderscript/Matrix3f;->mMat:[F

    .line 13
    .line 14
    mul-int/lit8 v4, v0, 0x3

    .line 15
    add-int/2addr v4, v2

    .line 16
    .line 17
    aget v5, v3, v4

    .line 18
    .line 19
    mul-int/lit8 v6, v2, 0x3

    .line 20
    add-int/2addr v6, v0

    .line 21
    .line 22
    aget v7, v3, v6

    .line 23
    .line 24
    aput v7, v3, v4

    .line 25
    .line 26
    aput v5, v3, v6

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method
