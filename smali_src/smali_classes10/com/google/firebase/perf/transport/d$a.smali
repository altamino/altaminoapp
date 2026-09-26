.class Lcom/google/firebase/perf/transport/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/transport/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final MICROS_IN_A_SECOND:J

.field private static final logger:Ly4/a;


# instance fields
.field private backgroundCapacity:J

.field private backgroundRate:Lcom/google/firebase/perf/util/i;

.field private capacity:J

.field private final clock:Lcom/google/firebase/perf/util/a;

.field private foregroundCapacity:J

.field private foregroundRate:Lcom/google/firebase/perf/util/i;

.field private final isLogcatEnabled:Z

.field private lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

.field private rate:Lcom/google/firebase/perf/util/i;

.field private tokenCount:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/transport/d$a;->logger:Ly4/a;

    .line 7
    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lcom/google/firebase/perf/transport/d$a;->MICROS_IN_A_SECOND:J

    .line 17
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/perf/util/i;JLcom/google/firebase/perf/util/a;Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/firebase/perf/transport/d$a;->clock:Lcom/google/firebase/perf/util/a;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/google/firebase/perf/transport/d$a;->capacity:J

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/perf/transport/d$a;->rate:Lcom/google/firebase/perf/util/i;

    .line 10
    long-to-double p1, p2

    .line 11
    .line 12
    iput-wide p1, p0, Lcom/google/firebase/perf/transport/d$a;->tokenCount:D

    .line 13
    .line 14
    .line 15
    invoke-virtual {p4}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/firebase/perf/transport/d$a;->lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p5, p6, p7}, Lcom/google/firebase/perf/transport/d$a;->g(Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V

    .line 22
    .line 23
    iput-boolean p7, p0, Lcom/google/firebase/perf/transport/d$a;->isLogcatEnabled:Z

    .line 24
    return-void
.end method

.method private static c(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    .line 1
    .line 2
    const-string v0, "Trace"

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->E()J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->q()J

    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private static d(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    .line 1
    .line 2
    const-string v0, "Trace"

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private static e(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    .line 1
    .line 2
    const-string v0, "Trace"

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->F()J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->r()J

    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private static f(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J
    .locals 1

    .line 1
    .line 2
    const-string v0, "Trace"

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/a;->t()J

    .line 13
    move-result-wide p0

    .line 14
    return-wide p0
.end method

.method private g(Lcom/google/firebase/perf/config/a;Ljava/lang/String;Z)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/d$a;->f(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    .line 6
    move-result-wide v4

    .line 7
    .line 8
    .line 9
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/d$a;->e(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    .line 10
    move-result-wide v7

    .line 11
    .line 12
    new-instance v9, Lcom/google/firebase/perf/util/i;

    .line 13
    .line 14
    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    move-object v1, v9

    .line 16
    move-wide v2, v7

    .line 17
    move-object v6, v15

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/perf/util/i;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    .line 21
    .line 22
    iput-object v9, v0, Lcom/google/firebase/perf/transport/d$a;->foregroundRate:Lcom/google/firebase/perf/util/i;

    .line 23
    .line 24
    iput-wide v7, v0, Lcom/google/firebase/perf/transport/d$a;->foregroundCapacity:J

    .line 25
    const/4 v1, 0x2

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x3

    .line 29
    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    sget-object v5, Lcom/google/firebase/perf/transport/d$a;->logger:Ly4/a;

    .line 33
    .line 34
    new-array v6, v4, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p2, v6, v3

    .line 37
    .line 38
    aput-object v9, v6, v2

    .line 39
    .line 40
    .line 41
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    move-result-object v7

    .line 43
    .line 44
    aput-object v7, v6, v1

    .line 45
    .line 46
    const-string v7, "Foreground %s logging rate:%f, burst capacity:%d"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v7, v6}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/d$a;->d(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    .line 53
    move-result-wide v13

    .line 54
    .line 55
    .line 56
    invoke-static/range {p1 .. p2}, Lcom/google/firebase/perf/transport/d$a;->c(Lcom/google/firebase/perf/config/a;Ljava/lang/String;)J

    .line 57
    move-result-wide v5

    .line 58
    .line 59
    new-instance v7, Lcom/google/firebase/perf/util/i;

    .line 60
    move-object v10, v7

    .line 61
    move-wide v11, v5

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v10 .. v15}, Lcom/google/firebase/perf/util/i;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    .line 65
    .line 66
    iput-object v7, v0, Lcom/google/firebase/perf/transport/d$a;->backgroundRate:Lcom/google/firebase/perf/util/i;

    .line 67
    .line 68
    iput-wide v5, v0, Lcom/google/firebase/perf/transport/d$a;->backgroundCapacity:J

    .line 69
    .line 70
    if-eqz p3, :cond_1

    .line 71
    .line 72
    sget-object v8, Lcom/google/firebase/perf/transport/d$a;->logger:Ly4/a;

    .line 73
    .line 74
    new-array v4, v4, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object p2, v4, v3

    .line 77
    .line 78
    aput-object v7, v4, v2

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    aput-object v2, v4, v1

    .line 85
    .line 86
    const-string v1, "Background %s logging rate:%f, capacity:%d"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v1, v4}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized a(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/d$a;->foregroundRate:Lcom/google/firebase/perf/util/i;

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    goto :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/d$a;->backgroundRate:Lcom/google/firebase/perf/util/i;

    .line 11
    .line 12
    :goto_0
    iput-object v0, p0, Lcom/google/firebase/perf/transport/d$a;->rate:Lcom/google/firebase/perf/util/i;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/d$a;->foregroundCapacity:J

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/d$a;->backgroundCapacity:J

    .line 20
    .line 21
    :goto_1
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/d$a;->capacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_2
    monitor-exit p0

    .line 25
    throw p1
.end method

.method declared-synchronized b(Lcom/google/firebase/perf/v1/i;)Z
    .locals 4
    .param p1    # Lcom/google/firebase/perf/v1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/perf/transport/d$a;->clock:Lcom/google/firebase/perf/util/a;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/a;->a()Lcom/google/firebase/perf/util/Timer;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/transport/d$a;->lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/util/Timer;->h(Lcom/google/firebase/perf/util/Timer;)J

    .line 13
    move-result-wide v0

    .line 14
    long-to-double v0, v0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/firebase/perf/transport/d$a;->rate:Lcom/google/firebase/perf/util/i;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/firebase/perf/util/i;->a()D

    .line 20
    move-result-wide v2

    .line 21
    mul-double/2addr v0, v2

    .line 22
    .line 23
    sget-wide v2, Lcom/google/firebase/perf/transport/d$a;->MICROS_IN_A_SECOND:J

    .line 24
    long-to-double v2, v2

    .line 25
    div-double/2addr v0, v2

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmpl-double v2, v0, v2

    .line 30
    .line 31
    if-lez v2, :cond_0

    .line 32
    .line 33
    iget-wide v2, p0, Lcom/google/firebase/perf/transport/d$a;->tokenCount:D

    .line 34
    add-double/2addr v2, v0

    .line 35
    .line 36
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/d$a;->capacity:J

    .line 37
    long-to-double v0, v0

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    .line 41
    move-result-wide v0

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/d$a;->tokenCount:D

    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/firebase/perf/transport/d$a;->lastTimeTokenReplenished:Lcom/google/firebase/perf/util/Timer;

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/google/firebase/perf/transport/d$a;->tokenCount:D

    .line 51
    .line 52
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 53
    .line 54
    cmpl-double p1, v0, v2

    .line 55
    .line 56
    if-ltz p1, :cond_1

    .line 57
    sub-double/2addr v0, v2

    .line 58
    .line 59
    iput-wide v0, p0, Lcom/google/firebase/perf/transport/d$a;->tokenCount:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    .line 64
    :cond_1
    :try_start_1
    iget-boolean p1, p0, Lcom/google/firebase/perf/transport/d$a;->isLogcatEnabled:Z

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    sget-object p1, Lcom/google/firebase/perf/transport/d$a;->logger:Ly4/a;

    .line 69
    .line 70
    const-string v0, "Exceeded log rate limit, dropping the log."

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ly4/a;->j(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_2
    monitor-exit p0

    .line 75
    const/4 p1, 0x0

    .line 76
    return p1

    .line 77
    :goto_1
    monitor-exit p0

    .line 78
    throw p1
.end method
