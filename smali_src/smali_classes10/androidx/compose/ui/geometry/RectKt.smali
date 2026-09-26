.class public final Landroidx/compose/ui/geometry/RectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 10
    move-result p0

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, p0, p1, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 22
    return-object v0
.end method

.method public static final b(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 18
    move-result v4

    .line 19
    add-float/2addr v3, v4

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 23
    move-result p0

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->g(J)F

    .line 27
    move-result p1

    .line 28
    add-float/2addr p0, p1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 32
    return-object v0
.end method
