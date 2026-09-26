.class public Landroidx/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 2
    invoke-virtual {p0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    array-length v2, v0

    .line 4
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private computeCofactor(II)F
    .locals 15

    .line 1
    .line 2
    add-int/lit8 v0, p1, 0x1

    .line 3
    .line 4
    rem-int/lit8 v0, v0, 0x4

    .line 5
    .line 6
    add-int/lit8 v1, p1, 0x2

    .line 7
    .line 8
    rem-int/lit8 v1, v1, 0x4

    .line 9
    .line 10
    add-int/lit8 v2, p1, 0x3

    .line 11
    .line 12
    rem-int/lit8 v2, v2, 0x4

    .line 13
    .line 14
    add-int/lit8 v3, p2, 0x1

    .line 15
    .line 16
    rem-int/lit8 v3, v3, 0x4

    .line 17
    .line 18
    add-int/lit8 v4, p2, 0x2

    .line 19
    .line 20
    rem-int/lit8 v4, v4, 0x4

    .line 21
    .line 22
    add-int/lit8 v5, p2, 0x3

    .line 23
    .line 24
    rem-int/lit8 v5, v5, 0x4

    .line 25
    move-object v6, p0

    .line 26
    .line 27
    iget-object v7, v6, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 28
    .line 29
    mul-int/lit8 v3, v3, 0x4

    .line 30
    .line 31
    add-int v8, v0, v3

    .line 32
    .line 33
    aget v8, v7, v8

    .line 34
    .line 35
    mul-int/lit8 v4, v4, 0x4

    .line 36
    .line 37
    add-int v9, v1, v4

    .line 38
    .line 39
    aget v9, v7, v9

    .line 40
    .line 41
    mul-int/lit8 v5, v5, 0x4

    .line 42
    .line 43
    add-int v10, v2, v5

    .line 44
    .line 45
    aget v10, v7, v10

    .line 46
    .line 47
    mul-float v11, v9, v10

    .line 48
    .line 49
    add-int v12, v1, v5

    .line 50
    .line 51
    aget v12, v7, v12

    .line 52
    .line 53
    add-int v13, v2, v4

    .line 54
    .line 55
    aget v13, v7, v13

    .line 56
    .line 57
    mul-float v14, v12, v13

    .line 58
    sub-float/2addr v11, v14

    .line 59
    mul-float/2addr v8, v11

    .line 60
    add-int/2addr v4, v0

    .line 61
    .line 62
    aget v4, v7, v4

    .line 63
    add-int/2addr v1, v3

    .line 64
    .line 65
    aget v1, v7, v1

    .line 66
    mul-float/2addr v10, v1

    .line 67
    add-int/2addr v2, v3

    .line 68
    .line 69
    aget v2, v7, v2

    .line 70
    mul-float/2addr v12, v2

    .line 71
    sub-float/2addr v10, v12

    .line 72
    mul-float/2addr v4, v10

    .line 73
    sub-float/2addr v8, v4

    .line 74
    add-int/2addr v0, v5

    .line 75
    .line 76
    aget v0, v7, v0

    .line 77
    mul-float/2addr v1, v13

    .line 78
    mul-float/2addr v9, v2

    .line 79
    sub-float/2addr v1, v9

    .line 80
    mul-float/2addr v0, v1

    .line 81
    add-float/2addr v8, v0

    .line 82
    .line 83
    add-int v0, p1, p2

    .line 84
    .line 85
    and-int/lit8 v0, v0, 0x1

    .line 86
    .line 87
    if-eqz v0, :cond_0

    .line 88
    neg-float v8, v8

    .line 89
    :cond_0
    return v8
.end method


# virtual methods
.method public get(II)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x4

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

    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .locals 9

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x4

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    move v4, v1

    .line 12
    .line 13
    :goto_1
    if-ge v4, v3, :cond_0

    .line 14
    .line 15
    iget-object v5, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 16
    .line 17
    mul-int/lit8 v6, v2, 0x4

    .line 18
    add-int/2addr v6, v4

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2, v4}, Landroidx/renderscript/Matrix4f;->computeCofactor(II)F

    .line 22
    move-result v7

    .line 23
    .line 24
    aput v7, v5, v6

    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 33
    .line 34
    aget v4, v2, v1

    .line 35
    .line 36
    iget-object v5, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 37
    .line 38
    aget v6, v5, v1

    .line 39
    mul-float/2addr v4, v6

    .line 40
    .line 41
    aget v3, v2, v3

    .line 42
    const/4 v6, 0x1

    .line 43
    .line 44
    aget v7, v5, v6

    .line 45
    mul-float/2addr v3, v7

    .line 46
    add-float/2addr v4, v3

    .line 47
    .line 48
    const/16 v3, 0x8

    .line 49
    .line 50
    aget v3, v2, v3

    .line 51
    const/4 v7, 0x2

    .line 52
    .line 53
    aget v7, v5, v7

    .line 54
    mul-float/2addr v3, v7

    .line 55
    add-float/2addr v4, v3

    .line 56
    .line 57
    const/16 v3, 0xc

    .line 58
    .line 59
    aget v2, v2, v3

    .line 60
    const/4 v3, 0x3

    .line 61
    .line 62
    aget v3, v5, v3

    .line 63
    mul-float/2addr v2, v3

    .line 64
    add-float/2addr v4, v2

    .line 65
    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 68
    move-result v2

    .line 69
    float-to-double v2, v2

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 75
    .line 76
    cmpg-double v2, v2, v7

    .line 77
    .line 78
    if-gez v2, :cond_2

    .line 79
    return v1

    .line 80
    .line 81
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 82
    div-float/2addr v2, v4

    .line 83
    .line 84
    :goto_2
    const/16 v3, 0x10

    .line 85
    .line 86
    if-ge v1, v3, :cond_3

    .line 87
    .line 88
    iget-object v3, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 89
    .line 90
    iget-object v4, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 91
    .line 92
    aget v4, v4, v1

    .line 93
    mul-float/2addr v4, v2

    .line 94
    .line 95
    aput v4, v3, v1

    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    return v6
