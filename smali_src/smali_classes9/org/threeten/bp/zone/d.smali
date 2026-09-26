.class public final Lorg/threeten/bp/zone/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/zone/d;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final offsetAfter:Lorg/threeten/bp/s;

.field private final offsetBefore:Lorg/threeten/bp/s;

.field private final transition:Lorg/threeten/bp/h;


# direct methods
.method constructor <init>(JLorg/threeten/bp/s;Lorg/threeten/bp/s;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, v0, p3}, Lorg/threeten/bp/h;->J(JILorg/threeten/bp/s;)Lorg/threeten/bp/h;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    iput-object p3, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    iput-object p4, p0, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    iput-object p2, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    iput-object p3, p0, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    return-void
.end method

.method private e()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/s;->v()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->i()Lorg/threeten/bp/s;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/threeten/bp/s;->v()I

    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    return v0
.end method

.method static l(Ljava/io/DataInput;)Lorg/threeten/bp/zone/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->b(Ljava/io/DataInput;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->d(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lorg/threeten/bp/zone/a;->d(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v3

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    new-instance v3, Lorg/threeten/bp/zone/d;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v0, v1, v2, p0}, Lorg/threeten/bp/zone/d;-><init>(JLorg/threeten/bp/s;Lorg/threeten/bp/s;)V

    .line 24
    return-object v3

    .line 25
    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "Offsets must not be equal"

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/zone/a;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/zone/a;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public a(Lorg/threeten/bp/zone/d;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->f()Lorg/threeten/bp/f;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/threeten/bp/zone/d;->f()Lorg/threeten/bp/f;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/threeten/bp/f;->n(Lorg/threeten/bp/f;)I

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public b()Lorg/threeten/bp/h;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lorg/threeten/bp/zone/d;->e()I

    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/h;->Q(J)Lorg/threeten/bp/h;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public c()Lorg/threeten/bp/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/zone/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/d;->a(Lorg/threeten/bp/zone/d;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()Lorg/threeten/bp/e;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/zone/d;->e()I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lorg/threeten/bp/e;->e(J)Lorg/threeten/bp/e;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/zone/d;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/zone/d;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lorg/threeten/bp/h;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    .line 24
    .line 25
    iget-object v3, p1, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    .line 34
    .line 35
    iget-object p1, p1, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v2

    .line 44
    :goto_0
    return v0

    .line 45
    :cond_2
    return v2
.end method

.method public f()Lorg/threeten/bp/f;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/c;->v(Lorg/threeten/bp/s;)Lorg/threeten/bp/f;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public h()Lorg/threeten/bp/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    .line 15
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 19
    move-result v1

    .line 20
    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 25
    move-result v1

    .line 26
    xor-int/2addr v0, v1

    .line 27
    return v0
.end method

.method public i()Lorg/threeten/bp/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    return-object v0
.end method

.method j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/threeten/bp/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->k()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    .line 14
    new-array v0, v0, [Lorg/threeten/bp/s;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->i()Lorg/threeten/bp/s;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    aput-object v2, v0, v1

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public k()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/threeten/bp/s;->v()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->i()Lorg/threeten/bp/s;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/threeten/bp/s;->v()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-le v0, v1, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public n()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/c;->u(Lorg/threeten/bp/s;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method o(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->n()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lorg/threeten/bp/zone/a;->e(JLjava/io/DataOutput;)V

    .line 8
    .line 9
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lorg/threeten/bp/zone/a;->g(Lorg/threeten/bp/s;Ljava/io/DataOutput;)V

    .line 13
    .line 14
    iget-object v0, p0, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lorg/threeten/bp/zone/a;->g(Lorg/threeten/bp/s;Ljava/io/DataOutput;)V

    .line 18
    return-void
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
    const-string v1, "Transition["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/threeten/bp/zone/d;->k()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "Gap"

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    const-string v1, "Overlap"

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, " at "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->transition:Lorg/threeten/bp/h;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetBefore:Lorg/threeten/bp/s;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, " to "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v1, p0, Lorg/threeten/bp/zone/d;->offsetAfter:Lorg/threeten/bp/s;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const/16 v1, 0x5d

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method
