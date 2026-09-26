.class public Landroidx/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/Matrix2f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

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
    iget-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

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

    iget-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

    return-object v0
.end method

.method public load(Landroidx/renderscript/Matrix2f;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/renderscript/Matrix2f;->getArray()[F

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

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
    iget-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

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
    aput v2, v0, v1

    .line 18
    return-void
.end method

.method public loadMultiply(Landroidx/renderscript/Matrix2f;Landroidx/renderscript/Matrix2f;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v5, v0

    .line 8
    move v4, v3

    .line 9
    :goto_1
    const/4 v6, 0x1

    .line 10
    .line 11
    if-ge v5, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v1, v5}, Landroidx/renderscript/Matrix2f;->get(II)F

    .line 15
    move-result v7

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v5, v0}, Landroidx/renderscript/Matrix2f;->get(II)F

    .line 19
    move-result v8

    .line 20
    mul-float/2addr v8, v7

    .line 21
    add-float/2addr v3, v8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v5, v6}, Landroidx/renderscript/Matrix2f;->get(II)F

    .line 25
    move-result v6

    .line 26
    mul-float/2addr v6, v7

    .line 27
    add-float/2addr v4, v6

    .line 28
    .line 29
    add-int/lit8 v5, v5, 0x1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroidx/renderscript/Matrix2f;->set(IIF)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v6, v4}, Landroidx/renderscript/Matrix2f;->set(IIF)V

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 4

    .line 1
    .line 2
    .line 3
    const v0, 0x3c8efa35

    .line 4
    mul-float/2addr p1, v0

    .line 5
    float-to-double v0, p1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 9
    move-result-wide v2

    .line 10
    double-to-float p1, v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 14
    move-result-wide v0

    .line 15
    double-to-float v0, v0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    aput p1, v1, v2

    .line 21
    const/4 v2, 0x1

    .line 22
    neg-float v3, v0

    .line 23
    .line 24
    aput v3, v1, v2

    .line 25
    const/4 v2, 0x2

    .line 26
    .line 27
    aput v0, v1, v2

    .line 28
    const/4 v0, 0x3

    .line 29
    .line 30
    aput p1, v1, v0

    .line 31
    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Matrix2f;->loadIdentity()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aput p1, v0, v1

    .line 9
    const/4 p1, 0x3

    .line 10
    .line 11
    aput p2, v0, p1

    .line 12
    return-void
.end method

.method public multiply(Landroidx/renderscript/Matrix2f;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix2f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix2f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Landroidx/renderscript/Matrix2f;->loadMultiply(Landroidx/renderscript/Matrix2f;Landroidx/renderscript/Matrix2f;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix2f;->load(Landroidx/renderscript/Matrix2f;)V

    .line 12
    return-void
.end method

.method public rotate(F)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix2f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix2f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/renderscript/Matrix2f;->loadRotate(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix2f;->multiply(Landroidx/renderscript/Matrix2f;)V

    .line 12
    return-void
.end method

.method public scale(FF)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix2f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix2f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Landroidx/renderscript/Matrix2f;->loadScale(FF)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix2f;->multiply(Landroidx/renderscript/Matrix2f;)V

    .line 12
    return-void
.end method

.method public set(IIF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    add-int/2addr p1, p2

    .line 6
    .line 7
    aput p3, v0, p1

    .line 8
    return-void
.end method

.method public transpose()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix2f;->mMat:[F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    aget v2, v0, v1

    .line 6
    const/4 v3, 0x2

    .line 7
    .line 8
    aget v4, v0, v3

    .line 9
    .line 10
    aput v4, v0, v1

    .line 11
    .line 12
    aput v2, v0, v3

    .line 13
    return-void
.end method
