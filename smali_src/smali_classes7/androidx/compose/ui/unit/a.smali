.class public final synthetic Landroidx/compose/ui/unit/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/compose/ui/unit/Density;J)I
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/unit/Density;->p0(J)F

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lg8/a;->c(F)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static b(Landroidx/compose/ui/unit/Density;F)I
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    const p0, 0x7fffffff

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p0}, Lg8/a;->c(F)I

    .line 18
    move-result p0

    .line 19
    :goto_0
    return p0
.end method

.method public static c(Landroidx/compose/ui/unit/Density;J)F
    .locals 4
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->E0()F

    .line 24
    move-result p0

    .line 25
    mul-float/2addr p1, p0

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string p1, "Only Sp can convert to Px"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
.end method

.method public static d(Landroidx/compose/ui/unit/Density;F)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 4
    move-result p0

    .line 5
    div-float/2addr p1, p0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static e(Landroidx/compose/ui/unit/Density;I)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 5
    move-result p0

    .line 6
    div-float/2addr p1, p0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static f(Landroidx/compose/ui/unit/Density;J)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->P(F)F

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->P(F)F

    .line 26
    move-result p0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/DpKt;->b(FF)J

    .line 30
    move-result-wide p0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/unit/DpSize$Companion;->a()J

    .line 37
    move-result-wide p0

    .line 38
    :goto_0
    return-wide p0
.end method

.method public static g(Landroidx/compose/ui/unit/Density;J)F
    .locals 4
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->E0()F

    .line 24
    move-result p2

    .line 25
    mul-float/2addr p1, p2

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 29
    move-result p0

    .line 30
    mul-float/2addr p1, p0

    .line 31
    return p1

    .line 32
    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string p1, "Only Sp can convert to Px"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method

.method public static h(Landroidx/compose/ui/unit/Density;F)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 4
    move-result p0

    .line 5
    mul-float/2addr p1, p0

    .line 6
    return p1
.end method

.method public static i(Landroidx/compose/ui/unit/Density;J)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/unit/DpSize$Companion;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->h(J)F

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpSize;->g(J)F

    .line 22
    move-result p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 26
    move-result p0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 30
    move-result-wide p0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Size$Companion;->a()J

    .line 37
    move-result-wide p0

    .line 38
    :goto_0
    return-wide p0
.end method
