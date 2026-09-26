.class final enum Lorg/threeten/bp/temporal/c$b$a;
.super Lorg/threeten/bp/temporal/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lorg/threeten/bp/temporal/c$b;-><init>(Ljava/lang/String;ILorg/threeten/bp/temporal/c$a;)V

    .line 5
    return-void
.end method


# virtual methods
.method public b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/c$b$a;->h(Lorg/threeten/bp/temporal/e;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/c$b$a;->d()Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p2, p3, p0}, Lorg/threeten/bp/temporal/m;->b(JLorg/threeten/bp/temporal/h;)J

    .line 12
    .line 13
    sget-object v2, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr p2, v0

    .line 19
    add-long/2addr v3, p2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/e;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lorg/threeten/bp/temporal/c$b;->i(Lorg/threeten/bp/temporal/e;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public d()Lorg/threeten/bp/temporal/m;
    .locals 6

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    const-wide/16 v2, 0x5a

    .line 5
    .line 6
    const-wide/16 v4, 0x5c

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lorg/threeten/bp/temporal/m;->j(JJJ)Lorg/threeten/bp/temporal/m;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/c$b;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/c$b;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    const-wide/16 v2, 0x1

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    const-wide/16 v5, 0x5b

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    sget-object p1, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lorg/threeten/bp/chrono/m;->u(J)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v5, v6}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const-wide/16 v0, 0x5a

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 45
    move-result-object p1

    .line 46
    :goto_0
    return-object p1

    .line 47
    .line 48
    :cond_1
    const-wide/16 v7, 0x2

    .line 49
    .line 50
    cmp-long p1, v0, v7

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3, v5, v6}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    .line 59
    :cond_2
    const-wide/16 v4, 0x3

    .line 60
    .line 61
    cmp-long p1, v0, v4

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    const-wide/16 v4, 0x4

    .line 66
    .line 67
    cmp-long p1, v0, v4

    .line 68
    .line 69
    if-nez p1, :cond_3

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/c$b$a;->d()Lorg/threeten/bp/temporal/m;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    .line 77
    :cond_4
    :goto_1
    const-wide/16 v0, 0x5c

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3, v0, v1}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_5
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 85
    .line 86
    const-string v0, "Unsupported field: DayOfQuarter"

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1
.end method

.method public h(Lorg/threeten/bp/temporal/e;)J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    sget-object v1, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    sget-object v2, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 24
    move-result-wide v2

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lorg/threeten/bp/temporal/c$b;->j()[I

    .line 28
    move-result-object p1

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    div-int/lit8 v1, v1, 0x3

    .line 33
    .line 34
    sget-object v4, Lorg/threeten/bp/chrono/m;->INSTANCE:Lorg/threeten/bp/chrono/m;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v2, v3}, Lorg/threeten/bp/chrono/m;->u(J)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    add-int/2addr v1, v2

    .line 45
    .line 46
    aget p1, p1, v1

    .line 47
    sub-int/2addr v0, p1

    .line 48
    int-to-long v0, v0

    .line 49
    return-wide v0

    .line 50
    .line 51
    :cond_1
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 52
    .line 53
    const-string v0, "Unsupported field: DayOfQuarter"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DayOfQuarter"

    return-object v0
.end method
