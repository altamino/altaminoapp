.class public abstract Lorg/threeten/bp/chrono/f;
.super Lra/b;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lra/b;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/chrono/f<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static INSTANT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/threeten/bp/chrono/f<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/f$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/chrono/f$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/chrono/f;->INSTANT_COMPARATOR:Ljava/util/Comparator;

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
.method public abstract A(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
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

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/chrono/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/f;->n(Lorg/threeten/bp/chrono/f;)I

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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eq p1, v0, :cond_6

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    .line 36
    sget-object p1, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

    .line 37
    return-object p1

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-ne p1, v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->o()Lorg/threeten/bp/s;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-ne p1, v0, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->u()J

    .line 62
    move-result-wide v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lorg/threeten/bp/g;->S(J)Lorg/threeten/bp/g;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-ne p1, v0, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->x()Lorg/threeten/bp/i;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-super {p0, p1}, Lra/c;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    .line 86
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->p()Lorg/threeten/bp/r;

    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/f;->r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;

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
    instance-of v1, p1, Lorg/threeten/bp/chrono/f;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/chrono/f;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/f;->n(Lorg/threeten/bp/chrono/f;)I

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

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/chrono/f$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    check-cast v1, Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    .line 15
    aget v0, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->o()Lorg/threeten/bp/s;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 38
    move-result p1

    .line 39
    return p1

    .line 40
    .line 41
    :cond_1
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "Field too large for an int: "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-super {p0, p1}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/f;->z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/c;->hashCode()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->o()Lorg/threeten/bp/s;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 16
    move-result v1

    .line 17
    xor-int/2addr v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->p()Lorg/threeten/bp/r;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/threeten/bp/r;->hashCode()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 30
    move-result v1

    .line 31
    xor-int/2addr v0, v1

    .line 32
    return v0
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/f;->y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/chrono/f$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 7
    move-object v1, p1

    .line 8
    .line 9
    check-cast v1, Lorg/threeten/bp/temporal/a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v1

    .line 14
    .line 15
    aget v0, v0, v1

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 29
    move-result-wide v0

    .line 30
    return-wide v0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->o()Lorg/threeten/bp/s;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 38
    move-result p1

    .line 39
    int-to-long v0, p1

    .line 40
    return-wide v0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->t()J

    .line 44
    move-result-wide v0

    .line 45
    return-wide v0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 49
    move-result-wide v0

    .line 50
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/f;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/chrono/f;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/f<",
            "*>;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->t()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->t()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lra/d;->b(JJ)I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->x()Lorg/threeten/bp/i;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/threeten/bp/i;->t()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->x()Lorg/threeten/bp/i;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/threeten/bp/i;->t()I

    .line 30
    move-result v1

    .line 31
    sub-int/2addr v0, v1

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/c;->o(Lorg/threeten/bp/chrono/c;)I

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->p()Lorg/threeten/bp/r;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/threeten/bp/r;->n()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->p()Lorg/threeten/bp/r;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lorg/threeten/bp/r;->n()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 67
    move-result v0

    .line 68
    .line 69
    if-nez v0, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->a(Lorg/threeten/bp/chrono/h;)I

    .line 89
    move-result v0

    .line 90
    :cond_0
    return v0
.end method

.method public abstract o()Lorg/threeten/bp/s;
.end method

.method public abstract p()Lorg/threeten/bp/r;
.end method

.method public q(Lorg/threeten/bp/chrono/f;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/f<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->t()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->t()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->x()Lorg/threeten/bp/i;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/threeten/bp/i;->t()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/threeten/bp/chrono/f;->x()Lorg/threeten/bp/i;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/threeten/bp/i;->t()I

    .line 30
    move-result p1

    .line 31
    .line 32
    if-ge v0, p1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    return p1
.end method

.method public r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

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
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->e(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/g;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public abstract s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "TD;>;"
        }
    .end annotation
.end method

.method public t()J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

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
    const-wide/32 v2, 0x15180

    .line 12
    mul-long/2addr v0, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->x()Lorg/threeten/bp/i;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lorg/threeten/bp/i;->H()I

    .line 20
    move-result v2

    .line 21
    int-to-long v2, v2

    .line 22
    add-long/2addr v0, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->o()Lorg/threeten/bp/s;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lorg/threeten/bp/s;->v()I

    .line 30
    move-result v2

    .line 31
    int-to-long v2, v2

    .line 32
    sub-long/2addr v0, v2

    .line 33
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/threeten/bp/chrono/c;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->o()Lorg/threeten/bp/s;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/threeten/bp/s;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->o()Lorg/threeten/bp/s;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->p()Lorg/threeten/bp/r;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    if-eq v1, v2, :cond_0

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const/16 v0, 0x5b

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->p()Lorg/threeten/bp/r;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/threeten/bp/r;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const/16 v0, 0x5d

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    :cond_0
    return-object v0
.end method

.method public u()Lorg/threeten/bp/f;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->t()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->x()Lorg/threeten/bp/i;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lorg/threeten/bp/i;->t()I

    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public v()Lorg/threeten/bp/chrono/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/c;->w()Lorg/threeten/bp/chrono/b;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract w()Lorg/threeten/bp/chrono/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public x()Lorg/threeten/bp/i;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->w()Lorg/threeten/bp/chrono/c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/c;->x()Lorg/threeten/bp/i;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/f;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

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
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->e(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/g;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public abstract z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/h;",
            "J)",
            "Lorg/threeten/bp/chrono/f<",
            "TD;>;"
        }
    .end annotation
.end method
