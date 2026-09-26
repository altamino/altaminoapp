.class Landroidx/core/view/animation/PathInterpolatorApi14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private final mX:[F

.field private final mY:[F


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gtz v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v2, p1, v1

    .line 11
    .line 12
    if-ltz v2, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_1
    iget-object v1, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 16
    array-length v1, v1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    :goto_0
    sub-int v4, v1, v3

    .line 22
    .line 23
    if-le v4, v2, :cond_3

    .line 24
    .line 25
    add-int v4, v3, v1

    .line 26
    .line 27
    div-int/lit8 v4, v4, 0x2

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 30
    .line 31
    aget v5, v5, v4

    .line 32
    .line 33
    cmpg-float v5, p1, v5

    .line 34
    .line 35
    if-gez v5, :cond_2

    .line 36
    move v1, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v3, v4

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_3
    iget-object v2, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mX:[F

    .line 42
    .line 43
    aget v4, v2, v1

    .line 44
    .line 45
    aget v2, v2, v3

    .line 46
    sub-float/2addr v4, v2

    .line 47
    .line 48
    cmpl-float v0, v4, v0

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    .line 53
    .line 54
    aget p1, p1, v3

    .line 55
    return p1

    .line 56
    :cond_4
    sub-float/2addr p1, v2

    .line 57
    div-float/2addr p1, v4

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/core/view/animation/PathInterpolatorApi14;->mY:[F

    .line 60
    .line 61
    aget v2, v0, v3

    .line 62
    .line 63
    aget v0, v0, v1

    .line 64
    sub-float/2addr v0, v2

    .line 65
    mul-float/2addr p1, v0

    .line 66
    add-float/2addr v2, p1

    .line 67
    return v2
.end method
