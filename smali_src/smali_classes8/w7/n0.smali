.class public final Lw7/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(D)I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {v1}, Lw7/n0;->c(I)D

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    cmpg-double v0, p0, v2

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, -0x1

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lw7/n0;->c(I)D

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    cmpl-double v0, p0, v2

    .line 25
    .line 26
    if-ltz v0, :cond_2

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    :cond_2
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 33
    .line 34
    cmpg-double v0, p0, v0

    .line 35
    .line 36
    if-gtz v0, :cond_3

    .line 37
    double-to-int p0, p0

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lw7/d0;->b(I)I

    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_3
    const v0, 0x7fffffff

    .line 46
    int-to-double v1, v0

    .line 47
    sub-double/2addr p0, v1

    .line 48
    double-to-int p0, p0

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lw7/d0;->b(I)I

    .line 52
    move-result p0

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lw7/d0;->b(I)I

    .line 56
    move-result p1

    .line 57
    add-int/2addr p0, p1

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Lw7/d0;->b(I)I

    .line 61
    move-result v1

    .line 62
    :goto_0
    return v1
.end method

.method public static final b(II)I
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    xor-int/2addr p0, v0

    .line 4
    xor-int/2addr p1, v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->l(II)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final c(I)D
    .locals 6

    .line 1
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    int-to-double v0, v0

    ushr-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x1e

    int-to-double v2, p0

    const/4 p0, 0x2

    int-to-double v4, p0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final d(JJ)I
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    xor-long/2addr p0, v0

    .line 4
    xor-long/2addr p2, v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/t;->m(JJ)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final e(J)D
    .locals 4

    .line 1
    const/16 v0, 0xb

    ushr-long v0, p0, v0

    long-to-double v0, v0

    const/16 v2, 0x800

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x7ff

    and-long/2addr p0, v2

    long-to-double p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static final f(J)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lw7/n0;->g(JI)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final g(JI)Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    const-string v1, "toString(...)"

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/text/a;->a(I)I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    .line 23
    ushr-long v2, p0, v0

    .line 24
    int-to-long v4, p2

    .line 25
    div-long/2addr v2, v4

    .line 26
    shl-long/2addr v2, v0

    .line 27
    .line 28
    mul-long v6, v2, v4

    .line 29
    sub-long/2addr p0, v6

    .line 30
    .line 31
    cmp-long v0, p0, v4

    .line 32
    .line 33
    if-ltz v0, :cond_1

    .line 34
    sub-long/2addr p0, v4

    .line 35
    .line 36
    const-wide/16 v4, 0x1

    .line 37
    add-long/2addr v2, v4

    .line 38
    .line 39
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/text/a;->a(I)I

    .line 46
    move-result v4

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lkotlin/text/a;->a(I)I

    .line 60
    move-result p2

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
