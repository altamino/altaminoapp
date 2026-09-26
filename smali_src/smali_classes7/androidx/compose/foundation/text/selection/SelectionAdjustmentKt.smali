.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(IIZZ)J
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p0}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 6
    move-result-wide p0

    .line 7
    return-wide p0

    .line 8
    .line 9
    :cond_0
    if-nez p0, :cond_2

    .line 10
    const/4 p0, 0x0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 17
    move-result-wide p0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 22
    move-result-wide p0

    .line 23
    :goto_0
    return-wide p0

    .line 24
    .line 25
    :cond_2
    if-ne p0, p1, :cond_4

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    add-int/lit8 p0, p1, -0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 33
    move-result-wide p0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_3
    add-int/lit8 p0, p1, -0x1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 40
    move-result-wide p0

    .line 41
    :goto_1
    return-wide p0

    .line 42
    .line 43
    :cond_4
    if-eqz p2, :cond_6

    .line 44
    .line 45
    if-nez p3, :cond_5

    .line 46
    .line 47
    add-int/lit8 p1, p0, -0x1

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 51
    move-result-wide p0

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_5
    add-int/lit8 p1, p0, 0x1

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 58
    move-result-wide p0

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_6
    if-nez p3, :cond_7

    .line 62
    .line 63
    add-int/lit8 p1, p0, 0x1

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 67
    move-result-wide p0

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_7
    add-int/lit8 p1, p0, -0x1

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->b(II)J

    .line 74
    move-result-wide p0

    .line 75
    :goto_2
    return-wide p0
.end method
