.class final Lorg/threeten/bp/chrono/g;
.super Lorg/threeten/bp/chrono/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lorg/threeten/bp/chrono/f<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4905b7f16d4b26a7L


# instance fields
.field private final dateTime:Lorg/threeten/bp/chrono/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final offset:Lorg/threeten/bp/s;

.field private final zone:Lorg/threeten/bp/r;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;",
            "Lorg/threeten/bp/s;",
            "Lorg/threeten/bp/r;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/f;-><init>()V

    .line 4
    .line 5
    const-string v0, "dateTime"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/chrono/d;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/threeten/bp/chrono/g;->dateTime:Lorg/threeten/bp/chrono/d;

    .line 14
    .line 15
    const-string p1, "offset"

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lorg/threeten/bp/s;

    .line 22
    .line 23
    iput-object p1, p0, Lorg/threeten/bp/chrono/g;->offset:Lorg/threeten/bp/s;

    .line 24
    .line 25
    const-string p1, "zone"

    .line 26
    .line 27
    .line 28
    invoke-static {p3, p1}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lorg/threeten/bp/r;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/threeten/bp/chrono/g;->zone:Lorg/threeten/bp/r;

    .line 34
    return-void
.end method

.method private B(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/f;",
            "Lorg/threeten/bp/r;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
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
    invoke-static {v0, p1, p2}, Lorg/threeten/bp/chrono/g;->D(Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/g;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method static C(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/chrono/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/b;",
            ">(",
            "Lorg/threeten/bp/chrono/d<",
            "TR;>;",
            "Lorg/threeten/bp/r;",
            "Lorg/threeten/bp/s;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "TR;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "localDateTime"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "zone"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    instance-of v0, p1, Lorg/threeten/bp/s;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance p2, Lorg/threeten/bp/chrono/g;

    .line 17
    move-object v0, p1

    .line 18
    .line 19
    check-cast v0, Lorg/threeten/bp/s;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0, v0, p1}, Lorg/threeten/bp/chrono/g;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

    .line 23
    return-object p2

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p1}, Lorg/threeten/bp/r;->o()Lorg/threeten/bp/zone/f;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lorg/threeten/bp/h;->D(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/h;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/f;->c(Lorg/threeten/bp/h;)Ljava/util/List;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    check-cast p2, Lorg/threeten/bp/s;

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 54
    move-result v3

    .line 55
    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/f;->b(Lorg/threeten/bp/h;)Lorg/threeten/bp/zone/d;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->d()Lorg/threeten/bp/e;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/threeten/bp/e;->c()J

    .line 68
    move-result-wide v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/chrono/d;->G(J)Lorg/threeten/bp/chrono/d;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 76
    move-result-object p2

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_2
    if-eqz p2, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    check-cast p2, Lorg/threeten/bp/s;

    .line 93
    .line 94
    :goto_0
    const-string v0, "offset"

    .line 95
    .line 96
    .line 97
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    new-instance v0, Lorg/threeten/bp/chrono/g;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, p0, p2, p1}, Lorg/threeten/bp/chrono/g;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

    .line 103
    return-object v0
.end method

.method static D(Lorg/threeten/bp/chrono/h;Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/b;",
            ">(",
            "Lorg/threeten/bp/chrono/h;",
            "Lorg/threeten/bp/f;",
            "Lorg/threeten/bp/r;",
            ")",
            "Lorg/threeten/bp/chrono/g<",
            "TR;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/threeten/bp/r;->o()Lorg/threeten/bp/zone/f;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lorg/threeten/bp/zone/f;->a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "offset"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/threeten/bp/f;->q()J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/threeten/bp/f;->r()I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, p1, v0}, Lorg/threeten/bp/h;->J(JILorg/threeten/bp/s;)Lorg/threeten/bp/h;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/h;->l(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/chrono/c;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    check-cast p0, Lorg/threeten/bp/chrono/d;

    .line 32
    .line 33
    new-instance p1, Lorg/threeten/bp/chrono/g;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p0, v0, p2}, Lorg/threeten/bp/chrono/g;-><init>(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

    .line 37
    return-object p1
.end method

.method static E(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lorg/threeten/bp/chrono/c;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    check-cast v1, Lorg/threeten/bp/s;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    check-cast p0, Lorg/threeten/bp/r;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/c;->n(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/f;->A(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 3
    .line 4
    const-string v1, "Deserialization via serialization delegate"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/u;

    .line 3
    .line 4
    const/16 v1, 0xd

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/u;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public A(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/r;",
            ")",
            "Lorg/threeten/bp/chrono/f<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->dateTime:Lorg/threeten/bp/chrono/d;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/chrono/g;->offset:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lorg/threeten/bp/chrono/g;->C(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/chrono/f;

    .line 8
    move-result-object p1

    .line 9
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

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/g;->z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/f;

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->w()Lorg/threeten/bp/chrono/c;

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->o()Lorg/threeten/bp/s;

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->p()Lorg/threeten/bp/r;

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

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/g;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o()Lorg/threeten/bp/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->offset:Lorg/threeten/bp/s;

    return-object v0
.end method

.method public p()Lorg/threeten/bp/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->zone:Lorg/threeten/bp/r;

    return-object v0
.end method

.method public s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;
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
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->dateTime:Lorg/threeten/bp/chrono/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->B(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/d;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/f;->y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/f;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->v()Lorg/threeten/bp/chrono/b;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->e(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/g;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->w()Lorg/threeten/bp/chrono/c;

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->o()Lorg/threeten/bp/s;

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->o()Lorg/threeten/bp/s;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->p()Lorg/threeten/bp/r;

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
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/g;->p()Lorg/threeten/bp/r;

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

.method public w()Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/threeten/bp/chrono/c<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->dateTime:Lorg/threeten/bp/chrono/d;

    return-object v0
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->dateTime:Lorg/threeten/bp/chrono/d;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->offset:Lorg/threeten/bp/s;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->zone:Lorg/threeten/bp/r;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/h;",
            "J)",
            "Lorg/threeten/bp/chrono/f<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    sget-object v1, Lorg/threeten/bp/chrono/g$a;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v2

    .line 14
    .line 15
    aget v1, v1, v2

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lorg/threeten/bp/chrono/g;->dateTime:Lorg/threeten/bp/chrono/d;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->L(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/d;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iget-object p2, p0, Lorg/threeten/bp/chrono/g;->zone:Lorg/threeten/bp/r;

    .line 30
    .line 31
    iget-object p3, p0, Lorg/threeten/bp/chrono/g;->offset:Lorg/threeten/bp/s;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2, p3}, Lorg/threeten/bp/chrono/g;->C(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/chrono/f;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iget-object p2, p0, Lorg/threeten/bp/chrono/g;->dateTime:Lorg/threeten/bp/chrono/d;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lorg/threeten/bp/chrono/c;->v(Lorg/threeten/bp/s;)Lorg/threeten/bp/f;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object p2, p0, Lorg/threeten/bp/chrono/g;->zone:Lorg/threeten/bp/r;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/g;->B(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/g;

    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->t()J

    .line 61
    move-result-wide v0

    .line 62
    sub-long/2addr p2, v0

    .line 63
    .line 64
    sget-object p1, Lorg/threeten/bp/temporal/b;->SECONDS:Lorg/threeten/bp/temporal/b;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2, p3, p1}, Lorg/threeten/bp/chrono/g;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    .line 71
    .line 72
    :cond_2
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
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->e(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/g;

    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method
