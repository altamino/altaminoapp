.class public final Lorg/threeten/bp/f;
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
        "Lorg/threeten/bp/f;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EPOCH:Lorg/threeten/bp/f;

.field public static final FROM:Lorg/threeten/bp/temporal/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/j<",
            "Lorg/threeten/bp/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/f;

.field private static final MAX_SECOND:J = 0x701cd2fa9578ffL

.field private static final MILLIS_PER_SEC:J = 0x3e8L

.field public static final MIN:Lorg/threeten/bp/f;

.field private static final MIN_SECOND:J = -0x701cefeb9bec00L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final serialVersionUID:J = -0x93d170fdcc5dce4L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lorg/threeten/bp/f;-><init>(JI)V

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/f;->EPOCH:Lorg/threeten/bp/f;

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v0, -0x701cefeb9bec00L

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    sput-object v0, Lorg/threeten/bp/f;->MIN:Lorg/threeten/bp/f;

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    const-wide v0, 0x701cd2fa9578ffL

    .line 27
    .line 28
    .line 29
    const-wide/32 v2, 0x3b9ac9ff

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sput-object v0, Lorg/threeten/bp/f;->MAX:Lorg/threeten/bp/f;

    .line 36
    .line 37
    new-instance v0, Lorg/threeten/bp/f$a;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Lorg/threeten/bp/f$a;-><init>()V

    .line 41
    .line 42
    sput-object v0, Lorg/threeten/bp/f;->FROM:Lorg/threeten/bp/temporal/j;

    .line 43
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lra/c;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/threeten/bp/f;->seconds:J

    .line 6
    .line 7
    iput p3, p0, Lorg/threeten/bp/f;->nanos:I

    .line 8
    return-void
.end method

.method static A(Ljava/io/DataInput;)Lorg/threeten/bp/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    .line 8
    move-result p0

    .line 9
    int-to-long v2, p0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static o(JI)Lorg/threeten/bp/f;
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    or-long/2addr v0, p0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lorg/threeten/bp/f;->EPOCH:Lorg/threeten/bp/f;

    .line 11
    return-object p0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    .line 17
    .line 18
    cmp-long v0, p0, v0

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v0, 0x701cd2fa9578ffL

    .line 26
    .line 27
    cmp-long v0, p0, v0

    .line 28
    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lorg/threeten/bp/f;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0, p1, p2}, Lorg/threeten/bp/f;-><init>(JI)V

    .line 35
    return-object v0

    .line 36
    .line 37
    :cond_1
    new-instance p0, Lorg/threeten/bp/b;

    .line 38
    .line 39
    const-string p1, "Instant exceeds minimum or maximum instant"

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 43
    throw p0
.end method

