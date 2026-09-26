.class public final Lra/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(JJ)I
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    :cond_0
    return v0

    .line 8
    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static d(II)I
    .locals 0

    .line 1
    .line 2
    if-ltz p0, :cond_0

    .line 3
    div-int/2addr p0, p1

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 7
    div-int/2addr p0, p1

    .line 8
    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    :goto_0
    return p0
.end method

.method public static e(JJ)J
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    div-long/2addr p0, p2

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const-wide/16 v0, 0x1

    .line 11
    add-long/2addr p0, v0

    .line 12
    div-long/2addr p0, p2

    .line 13
    sub-long/2addr p0, v0

    .line 14
    :goto_0
    return-wide p0
.end method

.method public static f(II)I
    .locals 0

    .line 1
    rem-int/2addr p0, p1

    .line 2
    add-int/2addr p0, p1

    .line 3
    rem-int/2addr p0, p1

    .line 4
    return p0
.end method

.method public static g(JI)I
    .locals 2

    .line 1
    int-to-long v0, p2

    .line 2
    rem-long/2addr p0, v0

    .line 3
    add-long/2addr p0, v0

    .line 4
    rem-long/2addr p0, v0

    .line 5
    long-to-int p0, p0

    .line 6
    return p0
.end method

.method public static h(JJ)J
    .locals 0

    .line 1
    rem-long/2addr p0, p2

    .line 2
    add-long/2addr p0, p2

    .line 3
    rem-long/2addr p0, p2

    .line 4
    return-wide p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, " must not be null"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method public static j(II)I
    .locals 3

    .line 1
    .line 2
    add-int v0, p0, p1

    .line 3
    .line 4
    xor-int v1, p0, v0

    .line 5
    .line 6
    if-gez v1, :cond_1

    .line 7
    .line 8
    xor-int v1, p0, p1

    .line 9
    .line 10
    if-gez v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "Addition overflows an int: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p0, " + "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    return v0
.end method

.method public static k(JJ)J
    .locals 6

    .line 1
    .line 2
    add-long v0, p0, p2

    .line 3
    .line 4
    xor-long v2, p0, v0

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v2, v2, v4

    .line 9
    .line 10
    if-gez v2, :cond_1

    .line 11
    .line 12
    xor-long v2, p0, p2

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "Addition overflows a long: "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p0, " + "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static l(JI)J
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    const-string v1, " * "

    .line 4
    .line 5
    const-string v2, "Multiplication overflows a long: "

    .line 6
    .line 7
    if-eq p2, v0, :cond_3

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    int-to-long v3, p2

    .line 14
    .line 15
    mul-long v5, p0, v3

    .line 16
    .line 17
    div-long v3, v5, v3

    .line 18
    .line 19
    cmp-long v0, v3, p0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    return-wide v5

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 50
    :cond_1
    return-wide p0

    .line 51
    .line 52
    :cond_2
    const-wide/16 p0, 0x0

    .line 53
    return-wide p0

    .line 54
    .line 55
    :cond_3
    const-wide/high16 v3, -0x8000000000000000L

    .line 56
    .line 57
    cmp-long v0, p0, v3

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    neg-long p0, p0

    .line 61
    return-wide p0

    .line 62
    .line 63
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0
.end method

.method public static m(JJ)J
    .locals 7

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    cmp-long v2, p2, v0

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    return-wide p0

    .line 8
    .line 9
    :cond_0
    cmp-long v0, p0, v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-wide p2

    .line 13
    .line 14
    :cond_1
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v2, p0, v0

    .line 17
    .line 18
    if-eqz v2, :cond_6

    .line 19
    .line 20
    cmp-long v2, p2, v0

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    mul-long v0, p0, p2

    .line 26
    .line 27
    div-long v2, v0, p2

    .line 28
    .line 29
    cmp-long v2, v2, p0

    .line 30
    .line 31
    if-nez v2, :cond_5

    .line 32
    .line 33
    const-wide/high16 v2, -0x8000000000000000L

    .line 34
    .line 35
    cmp-long v4, p0, v2

    .line 36
    .line 37
    const-wide/16 v5, -0x1

    .line 38
    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    cmp-long v4, p2, v5

    .line 42
    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    :cond_3
    cmp-long v2, p2, v2

    .line 46
    .line 47
    if-nez v2, :cond_4

    .line 48
    .line 49
    cmp-long v2, p0, v5

    .line 50
    .line 51
    if-eqz v2, :cond_5

    .line 52
    :cond_4
    return-wide v0

    .line 53
    .line 54
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v2, "Multiplication overflows a long: "

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p0, " * "

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0

    .line 84
    :cond_6
    :goto_0
    return-wide v0
.end method

.method public static n(II)I
    .locals 3

    .line 1
    .line 2
    sub-int v0, p0, p1

    .line 3
    .line 4
    xor-int v1, p0, v0

    .line 5
    .line 6
    if-gez v1, :cond_1

    .line 7
    .line 8
    xor-int v1, p0, p1

    .line 9
    .line 10
    if-ltz v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "Subtraction overflows an int: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p0, " - "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    return v0
.end method

.method public static o(JJ)J
    .locals 6

    .line 1
    .line 2
    sub-long v0, p0, p2

    .line 3
    .line 4
    xor-long v2, p0, v0

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v2, v2, v4

    .line 9
    .line 10
    if-gez v2, :cond_1

    .line 11
    .line 12
    xor-long v2, p0, p2

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-ltz v2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "Subtraction overflows a long: "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p0, " - "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static p(J)I
    .locals 3

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x7fffffff

    .line 4
    .line 5
    cmp-long v0, p0, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    .line 10
    const-wide/32 v0, -0x80000000

    .line 11
    .line 12
    cmp-long v0, p0, v0

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    long-to-int p0, p0

    .line 16
    return p0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "Calculation overflows an int: "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method