.end method

.method public inverseTranspose()Z
    .locals 8

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/4 v3, 0x4

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    move v4, v1

    .line 12
    .line 13
    :goto_1
    if-ge v4, v3, :cond_0

    .line 14
    .line 15
    iget-object v5, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 16
    .line 17
    mul-int/lit8 v6, v4, 0x4

    .line 18
    add-int/2addr v6, v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2, v4}, Landroidx/renderscript/Matrix4f;->computeCofactor(II)F

    .line 22
    move-result v7

    .line 23
    .line 24
    aput v7, v5, v6

    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v2, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 33
    .line 34
    aget v4, v2, v1

    .line 35
    .line 36
    iget-object v5, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 37
    .line 38
    aget v6, v5, v1

    .line 39
    mul-float/2addr v4, v6

    .line 40
    .line 41
    aget v6, v2, v3

    .line 42
    .line 43
    aget v3, v5, v3

    .line 44
    mul-float/2addr v6, v3

    .line 45
    add-float/2addr v4, v6

    .line 46
    .line 47
    const/16 v3, 0x8

    .line 48
    .line 49
    aget v6, v2, v3

    .line 50
    .line 51
    aget v3, v5, v3

    .line 52
    mul-float/2addr v6, v3

    .line 53
    add-float/2addr v4, v6

    .line 54
    .line 55
    const/16 v3, 0xc

    .line 56
    .line 57
    aget v2, v2, v3

    .line 58
    .line 59
    aget v3, v5, v3

    .line 60
    mul-float/2addr v2, v3

    .line 61
    add-float/2addr v4, v2

    .line 62
    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 65
    move-result v2

    .line 66
    float-to-double v2, v2

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 72
    .line 73
    cmpg-double v2, v2, v5

    .line 74
    .line 75
    if-gez v2, :cond_2

    .line 76
    return v1

    .line 77
    .line 78
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    div-float/2addr v2, v4

    .line 80
    .line 81
    :goto_2
    const/16 v3, 0x10

    .line 82
    .line 83
    if-ge v1, v3, :cond_3

    .line 84
    .line 85
    iget-object v3, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 86
    .line 87
    iget-object v4, v0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 88
    .line 89
    aget v4, v4, v1

    .line 90
    mul-float/2addr v4, v2

    .line 91
    .line 92
    aput v4, v3, v1

    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const/4 v0, 0x1

    .line 97
    return v0
