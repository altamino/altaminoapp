.class public final Lorg/threeten/bp/h;
.super Lorg/threeten/bp/chrono/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/c<",
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
            "Lorg/threeten/bp/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/h;

.field public static final MIN:Lorg/threeten/bp/h;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Lorg/threeten/bp/g;

.field private final time:Lorg/threeten/bp/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/threeten/bp/g;->MIN:Lorg/threeten/bp/g;

    .line 3
    .line 4
    sget-object v1, Lorg/threeten/bp/i;->MIN:Lorg/threeten/bp/i;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/threeten/bp/h;->I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sput-object v0, Lorg/threeten/bp/h;->MIN:Lorg/threeten/bp/h;

    .line 11
    .line 12
    sget-object v0, Lorg/threeten/bp/g;->MAX:Lorg/threeten/bp/g;

    .line 13
    .line 14
    sget-object v1, Lorg/threeten/bp/i;->MAX:Lorg/threeten/bp/i;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lorg/threeten/bp/h;->I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sput-object v0, Lorg/threeten/bp/h;->MAX:Lorg/threeten/bp/h;

    .line 21
    .line 22
    new-instance v0, Lorg/threeten/bp/h$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Lorg/threeten/bp/h$a;-><init>()V

    .line 26
    .line 27
    sput-object v0, Lorg/threeten/bp/h;->FROM:Lorg/threeten/bp/temporal/j;

    .line 28
    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/c;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 8
    return-void
.end method

.method private C(Lorg/threeten/bp/h;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/threeten/bp/h;->T()Lorg/threeten/bp/g;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/threeten/bp/g;->y(Lorg/threeten/bp/g;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/threeten/bp/h;->x()Lorg/threeten/bp/i;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->o(Lorg/threeten/bp/i;)I

    .line 22
    move-result v0

    .line 23
    :cond_0
    return v0
.end method

.method public static D(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/h;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lorg/threeten/bp/h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lorg/threeten/bp/h;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, Lorg/threeten/bp/u;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Lorg/threeten/bp/u;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/threeten/bp/u;->T()Lorg/threeten/bp/h;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    .line 20
    .line 21
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/threeten/bp/g;->A(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/g;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lorg/threeten/bp/i;->q(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/i;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Lorg/threeten/bp/h;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/h;-><init>(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)V
    :try_end_0
    .catch Lorg/threeten/bp/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v2

    .line 33
    .line 34
    :catch_0
    new-instance v0, Lorg/threeten/bp/b;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v2, "Unable to obtain LocalDateTime from TemporalAccessor: "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, ", type "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p0}, Lorg/threeten/bp/b;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0
.end method

.method public static I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;
    .locals 1

    .line 1
    .line 2
    const-string v0, "date"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "time"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Lorg/threeten/bp/h;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/h;-><init>(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)V

    .line 16
    return-object v0
.end method

.method public static J(JILorg/threeten/bp/s;)Lorg/threeten/bp/h;
    .locals 2

    .line 1
    .line 2
    const-string v0, "offset"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Lorg/threeten/bp/s;->v()I

    .line 9
    move-result p3

    .line 10
    int-to-long v0, p3

    .line 11
    add-long/2addr p0, v0

    .line 12
    .line 13
    .line 14
    const-wide/32 v0, 0x15180

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, v0, v1}, Lra/d;->e(JJ)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    const p3, 0x15180

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1, p3}, Lra/d;->g(JI)I

    .line 25
    move-result p0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lorg/threeten/bp/g;->S(J)Lorg/threeten/bp/g;

    .line 29
    move-result-object p1

    .line 30
    int-to-long v0, p0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, p2}, Lorg/threeten/bp/i;->z(JI)Lorg/threeten/bp/i;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    new-instance p2, Lorg/threeten/bp/h;

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, p1, p0}, Lorg/threeten/bp/h;-><init>(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)V

    .line 40
    return-object p2
.end method

