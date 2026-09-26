.class public final Landroidx/compose/ui/text/input/EditingBufferKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JJ)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/TextRange;->p(JJ)Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/TextRange;->d(JJ)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 24
    move-result v0

    .line 25
    move v1, v0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/TextRange;->d(JJ)Z

    .line 30
    move-result p0

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->j(J)I

    .line 36
    move-result p0

    .line 37
    :goto_0
    sub-int/2addr v1, p0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/text/TextRange;->e(JI)Z

    .line 42
    move-result p0

    .line 43
    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 48
    move-result v0

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->j(J)I

    .line 52
    move-result p0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 57
    move-result v1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 62
    move-result p0

    .line 63
    .line 64
    if-le v1, p0, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->j(J)I

    .line 68
    move-result p0

    .line 69
    sub-int/2addr v0, p0

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->j(J)I

    .line 73
    move-result p0

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 78
    move-result-wide p0

    .line 79
    return-wide p0
.end method
