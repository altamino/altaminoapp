.class final Lorg/threeten/bp/chrono/d;
.super Lorg/threeten/bp/chrono/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/threeten/bp/chrono/b;",
        ">",
        "Lorg/threeten/bp/chrono/c<",
        "TD;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MICROS_PER_DAY:J = 0x141dd76000L

.field private static final MILLIS_PER_DAY:J = 0x5265c00L

.field private static final MINUTES_PER_DAY:I = 0x5a0

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final NANOS_PER_DAY:J = 0x4e94914f0000L

.field private static final NANOS_PER_HOUR:J = 0x34630b8a000L

.field private static final NANOS_PER_MINUTE:J = 0xdf8475800L

.field private static final NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final date:Lorg/threeten/bp/chrono/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final time:Lorg/threeten/bp/i;


# direct methods
.method private constructor <init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lorg/threeten/bp/i;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/c;-><init>()V

    .line 4
    .line 5
    const-string v0, "date"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    const-string v0, "time"

    .line 11
    .line 12
    .line 13
    invoke-static {p2, v0}, Lra/d;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 16
    .line 17
    iput-object p2, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 18
    return-void
.end method

.method static A(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lorg/threeten/bp/chrono/b;",
            ">(TR;",
            "Lorg/threeten/bp/i;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TR;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/chrono/d;-><init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/i;)V

    .line 6
    return-object v0
.end method

.method private C(J)Lorg/threeten/bp/chrono/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    sget-object v1, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lorg/threeten/bp/chrono/b;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object p2, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private D(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

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
    move-object v0, p0

    .line 10
    move-wide v2, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->H(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private E(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

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
    move-object v0, p0

    .line 10
    move-wide v4, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->H(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private F(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

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
    move-object v0, p0

    .line 10
    move-wide v8, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->H(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private H(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

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
    iget-object v2, v0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

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
    rem-long v12, p8, v2

    .line 49
    .line 50
    rem-long v6, p6, v6

    .line 51
    .line 52
    .line 53
    const-wide/32 v14, 0x3b9aca00

    .line 54
    mul-long/2addr v6, v14

    .line 55
    add-long/2addr v12, v6

    .line 56
    .line 57
    rem-long v6, p4, v8

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide v8, 0xdf8475800L

    .line 63
    mul-long/2addr v6, v8

    .line 64
    add-long/2addr v12, v6

    .line 65
    .line 66
    rem-long v6, p2, v10

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const-wide v8, 0x34630b8a000L

    .line 72
    mul-long/2addr v6, v8

    .line 73
    add-long/2addr v12, v6

    .line 74
    .line 75
    iget-object v6, v0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Lorg/threeten/bp/i;->G()J

    .line 79
    move-result-wide v6

    .line 80
    add-long/2addr v12, v6

    .line 81
    .line 82
    .line 83
    invoke-static {v12, v13, v2, v3}, Lra/d;->e(JJ)J

    .line 84
    move-result-wide v8

    .line 85
    add-long/2addr v4, v8

    .line 86
    .line 87
    .line 88
    invoke-static {v12, v13, v2, v3}, Lra/d;->h(JJ)J

    .line 89
    move-result-wide v2

    .line 90
    .line 91
    cmp-long v6, v2, v6

    .line 92
    .line 93
    if-nez v6, :cond_1

    .line 94
    .line 95
    iget-object v2, v0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-static {v2, v3}, Lorg/threeten/bp/i;->x(J)Lorg/threeten/bp/i;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    :goto_0
    sget-object v3, Lorg/threeten/bp/temporal/b;->DAYS:Lorg/threeten/bp/temporal/b;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v4, v5, v3}, Lorg/threeten/bp/chrono/b;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

    .line 110
    move-result-object v1

    .line 111
    return-object v1
.end method

.method static I(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lorg/threeten/bp/chrono/c<",
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
    check-cast v0, Lorg/threeten/bp/chrono/b;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lorg/threeten/bp/i;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/b;->n(Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/c;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/d;",
            "Lorg/threeten/bp/i;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 7
    .line 8
    if-ne v1, p2, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->c(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/b;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance v0, Lorg/threeten/bp/chrono/d;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lorg/threeten/bp/chrono/d;-><init>(Lorg/threeten/bp/chrono/b;Lorg/threeten/bp/i;)V

    .line 23
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/threeten/bp/chrono/u;

    .line 3
    .line 4
    const/16 v1, 0xc

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/u;-><init>(BLjava/lang/Object;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public B(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/threeten/bp/temporal/k;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
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
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lorg/threeten/bp/temporal/b;

    .line 8
    .line 9
    sget-object v1, Lorg/threeten/bp/chrono/d$a;->$SwitchMap$org$threeten$bp$temporal$ChronoUnit:[I

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/b;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p2, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

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
    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/d;->C(J)Lorg/threeten/bp/chrono/d;

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
    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/d;->D(J)Lorg/threeten/bp/chrono/d;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    .line 50
    .line 51
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->D(J)Lorg/threeten/bp/chrono/d;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    .line 56
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->E(J)Lorg/threeten/bp/chrono/d;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    .line 60
    .line 61
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->G(J)Lorg/threeten/bp/chrono/d;

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
    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/d;->C(J)Lorg/threeten/bp/chrono/d;

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
    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/d;->F(J)Lorg/threeten/bp/chrono/d;

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
    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/d;->C(J)Lorg/threeten/bp/chrono/d;

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
    invoke-direct {p3, p1, p2}, Lorg/threeten/bp/chrono/d;->F(J)Lorg/threeten/bp/chrono/d;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    .line 104
    .line 105
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->F(J)Lorg/threeten/bp/chrono/d;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    .line 109
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-interface {p3, p0, p1, p2}, Lorg/threeten/bp/temporal/k;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    .line 121
    move-result-object p1

    .line 122
    return-object p1

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
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
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

.method G(J)Lorg/threeten/bp/chrono/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

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
    move-object v0, p0

    .line 10
    move-wide v6, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v9}, Lorg/threeten/bp/chrono/d;->H(Lorg/threeten/bp/chrono/b;JJJJ)Lorg/threeten/bp/chrono/d;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public K(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/f;",
            ")",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/threeten/bp/chrono/b;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 20
    .line 21
    check-cast p1, Lorg/threeten/bp/i;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    instance-of v0, p1, Lorg/threeten/bp/chrono/d;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast p1, Lorg/threeten/bp/chrono/d;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/f;->b(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/temporal/d;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Lorg/threeten/bp/chrono/d;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public L(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/h;",
            "J)",
            "Lorg/threeten/bp/chrono/d<",
            "TD;>;"
        }
    .end annotation

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, p2, p3}, Lorg/threeten/bp/i;->J(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/i;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lorg/threeten/bp/chrono/b;->w(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/b;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p2, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/chrono/d;->J(Lorg/threeten/bp/temporal/d;Lorg/threeten/bp/i;)Lorg/threeten/bp/chrono/d;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/threeten/bp/chrono/b;->p()Lorg/threeten/bp/chrono/h;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/h;->b(Lorg/threeten/bp/temporal/d;J)Lorg/threeten/bp/temporal/d;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lorg/threeten/bp/chrono/h;->d(Lorg/threeten/bp/temporal/d;)Lorg/threeten/bp/chrono/d;

    .line 50
    move-result-object p1

    .line 51
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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lra/c;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

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

.method public f(Lorg/threeten/bp/temporal/h;)I
    .locals 3

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lra/c;->f(Lorg/threeten/bp/temporal/h;)I

    .line 23
    move-result p1

    .line 24
    :goto_0
    return p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->c(Lorg/threeten/bp/temporal/h;)Lorg/threeten/bp/temporal/m;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->k(Lorg/threeten/bp/temporal/h;)J

    .line 32
    move-result-wide v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p1}, Lorg/threeten/bp/temporal/m;->a(JLorg/threeten/bp/temporal/h;)I

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public bridge synthetic h(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/temporal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->L(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->K(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/d;

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lorg/threeten/bp/temporal/e;->k(Lorg/threeten/bp/temporal/h;)J

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->B(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public n(Lorg/threeten/bp/r;)Lorg/threeten/bp/chrono/f;
    .locals 1
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
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lorg/threeten/bp/chrono/g;->C(Lorg/threeten/bp/chrono/d;Lorg/threeten/bp/r;Lorg/threeten/bp/s;)Lorg/threeten/bp/chrono/f;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public bridge synthetic t(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->B(JLorg/threeten/bp/temporal/k;)Lorg/threeten/bp/chrono/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public w()Lorg/threeten/bp/chrono/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

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
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->date:Lorg/threeten/bp/chrono/b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public x()Lorg/threeten/bp/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/threeten/bp/chrono/d;->time:Lorg/threeten/bp/i;

    return-object v0
.end method

.method public bridge synthetic y(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/c;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/d;->K(Lorg/threeten/bp/temporal/f;)Lorg/threeten/bp/chrono/d;

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
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/d;->L(Lorg/threeten/bp/temporal/h;J)Lorg/threeten/bp/chrono/d;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
