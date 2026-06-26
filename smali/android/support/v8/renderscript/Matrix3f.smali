.class public Landroid/support/v8/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 33
    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    .line 34
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 45
    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    .line 46
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getArray()[F
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 3

    .line 104
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 85
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 86
    aput v2, v0, v3

    const/4 v3, 0x2

    .line 87
    aput v2, v0, v3

    const/4 v3, 0x3

    .line 89
    aput v2, v0, v3

    const/4 v3, 0x4

    .line 90
    aput v1, v0, v3

    const/4 v3, 0x5

    .line 91
    aput v2, v0, v3

    const/4 v3, 0x6

    .line 93
    aput v2, v0, v3

    const/4 v3, 0x7

    .line 94
    aput v2, v0, v3

    const/16 v2, 0x8

    .line 95
    aput v1, v0, v2

    return-void
.end method

.method public loadMultiply(Landroid/support/v8/renderscript/Matrix3f;Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v3, v2, :cond_0

    .line 216
    invoke-virtual {p2, v1, v3}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v9

    .line 217
    invoke-virtual {p1, v3, v0}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v10

    mul-float v10, v10, v9

    add-float/2addr v4, v10

    .line 218
    invoke-virtual {p1, v3, v8}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v8

    mul-float v8, v8, v9

    add-float/2addr v5, v8

    .line 219
    invoke-virtual {p1, v3, v7}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float v7, v7, v9

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {p0, v1, v0, v4}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    .line 222
    invoke-virtual {p0, v1, v8, v5}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    .line 223
    invoke-virtual {p0, v1, v7, v6}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 4

    .line 153
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 156
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 158
    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    neg-float v2, v0

    const/4 v3, 0x1

    .line 159
    aput v2, v1, v3

    const/4 v2, 0x3

    .line 160
    aput v0, v1, v2

    const/4 v0, 0x4

    .line 161
    aput p1, v1, v0

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 9

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float/2addr v1, v2

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 122
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    div-float v1, v2, v1

    mul-float p2, p2, v1

    mul-float p3, p3, v1

    mul-float p4, p4, v1

    :cond_0
    sub-float/2addr v2, p1

    mul-float v1, p2, p3

    mul-float v3, p3, p4

    mul-float v4, p4, p2

    mul-float v5, p2, v0

    mul-float v6, p3, v0

    mul-float v0, v0, p4

    .line 136
    iget-object v7, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v8, 0x0

    mul-float p2, p2, p2

    mul-float p2, p2, v2

    add-float/2addr p2, p1

    aput p2, v7, v8

    const/4 p2, 0x3

    mul-float v1, v1, v2

    sub-float v8, v1, v0

    .line 137
    aput v8, v7, p2

    const/4 p2, 0x6

    mul-float v4, v4, v2

    add-float v8, v4, v6

    .line 138
    aput v8, v7, p2

    const/4 p2, 0x1

    add-float/2addr v1, v0

    .line 139
    aput v1, v7, p2

    const/4 p2, 0x4

    mul-float p3, p3, p3

    mul-float p3, p3, v2

    add-float/2addr p3, p1

    .line 140
    aput p3, v7, p2

    const/4 p2, 0x7

    mul-float v3, v3, v2

    sub-float p3, v3, v5

    .line 141
    aput p3, v7, p2

    const/4 p2, 0x2

    sub-float/2addr v4, v6

    .line 142
    aput v4, v7, p2

    const/4 p2, 0x5

    add-float/2addr v3, v5

    .line 143
    aput v3, v7, p2

    const/16 p2, 0x8

    mul-float p4, p4, p4

    mul-float p4, p4, v2

    add-float/2addr p4, p1

    .line 144
    aput p4, v7, p2

    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    .line 171
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    .line 172
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x4

    .line 173
    aput p2, v0, p1

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    .line 185
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x4

    .line 186
    aput p2, v0, p1

    const/16 p1, 0x8

    .line 187
    aput p3, v0, p1

    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    .line 199
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 p1, 0x7

    .line 200
    aput p2, v0, p1

    return-void
.end method

.method public multiply(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 1

    .line 233
    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    .line 234
    invoke-virtual {v0, p0, p1}, Landroid/support/v8/renderscript/Matrix3f;->loadMultiply(Landroid/support/v8/renderscript/Matrix3f;Landroid/support/v8/renderscript/Matrix3f;)V

    .line 235
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->load(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(F)V
    .locals 1

    .line 260
    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    .line 261
    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix3f;->loadRotate(F)V

    .line 262
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    .line 248
    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    .line 249
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Matrix3f;->loadRotate(FFFF)V

    .line 250
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FF)V
    .locals 1

    .line 273
    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    .line 274
    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix3f;->loadScale(FF)V

    .line 275
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 287
    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    .line 288
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix3f;->loadScale(FFF)V

    .line 289
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method

.method public translate(FF)V
    .locals 1

    .line 300
    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    .line 301
    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix3f;->loadTranslate(FF)V

    .line 302
    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public transpose()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 311
    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    aget v5, v3, v4

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v0

    .line 312
    aget v7, v3, v6

    aput v7, v3, v4

    .line 313
    aput v5, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
