.class public abstract Lorg/threeten/bp/chrono/c;
.super Lra/b;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/f;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lra/b;",
        "Lorg/threeten/bp/temporal/f;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/chrono/c<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/chrono/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/c$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/chrono/c$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/chrono/c;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/b;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->EPOCH_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/b;->u()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/threeten/bp/i;->G()J

    .line 24
    move-result-wide v1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->o(Lorg/threeten/bp/chrono/c;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/j<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->p()Lorg/threeten/bp/chrono/h;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    sget-object p1, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->u()J

    .line 34
    move-result-wide v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Lorg/threeten/bp/g;->S(J)Lorg/threeten/bp/g;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-ne p1, v0, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eq p1, v0, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    if-eq p1, v0, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    if-ne p1, v0, :cond_4

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-super {p0, p1}, Lra/c;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 76
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/c;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/c;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/chrono/c;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->o(Lorg/threeten/bp/chrono/c;)I

    .line 15
    move-result p1

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v2

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/c;->z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->hashCode()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/threeten/bp/i;->hashCode()I

    .line 16
    move-result v1

    .line 17
    xor-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/c;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public abstract n(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/r;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "TD;>;"
        }
    .end annotation
.end method

.method public o(Lorg/threeten/bp/chrono/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/b;->o(Lorg/threeten/bp/chrono/b;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lorg/threeten/bp/i;->o(Lorg/threeten/bp/i;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->p()Lorg/threeten/bp/chrono/h;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->p()Lorg/threeten/bp/chrono/h;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->a(Lorg/threeten/bp/chrono/h;)I

    .line 40
    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method public p()Lorg/threeten/bp/chrono/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public q(Lorg/threeten/bp/chrono/c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->u()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/b;->u()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-gtz v0, :cond_1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/threeten/bp/i;->G()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/threeten/bp/i;->G()J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    cmp-long p1, v0, v2

    .line 41
    .line 42
    if-lez p1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 47
    :goto_1
    return p1
.end method

.method public r(Lorg/threeten/bp/chrono/c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->u()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/threeten/bp/chrono/b;->u()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/threeten/bp/i;->G()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/threeten/bp/i;->G()J

    .line 38
    move-result-wide v2

    .line 39
    .line 40
    cmp-long p1, v0, v2

    .line 41
    .line 42
    if-gez p1, :cond_0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 47
    :goto_1
    return p1
.end method

.method public s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lra/b;->e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public abstract t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/b;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v1, 0x54

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lorg/threeten/bp/i;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public u(Lorg/threeten/bp/s;)J
    .locals 4

    .line 1
    .line 2
    const-string v0, "offset"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->u()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    const-wide/32 v2, 0x15180

    .line 17
    mul-long/2addr v0, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/threeten/bp/i;->H()I

    .line 25
    move-result v2

    .line 26
    int-to-long v2, v2

    .line 27
    add-long/2addr v0, v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 31
    move-result p1

    .line 32
    int-to-long v2, p1

    .line 33
    sub-long/2addr v0, v2

    .line 34
    return-wide v0
.end method

.method public v(Lorg/threeten/bp/s;)Lorg/threeten/bp/f;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->u(Lorg/threeten/bp/s;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/threeten/bp/i;->t()I

    .line 12
    move-result p1

    .line 13
    int-to-long v2, p1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public abstract w()Lorg/threeten/bp/chrono/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract x()Lorg/threeten/bp/i;
.end method

.method public y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/f;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Lra/b;->j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public abstract z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/h;",
            "J)",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation
.end method