.end method

.method public load(Landroidx/renderscript/Matrix3f;)V
    .locals 5

    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 2
    iget-object p1, p1, Landroidx/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 3
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 4
    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 6
    aget v1, p1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 7
    aget v1, p1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 8
    aget v1, p1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    const/4 v1, 0x7

    .line 9
    aput v2, v0, v1

    .line 10
    aget v3, p1, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    const/16 v3, 0x9

    .line 11
    aget v1, p1, v1

    aput v1, v0, v3

    const/16 v1, 0xa

    .line 12
    aget p1, p1, v4

    aput p1, v0, v1

    const/16 p1, 0xb

    .line 13
    aput v2, v0, p1

    const/16 p1, 0xc

    .line 14
    aput v2, v0, p1

    const/16 p1, 0xd

    .line 15
    aput v2, v0, p1

    const/16 p1, 0xe

    .line 16
    aput v2, v0, p1

    const/16 p1, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    aput v1, v0, p1

    return-void
.end method

.method public load(Landroidx/renderscript/Matrix4f;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 6
    .line 7
    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    mul-float/2addr v1, p5

    .line 9
    .line 10
    sub-float v2, p2, p1

    .line 11
    .line 12
    div-float v3, v1, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    .line 15
    aput v3, v0, v4

    .line 16
    .line 17
    sub-float v3, p4, p3

    .line 18
    div-float/2addr v1, v3

    .line 19
    const/4 v4, 0x5

    .line 20
    .line 21
    aput v1, v0, v4

    .line 22
    add-float/2addr p2, p1

    .line 23
    div-float/2addr p2, v2

    .line 24
    .line 25
    const/16 p1, 0x8

    .line 26
    .line 27
    aput p2, v0, p1

    .line 28
    add-float/2addr p4, p3

    .line 29
    div-float/2addr p4, v3

    .line 30
    .line 31
    const/16 p1, 0x9

    .line 32
    .line 33
    aput p4, v0, p1

    .line 34
    .line 35
    add-float p1, p6, p5

    .line 36
    neg-float p1, p1

    .line 37
    .line 38
    sub-float p2, p6, p5

    .line 39
    div-float/2addr p1, p2

    .line 40
    .line 41
    const/16 p3, 0xa

    .line 42
    .line 43
    aput p1, v0, p3

    .line 44
    .line 45
    const/16 p1, 0xb

    .line 46
    .line 47
    const/high16 p3, -0x40800000    # -1.0f

    .line 48
    .line 49
    aput p3, v0, p1

    .line 50
    .line 51
    const/high16 p1, -0x40000000    # -2.0f

    .line 52
    mul-float/2addr p6, p1

    .line 53
    mul-float/2addr p6, p5

    .line 54
    div-float/2addr p6, p2

    .line 55
    .line 56
    const/16 p1, 0xe

    .line 57
    .line 58
    aput p6, v0, p1

    .line 59
    .line 60
    const/16 p1, 0xf

    .line 61
    const/4 p2, 0x0

    .line 62
    .line 63
    aput p2, v0, p1

    .line 64
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

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
    aput v3, v0, v1

    .line 21
    const/4 v1, 0x5

    .line 22
    .line 23
    aput v2, v0, v1

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
    aput v3, v0, v1

    .line 34
    .line 35
    const/16 v1, 0x9

    .line 36
    .line 37
    aput v3, v0, v1

    .line 38
    .line 39
    const/16 v1, 0xa

    .line 40
    .line 41
    aput v2, v0, v1

    .line 42
    .line 43
    const/16 v1, 0xb

    .line 44
    .line 45
    aput v3, v0, v1

    .line 46
    .line 47
    const/16 v1, 0xc

    .line 48
    .line 49
    aput v3, v0, v1

    .line 50
    .line 51
    const/16 v1, 0xd

    .line 52
    .line 53
    aput v3, v0, v1

    .line 54
    .line 55
    const/16 v1, 0xe

    .line 56
    .line 57
    aput v3, v0, v1

    .line 58
    .line 59
    const/16 v1, 0xf

    .line 60
    .line 61
    aput v2, v0, v1

    .line 62
    return-void
.end method

.method public loadMultiply(Landroidx/renderscript/Matrix4f;Landroidx/renderscript/Matrix4f;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v7, v0

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    move v6, v5

    .line 11
    :goto_1
    const/4 v8, 0x3

    .line 12
    const/4 v9, 0x2

    .line 13
    const/4 v10, 0x1

    .line 14
    .line 15
    if-ge v7, v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1, v7}, Landroidx/renderscript/Matrix4f;->get(II)F

    .line 19
    move-result v11

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v7, v0}, Landroidx/renderscript/Matrix4f;->get(II)F

    .line 23
    move-result v12

    .line 24
    mul-float/2addr v12, v11

    .line 25
    add-float/2addr v3, v12

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v7, v10}, Landroidx/renderscript/Matrix4f;->get(II)F

    .line 29
    move-result v10

    .line 30
    mul-float/2addr v10, v11

    .line 31
    add-float/2addr v4, v10

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v7, v9}, Landroidx/renderscript/Matrix4f;->get(II)F

    .line 35
    move-result v9

    .line 36
    mul-float/2addr v9, v11

    .line 37
    add-float/2addr v5, v9

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v7, v8}, Landroidx/renderscript/Matrix4f;->get(II)F

    .line 41
    move-result v8

    .line 42
    mul-float/2addr v8, v11

    .line 43
    add-float/2addr v6, v8

    .line 44
    .line 45
    add-int/lit8 v7, v7, 0x1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1, v10, v4}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v9, v5}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1, v8, v6}, Landroidx/renderscript/Matrix4f;->set(IIF)V

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 6
    .line 7
    sub-float v1, p2, p1

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float v3, v2, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    aput v3, v0, v4

    .line 15
    .line 16
    sub-float v3, p4, p3

    .line 17
    div-float/2addr v2, v3

    .line 18
    const/4 v4, 0x5

    .line 19
    .line 20
    aput v2, v0, v4

    .line 21
    .line 22
    sub-float v2, p6, p5

    .line 23
    .line 24
    const/high16 v4, -0x40000000    # -2.0f

    .line 25
    div-float/2addr v4, v2

    .line 26
    .line 27
    const/16 v5, 0xa

    .line 28
    .line 29
    aput v4, v0, v5

    .line 30
    add-float/2addr p2, p1

    .line 31
    neg-float p1, p2

    .line 32
    div-float/2addr p1, v1

    .line 33
    .line 34
    const/16 p2, 0xc

    .line 35
    .line 36
    aput p1, v0, p2

    .line 37
    add-float/2addr p4, p3

    .line 38
    neg-float p1, p4

    .line 39
    div-float/2addr p1, v3

    .line 40
    .line 41
    const/16 p2, 0xd

    .line 42
    .line 43
    aput p1, v0, p2

    .line 44
    add-float/2addr p6, p5

    .line 45
    neg-float p1, p6

    .line 46
    div-float/2addr p1, v2

    .line 47
    .line 48
    const/16 p2, 0xe

    .line 49
    .line 50
    aput p1, v0, p2

    .line 51
    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7

    .line 1
    const/4 v1, 0x0

    .line 2
    int-to-float v2, p1

    .line 3
    int-to-float v3, p2

    .line 4
    const/4 v4, 0x0

    .line 5
    .line 6
    const/high16 v5, -0x40800000    # -1.0f

    .line 7
    .line 8
    const/high16 v6, 0x3f800000    # 1.0f

    .line 9
    move-object v0, p0

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 13
    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 7

    .line 1
    float-to-double v0, p1

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 7
    mul-double/2addr v0, v2

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 13
    div-double/2addr v0, v2

    .line 14
    double-to-float p1, v0

    .line 15
    float-to-double v0, p1

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    .line 19
    move-result-wide v0

    .line 20
    double-to-float p1, v0

    .line 21
    .line 22
    mul-float v4, p3, p1

    .line 23
    neg-float v3, v4

    .line 24
    .line 25
    mul-float v1, v3, p2

    .line 26
    .line 27
    mul-float v2, v4, p2

    .line 28
    move-object v0, p0

    .line 29
    move v5, p3

    .line 30
    move v6, p4

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 34
    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 9

    .line 1
    .line 2
    new-instance v7, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v7}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    .line 7
    new-instance v8, Landroidx/renderscript/Matrix4f;

    .line 8
    .line 9
    .line 10
    invoke-direct {v8}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 11
    .line 12
    if-le p1, p2, :cond_0

    .line 13
    int-to-float p1, p1

    .line 14
    int-to-float p2, p2

    .line 15
    .line 16
    div-float v2, p1, p2

    .line 17
    neg-float v1, v2

    .line 18
    .line 19
    const/high16 v3, -0x40800000    # -1.0f

    .line 20
    .line 21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    .line 23
    const/high16 v5, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const/high16 v6, 0x42c80000    # 100.0f

    .line 26
    move-object v0, v7

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    int-to-float p2, p2

    .line 32
    int-to-float p1, p1

    .line 33
    .line 34
    div-float v4, p2, p1

    .line 35
    .line 36
    const/high16 v1, -0x40800000    # -1.0f

    .line 37
    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    neg-float v3, v4

    .line 40
    .line 41
    const/high16 v5, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const/high16 v6, 0x42c80000    # 100.0f

    .line 44
    move-object v0, v7

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 48
    .line 49
    :goto_0
    const/high16 p1, 0x43340000    # 180.0f

    .line 50
    const/4 p2, 0x0

    .line 51
    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, p1, p2, v0, p2}, Landroidx/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v7, v8}, Landroidx/renderscript/Matrix4f;->loadMultiply(Landroidx/renderscript/Matrix4f;Landroidx/renderscript/Matrix4f;)V

    .line 59
    .line 60
    const/high16 p1, -0x40000000    # -2.0f

    .line 61
    .line 62
    const/high16 v1, 0x40000000    # 2.0f

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, p1, v1, v0}, Landroidx/renderscript/Matrix4f;->loadScale(FFF)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v7, v8}, Landroidx/renderscript/Matrix4f;->loadMultiply(Landroidx/renderscript/Matrix4f;Landroidx/renderscript/Matrix4f;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, p2, p2, v1}, Landroidx/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v7, v8}, Landroidx/renderscript/Matrix4f;->loadMultiply(Landroidx/renderscript/Matrix4f;Landroidx/renderscript/Matrix4f;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v7}, Landroidx/renderscript/Matrix4f;->load(Landroidx/renderscript/Matrix4f;)V

    .line 78
    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    aput v2, v0, v1

    .line 7
    const/4 v1, 0x7

    .line 8
    .line 9
    aput v2, v0, v1

    .line 10
    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    aput v2, v0, v1

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    const/16 v1, 0xd

    .line 20
    .line 21
    aput v2, v0, v1

    .line 22
    .line 23
    const/16 v1, 0xe

    .line 24
    .line 25
    aput v2, v0, v1

    .line 26
    .line 27
    const/16 v1, 0xf

    .line 28
    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 30
    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    .line 34
    const v0, 0x3c8efa35

    .line 35
    mul-float/2addr p1, v0

    .line 36
    float-to-double v0, p1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 40
    move-result-wide v3

    .line 41
    double-to-float p1, v3

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    .line 48
    mul-float v1, p2, p2

    .line 49
    .line 50
    mul-float v3, p3, p3

    .line 51
    add-float/2addr v1, v3

    .line 52
    .line 53
    mul-float v3, p4, p4

    .line 54
    add-float/2addr v1, v3

    .line 55
    float-to-double v3, v1

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 59
    move-result-wide v3

    .line 60
    double-to-float v1, v3

    .line 61
    .line 62
    cmpl-float v3, v1, v2

    .line 63
    .line 64
    if-nez v3, :cond_0

    .line 65
    .line 66
    div-float v1, v2, v1

    .line 67
    mul-float/2addr p2, v1

    .line 68
    mul-float/2addr p3, v1

    .line 69
    mul-float/2addr p4, v1

    .line 70
    :cond_0
    sub-float/2addr v2, p1

    .line 71
    .line 72
    mul-float v1, p2, p3

    .line 73
    .line 74
    mul-float v3, p3, p4

    .line 75
    .line 76
    mul-float v4, p4, p2

    .line 77
    .line 78
    mul-float v5, p2, v0

    .line 79
    .line 80
    mul-float v6, p3, v0

    .line 81
    mul-float/2addr v0, p4

    .line 82
    .line 83
    iget-object v7, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 84
    mul-float/2addr p2, p2

    .line 85
    mul-float/2addr p2, v2

    .line 86
    add-float/2addr p2, p1

    .line 87
    const/4 v8, 0x0

    .line 88
    .line 89
    aput p2, v7, v8

    .line 90
    mul-float/2addr v1, v2

    .line 91
    .line 92
    sub-float p2, v1, v0

    .line 93
    const/4 v8, 0x4

    .line 94
    .line 95
    aput p2, v7, v8

    .line 96
    mul-float/2addr v4, v2

    .line 97
    .line 98
    add-float p2, v4, v6

    .line 99
    .line 100
    const/16 v8, 0x8

    .line 101
    .line 102
    aput p2, v7, v8

    .line 103
    const/4 p2, 0x1

    .line 104
    add-float/2addr v1, v0

    .line 105
    .line 106
    aput v1, v7, p2

    .line 107
    mul-float/2addr p3, p3

    .line 108
    mul-float/2addr p3, v2

    .line 109
    add-float/2addr p3, p1

    .line 110
    const/4 p2, 0x5

    .line 111
    .line 112
    aput p3, v7, p2

    .line 113
    mul-float/2addr v3, v2

    .line 114
    .line 115
    sub-float p2, v3, v5

    .line 116
    .line 117
    const/16 p3, 0x9

    .line 118
    .line 119
    aput p2, v7, p3

    .line 120
    const/4 p2, 0x2

    .line 121
    sub-float/2addr v4, v6

    .line 122
    .line 123
    aput v4, v7, p2

    .line 124
    const/4 p2, 0x6

    .line 125
    add-float/2addr v3, v5

    .line 126
    .line 127
    aput v3, v7, p2

    .line 128
    mul-float/2addr p4, p4

    .line 129
    mul-float/2addr p4, v2

    .line 130
    add-float/2addr p4, p1

    .line 131
    .line 132
    const/16 p1, 0xa

    .line 133
    .line 134
    aput p4, v7, p1

    .line 135
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aput p1, v0, v1

    .line 9
    const/4 p1, 0x5

    .line 10
    .line 11
    aput p2, v0, p1

    .line 12
    .line 13
    const/16 p1, 0xa

    .line 14
    .line 15
    aput p3, v0, p1

    .line 16
    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/renderscript/Matrix4f;->loadIdentity()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 6
    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    aput p1, v0, v1

    .line 10
    .line 11
    const/16 p1, 0xd

    .line 12
    .line 13
    aput p2, v0, p1

    .line 14
    .line 15
    const/16 p1, 0xe

    .line 16
    .line 17
    aput p3, v0, p1

    .line 18
    return-void
