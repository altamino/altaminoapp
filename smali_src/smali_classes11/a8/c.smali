.class public final La8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(III)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p2}, La8/c;->e(II)I

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, La8/c;->e(II)I

    .line 8
    move-result p1

    .line 9
    sub-int/2addr p0, p1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p2}, La8/c;->e(II)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static final b(JJJ)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p4, p5}, La8/c;->f(JJ)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3, p4, p5}, La8/c;->f(JJ)J

    .line 8
    move-result-wide p2

    .line 9
    sub-long/2addr p0, p2

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, p4, p5}, La8/c;->f(JJ)J

    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method public static final c(III)I
    .locals 0

    .line 1
    .line 2
    if-lez p2, :cond_1

    .line 3
    .line 4
    if-lt p0, p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p1, p0, p2}, La8/c;->a(III)I

    .line 9
    move-result p0

    .line 10
    sub-int/2addr p1, p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_1
    if-gez p2, :cond_3

    .line 14
    .line 15
    if-gt p0, p1, :cond_2

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    neg-int p2, p2

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1, p2}, La8/c;->a(III)I

    .line 21
    move-result p0

    .line 22
    add-int/2addr p1, p0

    .line 23
    :goto_0
    return p1

    .line 24
    .line 25
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string p1, "Step is zero."

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method

.method public static final d(JJJ)J
    .locals 7

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p4, v0

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    cmp-long v0, p0, p2

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide v0, p2

    .line 13
    move-wide v2, p0

    .line 14
    move-wide v4, p4

    .line 15
    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, La8/c;->b(JJJ)J

    .line 18
    move-result-wide p0

    .line 19
    sub-long/2addr p2, p0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    if-gez v0, :cond_3

    .line 23
    .line 24
    cmp-long v0, p0, p2

    .line 25
    .line 26
    if-gtz v0, :cond_2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    neg-long v5, p4

    .line 29
    move-wide v1, p0

    .line 30
    move-wide v3, p2

    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v6}, La8/c;->b(JJJ)J

    .line 34
    move-result-wide p0

    .line 35
    add-long/2addr p2, p0

    .line 36
    :goto_0
    return-wide p2

    .line 37
    .line 38
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "Step is zero."

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
.end method

.method private static final e(II)I
    .locals 0

    .line 1
    rem-int/2addr p0, p1

    .line 2
    .line 3
    if-ltz p0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    add-int/2addr p0, p1

    .line 6
    :goto_0
    return p0
.end method

.method private static final f(JJ)J
    .locals 2

    .line 1
    rem-long/2addr p0, p2

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p0, v0

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    add-long/2addr p0, p2

    .line 10
    :goto_0
    return-wide p0
.end method
