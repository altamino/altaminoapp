.class final enum Lorg/threeten/bp/temporal/c$b$c;
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
    .locals 2
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
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/c$b$c;->d()Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2, p3, p0}, Lorg/threeten/bp/temporal/m;->b(JLorg/threeten/bp/temporal/h;)J

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/c$b$c;->h(Lorg/threeten/bp/temporal/e;)J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p3, v0, v1}, Lra/d;->o(JJ)J

    .line 15
    move-result-wide p2

    .line 16
    .line 17
    sget-object v0, Lorg/threeten/bp/temporal/b;->WEEKS:Lorg/threeten/bp/temporal/b;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2, p3, v0}, Lorg/threeten/bp/temporal/d;->l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
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
    .locals 6

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    const-wide/16 v2, 0x34

    .line 5
    .line 6
    const-wide/16 v4, 0x35

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
    .locals 1

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
    invoke-static {p1}, Lorg/threeten/bp/temporal/c$b;->k(Lorg/threeten/bp/g;)Lorg/threeten/bp/temporal/m;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 18
    .line 19
    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
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
    invoke-static {p1}, Lorg/threeten/bp/temporal/c$b;->l(Lorg/threeten/bp/g;)I

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
    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