.method private R(Lorg/threeten/bp/g;JJJJI)Lorg/threeten/bp/h;
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    or-long v2, p2, p4

    .line 7
    .line 8
    or-long v2, v2, p6

    .line 9
    .line 10
    or-long v2, v2, p8

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 22
    move-result-object v1

    .line 23
    return-object v1

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 29
    .line 30
    div-long v4, p8, v2

    .line 31
    .line 32
    .line 33
    const-wide/32 v6, 0x15180

    .line 34
    .line 35
    div-long v8, p6, v6

    .line 36
    add-long/2addr v4, v8

    .line 37
    .line 38
    const-wide/16 v8, 0x5a0

    .line 39
    .line 40
    div-long v10, p4, v8

    .line 41
    add-long/2addr v4, v10

    .line 42
    .line 43
    const-wide/16 v10, 0x18

    .line 44
    .line 45
    div-long v12, p2, v10

    .line 46
    add-long/2addr v4, v12

    .line 47
    .line 48
    move/from16 v12, p10

    .line 49
    int-to-long v12, v12

    .line 50
    mul-long/2addr v4, v12

    .line 51
    .line 52
    rem-long v14, p8, v2

    .line 53
    .line 54
    rem-long v6, p6, v6

    .line 55
    .line 56
    .line 57
    const-wide/32 v16, 0x3b9aca00

    .line 58
    .line 59
    mul-long v6, v6, v16

    .line 60
    add-long/2addr v14, v6

    .line 61
    .line 62
    rem-long v6, p4, v8

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide v8, 0xdf8475800L

    .line 68
    mul-long/2addr v6, v8

    .line 69
    add-long/2addr v14, v6

    .line 70
    .line 71
    rem-long v6, p2, v10

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const-wide v8, 0x34630b8a000L

    .line 77
    mul-long/2addr v6, v8

    .line 78
    add-long/2addr v14, v6

    .line 79
    .line 80
    iget-object v6, v0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Lorg/threeten/bp/i;->G()J

    .line 84
    move-result-wide v6

    .line 85
    mul-long/2addr v14, v12

    .line 86
    add-long/2addr v14, v6

    .line 87
    .line 88
    .line 89
    invoke-static {v14, v15, v2, v3}, Lra/d;->e(JJ)J

    .line 90
    move-result-wide v8

    .line 91
    add-long/2addr v4, v8

    .line 92
    .line 93
    .line 94
    invoke-static {v14, v15, v2, v3}, Lra/d;->h(JJ)J

    .line 95
    move-result-wide v2

    .line 96
    .line 97
    cmp-long v6, v2, v6

    .line 98
    .line 99
    if-nez v6, :cond_1

    .line 100
    .line 101
    iget-object v2, v0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-static {v2, v3}, Lorg/threeten/bp/i;->x(J)Lorg/threeten/bp/i;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {v1, v4, v5}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 114
    move-result-object v1

    .line 115
    return-object v1
.end method

