.class public final Landroidx/compose/ui/unit/IntOffsetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntOffset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,179:1\n48#2:180\n*S KotlinDebug\n*F\n+ 1 IntOffset.kt\nandroidx/compose/ui/unit/IntOffsetKt\n*L\n39#1:180\n*E\n"
.end annotation


# direct methods
.method public static final a(II)J
    .locals 4
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    int-to-long v0, p0

    .line 2
    .line 3
    const/16 p0, 0x20

    .line 4
    shl-long/2addr v0, p0

    .line 5
    int-to-long p0, p1

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v2, 0xffffffffL

    .line 11
    and-long/2addr p0, v2

    .line 12
    or-long/2addr p0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->e(J)J

    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method public static final b(JJ)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    sub-float/2addr v0, v1

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 14
    move-result p0

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    sub-float/2addr p0, p1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 24
    move-result-wide p0

    .line 25
    return-wide p0
.end method

.method public static final c(JJ)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    add-float/2addr v0, v1

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 14
    move-result p0

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 18
    move-result p1

    .line 19
    int-to-float p1, p1

    .line 20
    add-float/2addr p0, p1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 24
    move-result-wide p0

    .line 25
    return-wide p0
.end method