.method public static p(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/f;
    .locals 4

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object v2, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/e;->f(Lorg/threeten/bp/temporal/h;)I

    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .line 21
    new-instance v1, Lorg/threeten/bp/b;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, "Unable to obtain Instant from TemporalAccessor: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, ", type "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0, v0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    throw v1
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

.method public static t(J)Lorg/threeten/bp/f;
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0, v1}, Lra/d;->e(JJ)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v2}, Lra/d;->g(JI)I

    .line 12
    move-result p0

    .line 13
    .line 14
    .line 15
    const p1, 0xf4240

    .line 16
    mul-int/2addr p0, p1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Lorg/threeten/bp/f;->o(JI)Lorg/threeten/bp/f;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static u(JJ)Lorg/threeten/bp/f;
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x3b9aca00

    .line 4
    .line 5
    .line 6
    invoke-static {p2, p3, v0, v1}, Lra/d;->e(JJ)J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1, v0, v1}, Lra/d;->k(JJ)J

    .line 11
    move-result-wide p0

    .line 12
    .line 13
    .line 14
    const v0, 0x3b9aca00

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p3, v0}, Lra/d;->g(JI)I

    .line 18
    move-result p2

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/f;->o(JI)Lorg/threeten/bp/f;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private v(JJ)Lorg/threeten/bp/f;
    .locals 4

    .line 1
    .line 2
    or-long v0, p1, p3

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1, p2}, Lra/d;->k(JJ)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    .line 18
    const-wide/32 v0, 0x3b9aca00

    .line 19
    .line 20
    div-long v2, p3, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, v2, v3}, Lra/d;->k(JJ)J

    .line 24
    move-result-wide p1

    .line 25
    rem-long/2addr p3, v0

    .line 26
    .line 27
    iget v0, p0, Lorg/threeten/bp/f;->nanos:I

    .line 28
    int-to-long v0, v0

    .line 29
    add-long/2addr v0, p3

    .line 30
    .line 31
    .line 32
    invoke-static {p1, p2, v0, v1}, Lorg/threeten/bp/f;->u(JJ)Lorg/threeten/bp/f;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public B()J
    .locals 8

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    .line 9
    const v3, 0xf4240

    .line 10
    .line 11
    const-wide/16 v4, 0x3e8

    .line 12
    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v4, v5}, Lra/d;->m(JJ)J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    iget v2, p0, Lorg/threeten/bp/f;->nanos:I

    .line 20
    div-int/2addr v2, v3

    .line 21
    int-to-long v2, v2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lra/d;->k(JJ)J

    .line 25
    move-result-wide v0

    .line 26
    return-wide v0

    .line 27
    .line 28
    :cond_0
    const-wide/16 v6, 0x1

    .line 29
    add-long/2addr v0, v6

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v4, v5}, Lra/d;->m(JJ)J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    iget v2, p0, Lorg/threeten/bp/f;->nanos:I

    .line 36
    div-int/2addr v2, v3

    .line 37
    int-to-long v2, v2

    .line 38
    sub-long/2addr v4, v2

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v4, v5}, Lra/d;->o(JJ)J

    .line 42
    move-result-wide v0

    .line 43
    return-wide v0
.end method

.method public C(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/f;

    .line 7
    return-object p1
.end method

.method public D(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/f;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/a;->j(J)J

    .line 11
    .line 12
    sget-object v1, Lorg/threeten/bp/f$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v0

    .line 17
    .line 18
    aget v0, v1, v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    if-eq v0, v1, :cond_6

    .line 22
    const/4 v1, 0x2

    .line 23
    .line 24
    if-eq v0, v1, :cond_4

    .line 25
    const/4 v1, 0x3

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    const/4 v1, 0x4

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    .line 33
    .line 34
    cmp-long p1, p2, v0

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p3, p1}, Lorg/threeten/bp/f;->o(JI)Lorg/threeten/bp/f;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p1, p0

    .line 45
    :goto_0
    return-object p1

    .line 46
    .line 47
    :cond_1
    new-instance p2, Lorg/threeten/bp/temporal/l;

    .line 48
    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v0, "Unsupported field: "

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 68
    throw p2

    .line 69
    :cond_2
    long-to-int p1, p2

    .line 70
    .line 71
    .line 72
    const p2, 0xf4240

    .line 73
    mul-int/2addr p1, p2

    .line 74
    .line 75
    iget p2, p0, Lorg/threeten/bp/f;->nanos:I

    .line 76
    .line 77
    if-eq p1, p2, :cond_3

    .line 78
    .line 79
    iget-wide p2, p0, Lorg/threeten/bp/f;->seconds:J

    .line 80
    .line 81
    .line 82
    invoke-static {p2, p3, p1}, Lorg/threeten/bp/f;->o(JI)Lorg/threeten/bp/f;

    .line 83
    move-result-object p1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move-object p1, p0

    .line 86
    :goto_1
    return-object p1

    .line 87
    :cond_4
    long-to-int p1, p2

    .line 88
    .line 89
    mul-int/lit16 p1, p1, 0x3e8

    .line 90
    .line 91
    iget p2, p0, Lorg/threeten/bp/f;->nanos:I

    .line 92
    .line 93
    if-eq p1, p2, :cond_5

    .line 94
    .line 95
    iget-wide p2, p0, Lorg/threeten/bp/f;->seconds:J

    .line 96
    .line 97
    .line 98
    invoke-static {p2, p3, p1}, Lorg/threeten/bp/f;->o(JI)Lorg/threeten/bp/f;

    .line 99
    move-result-object p1

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    move-object p1, p0

    .line 102
    :goto_2
    return-object p1

    .line 103
    .line 104
    :cond_6
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 105
    int-to-long v0, p1

    .line 106
    .line 107
    cmp-long p1, p2, v0

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    .line 112
    long-to-int p1, p2

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1, p1}, Lorg/threeten/bp/f;->o(JI)Lorg/threeten/bp/f;

    .line 116
    move-result-object p1

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move-object p1, p0

    .line 119
    :goto_3
    return-object p1

    .line 120
    .line 121
    .line 122
    :cond_8
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Lorg/threeten/bp/f;

    .line 126
    return-object p1
