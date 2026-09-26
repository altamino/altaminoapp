.class public final Lorg/threeten/bp/u;
.super Lorg/threeten/bp/chrono/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/f<",
        "Lorg/threeten/bp/g;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/u;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x56e37a54888537c2L


# instance fields
.field private final dateTime:Lorg/threeten/bp/h;

.field private final offset:Lorg/threeten/bp/s;

.field private final zone:Lorg/threeten/bp/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/u$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/threeten/bp/u$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/threeten/bp/u;->FROM:Lorg/threeten/bp/temporal/j;

    .line 8
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/f;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 10
    return-void
.end method

.method private static B(JILorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lorg/threeten/bp/r;->o()Lorg/threeten/bp/zone/f;

    .line 4
    move-result-object v0

    .line 5
    int-to-long v1, p2

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1, v1, v2}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/threeten/bp/zone/f;->a(Lorg/threeten/bp/f;)Lorg/threeten/bp/s;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, p2, v0}, Lorg/threeten/bp/h;->J(JILorg/threeten/bp/s;)Lorg/threeten/bp/h;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    new-instance p1, Lorg/threeten/bp/u;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, v0, p3}, Lorg/threeten/bp/u;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

    .line 23
    return-object p1
.end method

.method public static C(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/u;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/u;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/u;

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/r;->a(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/r;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget-object v1, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/e;->i(Lorg/threeten/bp/temporal/h;)Z

    .line 17
    move-result v2
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 23
    move-result-wide v1

    .line 24
    .line 25
    sget-object v3, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v3}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 29
    move-result v3

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3, v0}, Lorg/threeten/bp/u;->B(JILorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 33
    move-result-object p0
    :try_end_1
    .catch Lorg/threeten/bp/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    return-object p0

    .line 35
    .line 36
    .line 37
    :catch_0
    :cond_1
    :try_start_2
    invoke-static {p0}, Lorg/threeten/bp/h;->D(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/h;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Lorg/threeten/bp/u;->H(Lorg/threeten/bp/h;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 42
    move-result-object p0
    :try_end_2
    .catch Lorg/threeten/bp/b; {:try_start_2 .. :try_end_2} :catch_1

    .line 43
    return-object p0

    .line 44
    .line 45
    :catch_1
    new-instance v0, Lorg/threeten/bp/b;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    const-string v2, "Unable to obtain ZonedDateTime from TemporalAccessor: "

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, ", type "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 82
    throw v0
.end method

.method public static F(Lorg/threeten/bp/a;)Lorg/threeten/bp/u;
    .locals 1

    .line 1
    .line 2
    const-string v0, "clock"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/threeten/bp/a;->b()Lorg/threeten/bp/f;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/threeten/bp/a;->a()Lorg/threeten/bp/r;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0}, Lorg/threeten/bp/u;->I(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static G(Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/a;->c(Lorg/threeten/bp/r;)Lorg/threeten/bp/a;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/u;->F(Lorg/threeten/bp/a;)Lorg/threeten/bp/u;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static H(Lorg/threeten/bp/h;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lorg/threeten/bp/u;->L(Lorg/threeten/bp/h;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/u;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static I(Lorg/threeten/bp/f;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 2

    .line 1
    .line 2
    const-string v0, "instant"

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
    .line 13
    invoke-virtual {p0}, Lorg/threeten/bp/f;->q()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/threeten/bp/f;->r()I

    .line 18
    move-result p0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, p0, p1}, Lorg/threeten/bp/u;->B(JILorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static J(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 2

    .line 1
    .line 2
    const-string v0, "localDateTime"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "offset"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    const-string v0, "zone"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/c;->u(Lorg/threeten/bp/s;)J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/threeten/bp/h;->E()I

    .line 23
    move-result p0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, p0, p2}, Lorg/threeten/bp/u;->B(JILorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private static K(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 1

    .line 1
    .line 2
    const-string v0, "localDateTime"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "offset"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    const-string v0, "zone"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    instance-of v0, p2, Lorg/threeten/bp/s;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string p1, "ZoneId must match ZoneOffset"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    .line 36
    :cond_1
    :goto_0
    new-instance v0, Lorg/threeten/bp/u;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/u;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

    .line 40
    return-object v0
.end method

.method public static L(Lorg/threeten/bp/h;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/u;
    .locals 5

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
    new-instance p2, Lorg/threeten/bp/u;

    .line 17
    move-object v0, p1

    .line 18
    .line 19
    check-cast v0, Lorg/threeten/bp/s;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0, v0, p1}, Lorg/threeten/bp/u;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

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
    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/f;->c(Lorg/threeten/bp/h;)Ljava/util/List;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x1

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Lorg/threeten/bp/s;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    move-result v2

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lorg/threeten/bp/zone/f;->b(Lorg/threeten/bp/h;)Lorg/threeten/bp/zone/d;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->d()Lorg/threeten/bp/e;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lorg/threeten/bp/e;->c()J

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Lorg/threeten/bp/h;->Q(J)Lorg/threeten/bp/h;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lorg/threeten/bp/zone/d;->h()Lorg/threeten/bp/s;

    .line 72
    move-result-object p2

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    if-eqz p2, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    const-string v0, "offset"

    .line 89
    .line 90
    .line 91
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    check-cast p2, Lorg/threeten/bp/s;

    .line 95
    .line 96
    :goto_0
    new-instance v0, Lorg/threeten/bp/u;

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, p0, p2, p1}, Lorg/threeten/bp/u;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

    .line 100
    return-object v0
.end method

.method static O(Ljava/io/DataInput;)Lorg/threeten/bp/u;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/h;->S(Ljava/io/DataInput;)Lorg/threeten/bp/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/s;->A(Ljava/io/DataInput;)Lorg/threeten/bp/s;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lorg/threeten/bp/o;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    check-cast p0, Lorg/threeten/bp/r;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p0}, Lorg/threeten/bp/u;->K(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private P(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lorg/threeten/bp/u;->J(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private Q(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lorg/threeten/bp/u;->L(Lorg/threeten/bp/h;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/u;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private R(Lorg/threeten/bp/s;)Lorg/threeten/bp/u;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/threeten/bp/s;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/threeten/bp/r;->o()Lorg/threeten/bp/zone/f;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lorg/threeten/bp/zone/f;->e(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lorg/threeten/bp/u;

    .line 25
    .line 26
    iget-object v1, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 27
    .line 28
    iget-object v2, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, p1, v2}, Lorg/threeten/bp/u;-><init>(Lorg/threeten/bp/h;Lorg/threeten/bp/s;Lorg/threeten/bp/r;)V

    .line 32
    return-object v0

    .line 33
    :cond_0
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
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public bridge synthetic A(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/u;->W(Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public D()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->E()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public E(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->M(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/u;->M(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->M(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public M(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p3}, Lorg/threeten/bp/temporal/k;->a()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->Q(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->P(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lorg/threeten/bp/u;

    .line 39
    return-object p1
.end method

.method public N(J)Lorg/threeten/bp/u;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/h;->O(J)Lorg/threeten/bp/h;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->Q(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public S()Lorg/threeten/bp/g;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->T()Lorg/threeten/bp/g;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public T()Lorg/threeten/bp/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    return-object v0
.end method

.method public U(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/u;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/g;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/threeten/bp/h;->x()Lorg/threeten/bp/i;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lorg/threeten/bp/h;->I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->Q(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/i;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lorg/threeten/bp/h;->T()Lorg/threeten/bp/g;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast p1, Lorg/threeten/bp/i;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1}, Lorg/threeten/bp/h;->I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->Q(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    .line 44
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/h;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    check-cast p1, Lorg/threeten/bp/h;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->Q(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    :cond_2
    instance-of v0, p1, Lorg/threeten/bp/f;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    check-cast p1, Lorg/threeten/bp/f;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/threeten/bp/f;->q()J

    .line 63
    move-result-wide v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/threeten/bp/f;->r()I

    .line 67
    move-result p1

    .line 68
    .line 69
    iget-object v2, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1, p1, v2}, Lorg/threeten/bp/u;->B(JILorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    .line 76
    :cond_3
    instance-of v0, p1, Lorg/threeten/bp/s;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    check-cast p1, Lorg/threeten/bp/s;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->R(Lorg/threeten/bp/s;)Lorg/threeten/bp/u;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    check-cast p1, Lorg/threeten/bp/u;

    .line 92
    return-object p1
.end method

.method public V(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/u;
    .locals 3

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
    sget-object v1, Lorg/threeten/bp/u$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/h;->W(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/h;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->Q(Lorg/threeten/bp/h;)Lorg/threeten/bp/u;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->i(J)I

    .line 36
    move-result p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lorg/threeten/bp/s;->y(I)Lorg/threeten/bp/s;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1}, Lorg/threeten/bp/u;->R(Lorg/threeten/bp/s;)Lorg/threeten/bp/u;

    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/u;->D()I

    .line 49
    move-result p1

    .line 50
    .line 51
    iget-object v0, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 52
    .line 53
    .line 54
    invoke-static {p2, p3, p1, v0}, Lorg/threeten/bp/u;->B(JILorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Lorg/threeten/bp/u;

    .line 63
    return-object p1
.end method

.method public W(Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 2

    .line 1
    .line 2
    const-string v0, "zone"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/threeten/bp/r;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    move-object p1, p0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p1, v1}, Lorg/threeten/bp/u;->L(Lorg/threeten/bp/h;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/u;

    .line 23
    move-result-object p1

    .line 24
    :goto_0
    return-object p1
.end method

.method X(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->X(Ljava/io/DataOutput;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/threeten/bp/s;->D(Ljava/io/DataOutput;)V

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/r;->r(Ljava/io/DataOutput;)V

    .line 16
    return-void
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
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->d()Lorg/threeten/bp/temporal/m;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/threeten/bp/u;->S()Lorg/threeten/bp/g;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/f;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->E(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;

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
    instance-of v1, p1, Lorg/threeten/bp/u;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/u;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

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
    iget-object v1, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 24
    .line 25
    iget-object v3, p1, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

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
    iget-object v1, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 34
    .line 35
    iget-object p1, p1, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lorg/threeten/bp/r;->equals(Ljava/lang/Object;)Z

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
    sget-object v0, Lorg/threeten/bp/u$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->f(Lorg/threeten/bp/temporal/h;)I

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/u;->o()Lorg/threeten/bp/s;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    .line 39
    :cond_1
    new-instance v0, Lorg/threeten/bp/b;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    const-string v2, "Field too large for an int: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/f;->f(Lorg/threeten/bp/temporal/h;)I

    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->V(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

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
    iget-object v1, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/threeten/bp/r;->hashCode()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x3

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    .line 24
    move-result v1

    .line 25
    xor-int/2addr v0, v1

    .line 26
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

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/u;->U(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/u;

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
    sget-object v0, Lorg/threeten/bp/u$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lorg/threeten/bp/h;->k(Lorg/threeten/bp/temporal/h;)J

    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/u;->o()Lorg/threeten/bp/s;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lorg/threeten/bp/s;->v()I

    .line 36
    move-result p1

    .line 37
    int-to-long v0, p1

    .line 38
    return-wide v0

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/f;->t()J

    .line 42
    move-result-wide v0

    .line 43
    return-wide v0

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 47
    move-result-wide v0

    .line 48
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->M(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o()Lorg/threeten/bp/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    return-object v0
.end method

.method public p()Lorg/threeten/bp/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    return-object v0
.end method

.method public bridge synthetic r(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->E(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->M(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
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
    iget-object v1, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/threeten/bp/h;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

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
    .line 29
    iget-object v1, p0, Lorg/threeten/bp/u;->offset:Lorg/threeten/bp/s;

    .line 30
    .line 31
    iget-object v2, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 32
    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const/16 v0, 0x5b

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget-object v0, p0, Lorg/threeten/bp/u;->zone:Lorg/threeten/bp/r;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/threeten/bp/r;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const/16 v0, 0x5d

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    :cond_0
    return-object v0
.end method

.method public bridge synthetic v()Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/u;->S()Lorg/threeten/bp/g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic w()Lorg/threeten/bp/chrono/c;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/u;->T()Lorg/threeten/bp/h;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public x()Lorg/threeten/bp/i;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/u;->dateTime:Lorg/threeten/bp/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/h;->x()Lorg/threeten/bp/i;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/u;->U(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/u;->V(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
