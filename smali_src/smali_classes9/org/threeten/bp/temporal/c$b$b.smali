.class final enum Lorg/threeten/bp/temporal/c$b$b;
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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/temporal/c$b$b;->h(Lorg/threeten/bp/temporal/e;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/c$b$b;->d()Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p2, p3, p0}, Lorg/threeten/bp/temporal/m;->b(JLorg/threeten/bp/temporal/h;)J

    .line 12
    .line 13
    sget-object v2, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr p2, v0

    .line 19
    .line 20
    const-wide/16 v0, 0x3

    .line 21
    mul-long/2addr p2, v0

    .line 22
    add-long/2addr v3, p2

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/e;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

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
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    const-wide/16 v2, 0x4

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/temporal/m;->i(JJ)Lorg/threeten/bp/temporal/m;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/c$b$b;->d()Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Lorg/threeten/bp/temporal/e;)J
    .locals 4

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
    sget-object v0, Lorg/threeten/bp/temporal/a;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    const-wide/16 v2, 0x2

    .line 15
    add-long/2addr v0, v2

    .line 16
    .line 17
    const-wide/16 v2, 0x3

    .line 18
    div-long/2addr v0, v2

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_0
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 22
    .line 23
    const-string v0, "Unsupported field: QuarterOfYear"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "QuarterOfYear"

    return-object v0
.end method
