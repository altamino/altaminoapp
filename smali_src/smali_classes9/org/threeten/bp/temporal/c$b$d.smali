.class final enum Lorg/threeten/bp/temporal/c$b$d;
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
    .locals 4
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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/c$b$d;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/c$b$d;->d()Lorg/threeten/bp/temporal/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Lorg/threeten/bp/temporal/c$b;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/c$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2, p3, v1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    sget-object v0, Lorg/threeten/bp/temporal/a;->DAY_OF_WEEK:Lorg/threeten/bp/temporal/a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Lorg/threeten/bp/g;->f(Lorg/threeten/bp/temporal/h;)I

    .line 26
    move-result v1

    .line 27
    .line 28
    .line 29
    invoke-static {p3}, Lorg/threeten/bp/temporal/c$b;->l(Lorg/threeten/bp/g;)I

    .line 30
    move-result p3

    .line 31
    .line 32
    const/16 v2, 0x35

    .line 33
    .line 34
    if-ne p3, v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lorg/threeten/bp/temporal/c$b;->o(I)I

    .line 38
    move-result v2

    .line 39
    .line 40
    const/16 v3, 0x34

    .line 41
    .line 42
    if-ne v2, v3, :cond_0

    .line 43
    move p3, v3

    .line 44
    :cond_0
    const/4 v2, 0x4

    .line 45
    const/4 v3, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v3, v2}, Lorg/threeten/bp/g;->Q(III)Lorg/threeten/bp/g;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Lorg/threeten/bp/g;->f(Lorg/threeten/bp/temporal/h;)I

    .line 53
    move-result v0

    .line 54
    sub-int/2addr v1, v0

    .line 55
    sub-int/2addr p3, v3

    .line 56
    .line 57
    mul-int/lit8 p3, p3, 0x7

    .line 58
    add-int/2addr v1, p3

    .line 59
    int-to-long v0, v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0, v1}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, p2}, Lorg/threeten/bp/temporal/d;->j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_1
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 71
    .line 72
    const-string p2, "Unsupported field: WeekBasedYear"

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
.end method

.method public c(Lorg/threeten/bp/temporal/e;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

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
    .line 11
    invoke-static {p1}, Lorg/threeten/bp/temporal/c$b;->i(Lorg/threeten/bp/temporal/e;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public d()Lorg/threeten/bp/temporal/m;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lorg/threeten/bp/temporal/a;->YEAR:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/threeten/bp/temporal/a;->d()Lorg/threeten/bp/temporal/m;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Lorg/threeten/bp/temporal/e;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lorg/threeten/bp/temporal/c$b;->n(Lorg/threeten/bp/g;)I

    .line 14
    move-result p1

    .line 15
    int-to-long v0, p1

    .line 16
    return-wide v0

    .line 17
    .line 18
    :cond_0
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 19
    .line 20
    const-string v0, "Unsupported field: WeekBasedYear"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekBasedYear"

    return-object v0
.end method
