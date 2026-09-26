.class public final Landroidx/compose/animation/core/CubicBezierEasing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 6
    .line 7
    iput p2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    .line 8
    .line 9
    iput p3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 10
    .line 11
    iput p4, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 12
    return-void
.end method

.method private final b(FFF)F
    .locals 2

    .line 1
    const/4 v0, 0x3

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    mul-float/2addr p1, v1

    mul-float/2addr p1, v1

    mul-float/2addr p1, p3

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p3

    mul-float/2addr v0, p3

    add-float/2addr p1, v0

    mul-float p2, p3, p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public a(F)F
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v1, p1, v0

    .line 4
    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpg-float v2, p1, v1

    .line 10
    .line 11
    if-gez v2, :cond_2

    .line 12
    .line 13
    :goto_0
    add-float v2, v0, v1

    .line 14
    const/4 v3, 0x2

    .line 15
    int-to-float v3, v3

    .line 16
    div-float/2addr v2, v3

    .line 17
    .line 18
    iget v3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 19
    .line 20
    iget v4, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/animation/core/CubicBezierEasing;->b(FFF)F

    .line 24
    move-result v3

    .line 25
    .line 26
    sub-float v4, p1, v3

    .line 27
    .line 28
    .line 29
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 30
    move-result v4

    .line 31
    .line 32
    .line 33
    const v5, 0x3a83126f    # 0.001f

    .line 34
    .line 35
    cmpg-float v4, v4, v5

    .line 36
    .line 37
    if-gez v4, :cond_0

    .line 38
    .line 39
    iget p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    .line 40
    .line 41
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, v0, v2}, Landroidx/compose/animation/core/CubicBezierEasing;->b(FFF)F

    .line 45
    move-result p1

    .line 46
    return p1

    .line 47
    .line 48
    :cond_0
    cmpg-float v3, v3, p1

    .line 49
    .line 50
    if-gez v3, :cond_1

    .line 51
    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 9
    .line 10
    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 11
    .line 12
    cmpg-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    .line 17
    .line 18
    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    .line 19
    .line 20
    cmpg-float v0, v0, v1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 25
    .line 26
    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 27
    .line 28
    cmpg-float v0, v0, v1

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 33
    .line 34
    iget p1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 35
    .line 36
    cmpg-float p1, v0, p1

    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    const/4 p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method