.end method

.method public multiply(Landroidx/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Landroidx/renderscript/Matrix4f;->loadMultiply(Landroidx/renderscript/Matrix4f;Landroidx/renderscript/Matrix4f;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix4f;->load(Landroidx/renderscript/Matrix4f;)V

    .line 12
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix4f;->multiply(Landroidx/renderscript/Matrix4f;)V

    .line 12
    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/renderscript/Matrix4f;->loadScale(FFF)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix4f;->multiply(Landroidx/renderscript/Matrix4f;)V

    .line 12
    return-void
.end method

.method public set(IIF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x4

    .line 5
    add-int/2addr p1, p2

    .line 6
    .line 7
    aput p3, v0, p1

    .line 8
    return-void
.end method

.method public translate(FFF)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/renderscript/Matrix4f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/renderscript/Matrix4f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Landroidx/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/renderscript/Matrix4f;->multiply(Landroidx/renderscript/Matrix4f;)V

    .line 12
    return-void
.end method

.method public transpose()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

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
    const/4 v3, 0x4

    .line 9
    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/renderscript/Matrix4f;->mMat:[F

    .line 13
    .line 14
    mul-int/lit8 v4, v0, 0x4

    .line 15
    add-int/2addr v4, v2

    .line 16
    .line 17
    aget v5, v3, v4

    .line 18
    .line 19
    mul-int/lit8 v6, v2, 0x4

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
