.class public final Lorg/threeten/bp/m;
.super Lra/c;
.source "SourceFile"

# interfaces
.implements Lorg/threeten/bp/temporal/d;
.implements Lorg/threeten/bp/temporal/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lra/c;",
        "Lorg/threeten/bp/temporal/d;",
        "Lorg/threeten/bp/temporal/f;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/m;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/m;

.field public static final MIN:Lorg/threeten/bp/m;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Lorg/threeten/bp/s;

.field private final time:Lorg/threeten/bp/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/i;->MIN:Lorg/threeten/bp/i;

    .line 3
    .line 4
    sget-object v1, Lorg/threeten/bp/s;->MAX:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/threeten/bp/i;->n(Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/m;->MIN:Lorg/threeten/bp/m;

    .line 11
    .line 12
    sget-object v0, Lorg/threeten/bp/i;->MAX:Lorg/threeten/bp/i;

    .line 13
    .line 14
    sget-object v1, Lorg/threeten/bp/s;->MIN:Lorg/threeten/bp/s;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/threeten/bp/i;->n(Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lorg/threeten/bp/m;->MAX:Lorg/threeten/bp/m;

    .line 21
    .line 22
    new-instance v0, Lorg/threeten/bp/m$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lorg/threeten/bp/m$a;-><init>()V

    .line 26
    .line 27
    sput-object v0, Lorg/threeten/bp/m;->FROM:Lorg/threeten/bp/temporal/j;

    .line 28
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/c;-><init>()V

    .line 4
    .line 5
    const-string v0, "time"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/i;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

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
    iput-object p1, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 24
    return-void
.end method

.method public static o(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/m;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/m;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/m;

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/i;->q(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/i;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lorg/threeten/bp/s;->u(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/s;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Lorg/threeten/bp/m;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)V
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object v2

    .line 22
    .line 23
    :catch_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "Unable to obtain OffsetTime from TemporalAccessor: "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, ", type "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0
.end method

.method public static r(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)V

    .line 6
    return-object v0
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

.method static t(Ljava/io/DataInput;)Lorg/threeten/bp/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/i;->F(Ljava/io/DataInput;)Lorg/threeten/bp/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/s;->A(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lorg/threeten/bp/m;->r(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private u()J
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/i;->G()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object v2, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Lorg/threeten/bp/s;->v()I

    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    .line 15
    .line 16
    const-wide/32 v4, 0x3b9aca00

    .line 17
    mul-long/2addr v2, v4

    .line 18
    sub-long/2addr v0, v2

    .line 19
    return-wide v0
.end method

.method private v(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/threeten/bp/m;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/m;-><init>(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)V

    .line 19
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    .line 4
    const/16 v1, 0x42

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_DAY:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/threeten/bp/i;->G()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/threeten/bp/m;->p()Lorg/threeten/bp/s;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lorg/threeten/bp/s;->v()I

    .line 22
    move-result v1

    .line 23
    int-to-long v1, v1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/m;->n(Lorg/threeten/bp/m;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;
    .locals 1
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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->e()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/threeten/bp/temporal/b;->NANOS:Lorg/threeten/bp/temporal/b;

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eq p1, v0, :cond_5

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 31
    return-object p1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eq p1, v0, :cond_4

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    if-eq p1, v0, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-super {p0, p1}, Lra/c;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 57
    return-object p1

    .line 58
    .line 59
    .line 60
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/threeten/bp/m;->p()Lorg/threeten/bp/s;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->q(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    instance-of v1, p1, Lorg/threeten/bp/m;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/m;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lorg/threeten/bp/i;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_0
    return v0

    .line 35
    :cond_2
    return v2
.end method

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->x(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/i;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/threeten/bp/s;->hashCode()I

    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public i(Lorg/threeten/bp/temporal/h;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->e()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :cond_1
    :goto_0
    return v1

    .line 20
    .line 21
    :cond_2
    if-eqz p1, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    goto :goto_1

    .line 29
    :cond_3
    move v1, v2

    .line 30
    :goto_1
    return v1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/m;->w(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/m;

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
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/threeten/bp/m;->p()Lorg/threeten/bp/s;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 16
    move-result p1

    .line 17
    int-to-long v0, p1

    .line 18
    return-wide v0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->k(Lorg/threeten/bp/temporal/h;)J

    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 29
    move-result-wide v0

    .line 30
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/m;)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 3
    .line 4
    iget-object v1, p1, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->o(Lorg/threeten/bp/i;)I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lorg/threeten/bp/m;->u()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Lorg/threeten/bp/m;->u()J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Lra/d;->b(JJ)I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->o(Lorg/threeten/bp/i;)I

    .line 41
    move-result v0

    .line 42
    :cond_1
    return v0
.end method

.method public p()Lorg/threeten/bp/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    return-object v0
.end method

.method public q(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/m;
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide p1, 0x7fffffffffffffffL

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/m;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/m;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/m;

    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/m;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/m;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/m;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/i;->A(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/i;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object p2, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/m;->v(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lorg/threeten/bp/m;

    .line 24
    return-object p1
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
    iget-object v1, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/threeten/bp/i;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/threeten/bp/s;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public w(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/m;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/i;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/m;->v(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/s;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 20
    .line 21
    check-cast p1, Lorg/threeten/bp/s;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/m;->v(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/m;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Lorg/threeten/bp/m;

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lorg/threeten/bp/m;

    .line 40
    return-object p1
.end method

.method public x(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/m;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/temporal/a;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lorg/threeten/bp/temporal/a;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/m;->v(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/i;->J(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/i;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p2, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/m;->v(Lorg/threeten/bp/i;Lorg/threeten/bp/s;)Lorg/threeten/bp/m;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lorg/threeten/bp/m;

    .line 45
    return-object p1
.end method

.method y(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/m;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->O(Ljava/io/DataOutput;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/m;->offset:Lorg/threeten/bp/s;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/threeten/bp/s;->D(Ljava/io/DataOutput;)V

    .line 11
    return-void
.end method
