.class public final Landroidx/compose/ui/unit/IntRectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JJ)Landroidx/compose/ui/unit/IntRect;
    .locals 5
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 18
    move-result v4

    .line 19
    add-int/2addr v3, v4

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 23
    move-result p0

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 27
    move-result p1

    .line 28
    add-int/2addr p0, p1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 32
    return-object v0
.end method