.method static S(Ljava/io/DataInput;)Lorg/threeten/bp/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/threeten/bp/g;->Z(Ljava/io/DataInput;)Lorg/threeten/bp/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/threeten/bp/i;->F(Ljava/io/DataInput;)Lorg/threeten/bp/i;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lorg/threeten/bp/h;->I(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/threeten/bp/h;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/h;-><init>(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)V

    .line 15
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

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/o;

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/o;-><init>(BLjava/lang/Object;)V

    .line 7
    return-object v0
.end method


# virtual methods
.method public A(Lorg/threeten/bp/s;)Lorg/threeten/bp/l;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/threeten/bp/l;->s(Lorg/threeten/bp/h;Lorg/threeten/bp/s;)Lorg/threeten/bp/l;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public B(Lorg/threeten/bp/r;)Lorg/threeten/bp/u;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/threeten/bp/u;->H(Lorg/threeten/bp/h;Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public E()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/i;->t()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public F()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/i;->u()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public G()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/g;->J()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public H(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lorg/threeten/bp/temporal/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 8
    .line 9
    sget-object v1, Lorg/threeten/bp/h$b;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    move-result v0

    .line 14
    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/g;->U(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/g;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p2, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    :pswitch_0
    const-wide/16 v0, 0x100

    .line 34
    .line 35
    div-long v2, p1, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/h;->L(J)Lorg/threeten/bp/h;

    .line 39
    move-result-object p3

    .line 40
    rem-long/2addr p1, v0

    .line 41
    .line 42
    const-wide/16 v0, 0xc

    .line 43
    mul-long/2addr p1, v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1, p2}, Lorg/threeten/bp/h;->M(J)Lorg/threeten/bp/h;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    .line 50
    .line 51
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/h;->M(J)Lorg/threeten/bp/h;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    .line 56
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/h;->N(J)Lorg/threeten/bp/h;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    .line 60
    .line 61
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/h;->Q(J)Lorg/threeten/bp/h;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    .line 65
    .line 66
    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 67
    .line 68
    div-long v2, p1, v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/h;->L(J)Lorg/threeten/bp/h;

    .line 72
    move-result-object p3

    .line 73
    rem-long/2addr p1, v0

    .line 74
    .line 75
    .line 76
    const-wide/32 v0, 0xf4240

    .line 77
    mul-long/2addr p1, v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p1, p2}, Lorg/threeten/bp/h;->P(J)Lorg/threeten/bp/h;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 88
    .line 89
    div-long v2, p1, v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/h;->L(J)Lorg/threeten/bp/h;

    .line 93
    move-result-object p3

    .line 94
    rem-long/2addr p1, v0

    .line 95
    .line 96
    const-wide/16 v0, 0x3e8

    .line 97
    mul-long/2addr p1, v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p1, p2}, Lorg/threeten/bp/h;->P(J)Lorg/threeten/bp/h;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    .line 104
    .line 105
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/h;->P(J)Lorg/threeten/bp/h;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    .line 109
    .line 110
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    check-cast p1, Lorg/threeten/bp/h;

    .line 114
    return-object p1

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public L(J)Lorg/threeten/bp/h;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->V(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public M(J)Lorg/threeten/bp/h;
    .locals 11

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    const-wide/16 v4, 0x0

    .line 5
    .line 6
    const-wide/16 v6, 0x0

    .line 7
    .line 8
    const-wide/16 v8, 0x0

    .line 9
    const/4 v10, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move-wide v2, p1

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/h;->R(Lorg/threeten/bp/g;JJJJI)Lorg/threeten/bp/h;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public N(J)Lorg/threeten/bp/h;
    .locals 11

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v6, 0x0

    .line 7
    .line 8
    const-wide/16 v8, 0x0

    .line 9
    const/4 v10, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move-wide v4, p1

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/h;->R(Lorg/threeten/bp/g;JJJJI)Lorg/threeten/bp/h;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public O(J)Lorg/threeten/bp/h;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/g;->W(J)Lorg/threeten/bp/g;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public P(J)Lorg/threeten/bp/h;
    .locals 11

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    const-wide/16 v6, 0x0

    .line 9
    const/4 v10, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move-wide v8, p1

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/h;->R(Lorg/threeten/bp/g;JJJJI)Lorg/threeten/bp/h;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public Q(J)Lorg/threeten/bp/h;
    .locals 11

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    const-wide/16 v8, 0x0

    .line 9
    const/4 v10, 0x1

    .line 10
    move-object v0, p0

    .line 11
    move-wide v6, p1

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v10}, Lorg/threeten/bp/h;->R(Lorg/threeten/bp/g;JJJJI)Lorg/threeten/bp/h;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public T()Lorg/threeten/bp/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    return-object v0
.end method

.method public V(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/h;
    .locals 1

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
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/i;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 20
    .line 21
    check-cast p1, Lorg/threeten/bp/i;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/h;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Lorg/threeten/bp/h;

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
    check-cast p1, Lorg/threeten/bp/h;

    .line 40
    return-object p1
.end method

.method public W(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/h;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->e()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/i;->J(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/i;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/g;->c0(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/g;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p2, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/h;->U(Lorg/threeten/bp/g;Lorg/threeten/bp/i;)Lorg/threeten/bp/h;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lorg/threeten/bp/h;

    .line 43
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
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->h0(Ljava/io/DataOutput;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->O(Ljava/io/DataOutput;)V

    .line 11
    return-void
.end method

.method public b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/c;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 4
    move-result-object p1

    .line 5
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
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->e()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 23
    move-result-object p1

    .line 24
    :goto_0
    return-object p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->f(Lorg/threeten/bp/temporal/e;)Lorg/threeten/bp/temporal/m;

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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/h;->o(Lorg/threeten/bp/chrono/c;)I

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
    invoke-static {}, Lorg/threeten/bp/temporal/i;->b()Lorg/threeten/bp/temporal/j;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/threeten/bp/h;->T()Lorg/threeten/bp/g;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/c;->d(Lorg/threeten/bp/temporal/j;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->H(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

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
    instance-of v1, p1, Lorg/threeten/bp/h;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lorg/threeten/bp/h;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lorg/threeten/bp/g;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lorg/threeten/bp/i;->equals(Ljava/lang/Object;)Z

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
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/temporal/a;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->e()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->f(Lorg/threeten/bp/temporal/h;)I

    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->f(Lorg/threeten/bp/temporal/h;)I

    .line 23
    move-result p1

    .line 24
    :goto_0
    return p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-super {p0, p1}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->W(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/threeten/bp/g;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/threeten/bp/i;->hashCode()I

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
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->a()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->e()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :cond_1
    :goto_0
    return v1

    .line 22
    .line 23
    :cond_2
    if-eqz p1, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->c(Lorg/threeten/bp/temporal/e;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    goto :goto_1

    .line 31
    :cond_3
    move v1, v2

    .line 32
    :goto_1
    return v1
.end method

.method public bridge synthetic j(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/h;->V(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/h;

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
    .line 7
    invoke-interface {p1}, Lorg/threeten/bp/temporal/h;->e()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/threeten/bp/i;->k(Lorg/threeten/bp/temporal/h;)J

    .line 16
    move-result-wide v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lorg/threeten/bp/g;->k(Lorg/threeten/bp/temporal/h;)J

    .line 23
    move-result-wide v0

    .line 24
    :goto_0
    return-wide v0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/h;->h(Lorg/threeten/bp/temporal/e;)J

    .line 28
    move-result-wide v0

    .line 29
    return-wide v0
.end method

.method public bridge synthetic l(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic n(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/h;->B(Lorg/threeten/bp/r;)Lorg/threeten/bp/u;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(Lorg/threeten/bp/chrono/c;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)I"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/h;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/h;->C(Lorg/threeten/bp/h;)I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/c;->o(Lorg/threeten/bp/chrono/c;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public q(Lorg/threeten/bp/chrono/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/h;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/h;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/h;->C(Lorg/threeten/bp/h;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/c;->q(Lorg/threeten/bp/chrono/c;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public r(Lorg/threeten/bp/chrono/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/chrono/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/h;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/h;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/threeten/bp/h;->C(Lorg/threeten/bp/h;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/c;->r(Lorg/threeten/bp/chrono/c;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public bridge synthetic s(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->H(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->K(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
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
    iget-object v1, p0, Lorg/threeten/bp/h;->date:Lorg/threeten/bp/g;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/threeten/bp/g;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/16 v1, 0x54

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/threeten/bp/i;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public bridge synthetic w()Lorg/threeten/bp/chrono/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/h;->T()Lorg/threeten/bp/g;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public x()Lorg/threeten/bp/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/h;->time:Lorg/threeten/bp/i;

    return-object v0
.end method

.method public bridge synthetic y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/h;->V(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic z(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/h;->W(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/h;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
