.class public final Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNestedScrollInteropConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NestedScrollInteropConnection.kt\nandroidx/compose/ui/platform/NestedScrollInteropConnectionKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,237:1\n76#2:238\n36#3:239\n1057#4,6:240\n*S KotlinDebug\n*F\n+ 1 NestedScrollInteropConnection.kt\nandroidx/compose/ui/platform/NestedScrollInteropConnectionKt\n*L\n233#1:238\n234#1:239\n234#1:240,6\n*E\n"
.end annotation


# static fields
.field private static final ScrollingAxesThreshold:F = 0.5f


# direct methods
.method public static final synthetic a(J)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->g(J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic b([IJ)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->i([IJ)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic c(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->j(I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(F)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->k(F)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final e(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    float-to-double v0, p0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 10
    move-result-wide v0

    .line 11
    :goto_0
    double-to-float p0, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    float-to-double v0, p0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 17
    move-result-wide v0

    .line 18
    goto :goto_0

    .line 19
    :goto_1
    return p0
.end method

.method public static final f(F)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->e(F)F

    .line 4
    move-result p0

    .line 5
    float-to-int p0, p0

    .line 6
    .line 7
    mul-int/lit8 p0, p0, -0x1

    .line 8
    return p0
.end method

.method private static final g(J)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result v0

    .line 9
    .line 10
    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 21
    move-result p0

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 25
    move-result p0

    .line 26
    .line 27
    cmpl-float p0, p0, v1

    .line 28
    .line 29
    if-ltz p0, :cond_1

    .line 30
    .line 31
    or-int/lit8 v0, v0, 0x2

    .line 32
    :cond_1
    return v0
.end method

.method private static final h(I)F
    .locals 1

    .line 1
    int-to-float p0, p0

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method private static final i([IJ)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    cmpl-float v0, v0, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    aget v0, p0, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->h(I)F

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v2}, Lj8/m;->i(FF)F

    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    aget v0, p0, v2

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->h(I)F

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v2}, Lj8/m;->d(FF)F

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 43
    move-result v2

    .line 44
    .line 45
    cmpl-float v1, v2, v1

    .line 46
    const/4 v2, 0x1

    .line 47
    .line 48
    if-ltz v1, :cond_1

    .line 49
    .line 50
    aget p0, p0, v2

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->h(I)F

    .line 54
    move-result p0

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 58
    move-result p1

    .line 59
    .line 60
    .line 61
    invoke-static {p0, p1}, Lj8/m;->i(FF)F

    .line 62
    move-result p0

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_1
    aget p0, p0, v2

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Landroidx/compose/ui/platform/NestedScrollInteropConnectionKt;->h(I)F

    .line 69
    move-result p0

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Lj8/m;->d(FF)F

    .line 77
    move-result p0

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 81
    move-result-wide p0

    .line 82
    return-wide p0
.end method

.method private static final j(I)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->a()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->e(II)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    xor-int/lit8 p0, p0, 0x1

    .line 13
    return p0
.end method

.method private static final k(F)F
    .locals 1

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p0, v0

    return p0
.end method