.end method

.method E(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 6
    .line 7
    iget v0, p0, Lorg/threeten/bp/f;->nanos:I

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 11
    return-void
.end method

.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    iget-wide v1, p0, Lorg/threeten/bp/f;->seconds:J

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 11
    .line 12
    iget v1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 13
    int-to-long v1, v1

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0, v1, v2}, Lorg/threeten/bp/temporal/d;->h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lorg/threeten/bp/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/threeten/bp/f;->n(Lorg/threeten/bp/f;)I

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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lorg/threeten/bp/temporal/i;->c()Lorg/threeten/bp/temporal/j;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lorg/threeten/bp/temporal/i;->a()Lorg/threeten/bp/temporal/j;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lorg/threeten/bp/temporal/i;->g()Lorg/threeten/bp/temporal/j;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lorg/threeten/bp/temporal/i;->f()Lorg/threeten/bp/temporal/j;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-eq p1, v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/threeten/bp/temporal/i;->d()Lorg/threeten/bp/temporal/j;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-ne p1, v0, :cond_1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/j;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 53
    return-object p1
.end method

.method public bridge synthetic e(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/f;->s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

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
    instance-of v1, p1, Lorg/threeten/bp/f;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/f;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/threeten/bp/f;->seconds:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/threeten/bp/f;->seconds:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 22
    .line 23
    iget p1, p1, Lorg/threeten/bp/f;->nanos:I

    .line 24
    .line 25
    if-ne v1, p1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    return v0

    .line 29
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
    if-eqz v0, :cond_3

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/f$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    if-eq v0, v1, :cond_2

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    const/4 v1, 0x3

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 27
    .line 28
    .line 29
    const v0, 0xf4240

    .line 30
    div-int/2addr p1, v0

    .line 31
    return p1

    .line 32
    .line 33
    :cond_0
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v2, "Unsupported field: "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    .line 56
    :cond_1
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 57
    .line 58
    div-int/lit16 p1, p1, 0x3e8

    .line 59
    return p1

    .line 60
    .line 61
    :cond_2
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 62
    return p1

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/f;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 70
    move-result-wide v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 74
    move-result p1

    .line 75
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/f;->D(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lorg/threeten/bp/f;->nanos:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

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
    sget-object v0, Lorg/threeten/bp/temporal/a;->INSTANT_SECONDS:Lorg/threeten/bp/temporal/a;

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lorg/threeten/bp/temporal/a;->NANO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lorg/threeten/bp/temporal/a;->MICRO_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lorg/threeten/bp/temporal/a;->MILLI_OF_SECOND:Lorg/threeten/bp/temporal/a;

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :cond_1
    :goto_0
    return v1

    .line 26
    .line 27
    :cond_2
    if-eqz p1, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    move v1, v2

    .line 36
    :goto_1
    return v1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/f;->C(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lorg/threeten/bp/temporal/h;)J
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/f$b;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

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
    if-eq v0, v1, :cond_3

    .line 19
    const/4 v1, 0x2

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    const/4 v1, 0x3

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    const/4 v1, 0x4

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    .line 30
    return-wide v0

    .line 31
    .line 32
    :cond_0
    new-instance v0, Lorg/threeten/bp/temporal/l;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "Unsupported field: "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p1}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    .line 55
    :cond_1
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 56
    .line 57
    .line 58
    const v0, 0xf4240

    .line 59
    div-int/2addr p1, v0

    .line 60
    :goto_0
    int-to-long v0, p1

    .line 61
    return-wide v0

    .line 62
    .line 63
    :cond_2
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 64
    .line 65
    div-int/lit16 p1, p1, 0x3e8

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_3
    iget p1, p0, Lorg/threeten/bp/f;->nanos:I

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 73
    move-result-wide v0

    .line 74
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/f;->w(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/f;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/f;)I
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    .line 3
    .line 4
    iget-wide v2, p1, Lorg/threeten/bp/f;->seconds:J

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lra/d;->b(JJ)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lorg/threeten/bp/f;->nanos:I

    .line 14
    .line 15
    iget p1, p1, Lorg/threeten/bp/f;->nanos:I

    .line 16
    sub-int/2addr v0, p1

    .line 17
    return v0
.end method

.method public q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/threeten/bp/f;->seconds:J

    return-wide v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/threeten/bp/f;->nanos:I

    return v0
.end method

.method public s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/f;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/f;->w(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/f;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/f;->w(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/f;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/f;->w(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/f;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/format/b;->ISO_INSTANT:Lorg/threeten/bp/format/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/threeten/bp/format/b;->a(Lorg/threeten/bp/temporal/e;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public w(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/f;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lorg/threeten/bp/f$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 7
    move-object v1, p3

    .line 8
    .line 9
    check-cast v1, Lorg/threeten/bp/temporal/b;

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
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    new-instance p1, Lorg/threeten/bp/temporal/l;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v0, "Unsupported unit: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Lorg/threeten/bp/temporal/l;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1

    .line 42
    .line 43
    .line 44
    :pswitch_0
    const p3, 0x15180

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 48
    move-result-wide p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/f;->z(J)Lorg/threeten/bp/f;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    .line 56
    :pswitch_1
    const p3, 0xa8c0

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 60
    move-result-wide p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/f;->z(J)Lorg/threeten/bp/f;

    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    .line 67
    :pswitch_2
    const/16 p3, 0xe10

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 71
    move-result-wide p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/f;->z(J)Lorg/threeten/bp/f;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    .line 78
    :pswitch_3
    const/16 p3, 0x3c

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2, p3}, Lra/d;->l(JI)J

    .line 82
    move-result-wide p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/f;->z(J)Lorg/threeten/bp/f;

    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    .line 89
    .line 90
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/f;->z(J)Lorg/threeten/bp/f;

    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    .line 94
    .line 95
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/f;->x(J)Lorg/threeten/bp/f;

    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    .line 99
    .line 100
    :pswitch_6
    const-wide/32 v0, 0xf4240

    .line 101
    .line 102
    div-long v2, p1, v0

    .line 103
    rem-long/2addr p1, v0

    .line 104
    .line 105
    const-wide/16 v0, 0x3e8

    .line 106
    mul-long/2addr p1, v0

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v2, v3, p1, p2}, Lorg/threeten/bp/f;->v(JJ)Lorg/threeten/bp/f;

    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    .line 113
    .line 114
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/f;->y(J)Lorg/threeten/bp/f;

    .line 115
    move-result-object p1

    .line 116
    return-object p1

    .line 117
    .line 118
    .line 119
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    check-cast p1, Lorg/threeten/bp/f;

    .line 123
    return-object p1

    .line 124
    nop

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x(J)Lorg/threeten/bp/f;
    .locals 4

    .line 1
    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    .line 4
    div-long v2, p1, v0

    .line 5
    rem-long/2addr p1, v0

    .line 6
    .line 7
    .line 8
    const-wide/32 v0, 0xf4240

    .line 9
    mul-long/2addr p1, v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v2, v3, p1, p2}, Lorg/threeten/bp/f;->v(JJ)Lorg/threeten/bp/f;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public y(J)Lorg/threeten/bp/f;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/threeten/bp/f;->v(JJ)Lorg/threeten/bp/f;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public z(J)Lorg/threeten/bp/f;
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/threeten/bp/f;->v(JJ)Lorg/threeten/bp/f;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
