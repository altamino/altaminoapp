.class public Lcom/google/firebase/perf/transport/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/application/a$b;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final KEY_AVAILABLE_GAUGES_FOR_CACHING:Ljava/lang/String; = "KEY_AVAILABLE_GAUGES_FOR_CACHING"

.field private static final KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING:Ljava/lang/String; = "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

.field private static final KEY_AVAILABLE_TRACES_FOR_CACHING:Ljava/lang/String; = "KEY_AVAILABLE_TRACES_FOR_CACHING"

.field private static final MAX_GAUGE_METRICS_CACHE_SIZE:I = 0x32

.field private static final MAX_NETWORK_REQUEST_METRICS_CACHE_SIZE:I = 0x32

.field private static final MAX_POOL_SIZE:I = 0x1

.field private static final MAX_TRACE_METRICS_CACHE_SIZE:I = 0x32

.field private static final instance:Lcom/google/firebase/perf/transport/k;

.field private static final logger:Ly4/a;


# instance fields
.field private appContext:Landroid/content/Context;

.field private appStateMonitor:Lcom/google/firebase/perf/application/a;

.field private applicationInfoBuilder:Lcom/google/firebase/perf/v1/c$b;

.field private final cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private configResolver:Lcom/google/firebase/perf/config/a;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private firebaseApp:Lcom/google/firebase/f;

.field private firebaseInstallationsApi:Lcom/google/firebase/installations/h;

.field private firebasePerformance:Lv4/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private flgTransport:Lcom/google/firebase/perf/transport/b;

.field private flgTransportFactoryProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field

.field private isForegroundState:Z

.field private final isTransportInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private packageName:Ljava/lang/String;

.field private final pendingEventsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/firebase/perf/transport/c;",
            ">;"
        }
    .end annotation
.end field

.field private projectId:Ljava/lang/String;

.field private rateLimiter:Lcom/google/firebase/perf/transport/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/perf/transport/k;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/firebase/perf/transport/k;-><init>()V

    .line 12
    .line 13
    sput-object v0, Lcom/google/firebase/perf/transport/k;->instance:Lcom/google/firebase/perf/transport/k;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->pendingEventsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->isTransportInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/google/firebase/perf/transport/k;->isForegroundState:Z

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    .line 26
    const-wide/16 v5, 0xa

    .line 27
    .line 28
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    .line 32
    .line 33
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 34
    move-object v2, v0

    .line 35
    .line 36
    .line 37
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->cacheMap:Ljava/util/Map;

    .line 47
    .line 48
    const/16 v1, 0x32

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private D(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)Lcom/google/firebase/perf/v1/i;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/k;->G()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->applicationInfoBuilder:Lcom/google/firebase/perf/v1/c$b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/v1/c$b;->n(Lcom/google/firebase/perf/v1/d;)Lcom/google/firebase/perf/v1/c$b;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i$b;->g()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i$b;->f()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    check-cast p2, Lcom/google/firebase/perf/v1/c$b;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/k;->j()Ljava/util/Map;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lcom/google/firebase/perf/v1/c$b;->k(Ljava/util/Map;)Lcom/google/firebase/perf/v1/c$b;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/v1/i$b;->d(Lcom/google/firebase/perf/v1/c$b;)Lcom/google/firebase/perf/v1/i$b;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    check-cast p1, Lcom/google/firebase/perf/v1/i;

    .line 46
    return-object p1
.end method

.method private E()V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->appContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->packageName:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->configResolver:Lcom/google/firebase/perf/config/a;

    .line 21
    .line 22
    new-instance v0, Lcom/google/firebase/perf/transport/d;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/perf/transport/k;->appContext:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v8, Lcom/google/firebase/perf/util/i;

    .line 27
    .line 28
    const-wide/16 v3, 0x64

    .line 29
    .line 30
    const-wide/16 v5, 0x1

    .line 31
    .line 32
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 33
    move-object v2, v8

    .line 34
    .line 35
    .line 36
    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/perf/util/i;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    .line 37
    .line 38
    const-wide/16 v2, 0x1f4

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/firebase/perf/transport/d;-><init>(Landroid/content/Context;Lcom/google/firebase/perf/util/i;J)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->rateLimiter:Lcom/google/firebase/perf/transport/d;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/google/firebase/perf/application/a;->b()Lcom/google/firebase/perf/application/a;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 50
    .line 51
    new-instance v0, Lcom/google/firebase/perf/transport/b;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/firebase/perf/transport/k;->flgTransportFactoryProvider:Lo4/b;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/firebase/perf/transport/k;->configResolver:Lcom/google/firebase/perf/config/a;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/google/firebase/perf/config/a;->a()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/perf/transport/b;-><init>(Lo4/b;Ljava/lang/String;)V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->flgTransport:Lcom/google/firebase/perf/transport/b;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/k;->h()V

    .line 68
    return-void
.end method

.method private F(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/perf/transport/k;->u()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/transport/k;->s(Lcom/google/firebase/perf/v1/j;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    aput-object v3, v1, v2

    .line 25
    .line 26
    const-string v2, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->pendingEventsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 32
    .line 33
    new-instance v1, Lcom/google/firebase/perf/transport/c;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p1, p2}, Lcom/google/firebase/perf/transport/c;-><init>(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/transport/k;->D(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)Lcom/google/firebase/perf/v1/i;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/transport/k;->t(Lcom/google/firebase/perf/v1/i;)Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/transport/k;->g(Lcom/google/firebase/perf/v1/i;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->stopGaugeCollectionIfSessionRunningTooLong()V

    .line 61
    :cond_2
    return-void
.end method

.method private G()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->configResolver:Lcom/google/firebase/perf/config/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->K()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->applicationInfoBuilder:Lcom/google/firebase/perf/v1/c$b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c$b;->j()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/firebase/perf/transport/k;->isForegroundState:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/perf/transport/k;->firebaseInstallationsApi:Lcom/google/firebase/installations/h;

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Lcom/google/firebase/installations/h;->getId()Lcom/google/android/gms/tasks/Task;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    .line 34
    const-wide/32 v4, 0xea60

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v4, v5, v3}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_4

    .line 42
    :catch_0
    move-exception v2

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception v2

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :goto_0
    sget-object v3, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 50
    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    aput-object v2, v1, v0

    .line 58
    .line 59
    const-string v0, "Task to retrieve Installation Id is timed out: %s"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0, v1}, Ly4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    goto :goto_3

    .line 64
    .line 65
    :goto_1
    sget-object v3, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 66
    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    aput-object v2, v1, v0

    .line 74
    .line 75
    const-string v0, "Task to retrieve Installation Id is interrupted: %s"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v0, v1}, Ly4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    goto :goto_3

    .line 80
    .line 81
    :goto_2
    sget-object v3, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 82
    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    aput-object v2, v1, v0

    .line 90
    .line 91
    const-string v0, "Unable to retrieve Installation Id: %s"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v0, v1}, Ly4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_3
    const/4 v2, 0x0

    .line 96
    .line 97
    .line 98
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-nez v0, :cond_1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->applicationInfoBuilder:Lcom/google/firebase/perf/v1/c$b;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lcom/google/firebase/perf/v1/c$b;->m(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;

    .line 107
    goto :goto_5

    .line 108
    .line 109
    :cond_1
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 110
    .line 111
    const-string v1, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ly4/a;->j(Ljava/lang/String;)V

    .line 115
    :cond_2
    :goto_5
    return-void
.end method

.method private H()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->firebasePerformance:Lv4/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/perf/transport/k;->u()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lv4/e;->c()Lv4/e;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->firebasePerformance:Lv4/e;

    .line 17
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/transport/k;->y(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/d;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/perf/transport/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/k;->E()V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/transport/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/transport/k;->v(Lcom/google/firebase/perf/transport/c;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/perf/transport/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/k;->z()V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/transport/k;->x(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/d;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/v1/m;Lcom/google/firebase/perf/v1/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/transport/k;->w(Lcom/google/firebase/perf/v1/m;Lcom/google/firebase/perf/v1/d;)V

    return-void
.end method

.method private g(Lcom/google/firebase/perf/v1/i;)V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i;->g()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 11
    const/4 v3, 0x2

    .line 12
    .line 13
    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    aput-object v4, v3, v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i;->i()Lcom/google/firebase/perf/v1/m;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v2}, Lcom/google/firebase/perf/transport/k;->i(Lcom/google/firebase/perf/v1/m;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    aput-object v2, v3, v1

    .line 30
    .line 31
    const-string v1, "Logging %s. In a minute, visit the Firebase console to view your data: %s"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, Ly4/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 38
    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    aput-object v3, v1, v2

    .line 46
    .line 47
    const-string v2, "Logging %s"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Ly4/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->flgTransport:Lcom/google/firebase/perf/transport/b;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/transport/b;->b(Lcom/google/firebase/perf/v1/i;)V

    .line 56
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    sget-object v2, Lcom/google/firebase/perf/transport/k;->instance:Lcom/google/firebase/perf/transport/k;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/application/a;->k(Ljava/lang/ref/WeakReference;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/firebase/perf/v1/c;->u()Lcom/google/firebase/perf/v1/c$b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/firebase/perf/transport/k;->applicationInfoBuilder:Lcom/google/firebase/perf/v1/c$b;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/firebase/perf/transport/k;->firebaseApp:Lcom/google/firebase/f;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/firebase/n;->c()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/c$b;->o(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/google/firebase/perf/v1/a;->n()Lcom/google/firebase/perf/v1/a$b;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/firebase/perf/transport/k;->packageName:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->d(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    sget-object v2, Lv4/a;->FIREPERF_VERSION_NAME:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->h(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/firebase/perf/transport/k;->appContext:Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lcom/google/firebase/perf/transport/k;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->j(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/c$b;->l(Lcom/google/firebase/perf/v1/a$b;)Lcom/google/firebase/perf/v1/c$b;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->isTransportInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    const/4 v1, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->pendingEventsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->pendingEventsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/google/firebase/perf/transport/c;

    .line 84
    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/firebase/perf/transport/k;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 88
    .line 89
    new-instance v2, Lcom/google/firebase/perf/transport/j;

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/perf/transport/j;-><init>(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/transport/c;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method private i(Lcom/google/firebase/perf/v1/m;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/m;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "_st_"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->projectId:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/perf/transport/k;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Ly4/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->projectId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/firebase/perf/transport/k;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Ly4/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private j()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/k;->H()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->firebasePerformance:Lv4/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lv4/e;->b()Ljava/util/Map;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 16
    move-result-object v0

    .line 17
    :goto_0
    return-object v0
.end method

.method public static k()Lcom/google/firebase/perf/transport/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/transport/k;->instance:Lcom/google/firebase/perf/transport/k;

    return-object v0
.end method

.method private static l(Lcom/google/firebase/perf/v1/g;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/g;->t()Z

    .line 9
    move-result v2

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    aput-object v2, v1, v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/g;->q()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/g;->p()I

    .line 31
    move-result p0

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p0

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    aput-object p0, v1, v2

    .line 39
    .line 40
    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method private static m(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/h;->P()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/h;->G()J

    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/h;->L()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/h;->A()I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    const-string v2, "UNKNOWN"

    .line 31
    .line 32
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 33
    const/4 v4, 0x3

    .line 34
    .line 35
    new-array v4, v4, [Ljava/lang/Object;

    .line 36
    const/4 v5, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/h;->I()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    aput-object p0, v4, v5

    .line 43
    const/4 p0, 0x1

    .line 44
    .line 45
    aput-object v2, v4, p0

    .line 46
    .line 47
    new-instance p0, Ljava/text/DecimalFormat;

    .line 48
    .line 49
    const-string v2, "#.####"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 53
    long-to-double v0, v0

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v5, 0x408f400000000000L    # 1000.0

    .line 59
    div-double/2addr v0, v5

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    const/4 v0, 0x2

    .line 65
    .line 66
    aput-object p0, v4, v0

    .line 67
    .line 68
    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %sms)"

    .line 69
    .line 70
    .line 71
    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private static n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/j;->g()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/j;->i()Lcom/google/firebase/perf/v1/m;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/firebase/perf/transport/k;->o(Lcom/google/firebase/perf/v1/m;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/j;->f()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/j;->b()Lcom/google/firebase/perf/v1/h;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/google/firebase/perf/transport/k;->m(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/j;->e()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/j;->c()Lcom/google/firebase/perf/v1/g;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/google/firebase/perf/transport/k;->l(Lcom/google/firebase/perf/v1/g;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    .line 47
    :cond_2
    const-string p0, "log"

    .line 48
    return-object p0
.end method

.method private static o(Lcom/google/firebase/perf/v1/m;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/m;->B()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/m;->getName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    aput-object p0, v3, v4

    .line 17
    .line 18
    new-instance p0, Ljava/text/DecimalFormat;

    .line 19
    .line 20
    const-string v4, "#.####"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 24
    long-to-double v0, v0

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 30
    div-double/2addr v0, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x1

    .line 36
    .line 37
    aput-object p0, v3, v0

    .line 38
    .line 39
    const-string p0, "trace metric: %s (duration: %sms)"

    .line 40
    .line 41
    .line 42
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, p0

    .line 22
    :catch_0
    :goto_0
    return-object v0
.end method

.method private q(Lcom/google/firebase/perf/v1/i;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i;->g()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/firebase/perf/transport/k;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 11
    .line 12
    sget-object v0, Lcom/google/firebase/perf/util/b;->TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/b;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/application/a;->d(Ljava/lang/String;J)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i;->f()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/firebase/perf/transport/k;->appStateMonitor:Lcom/google/firebase/perf/application/a;

    .line 29
    .line 30
    sget-object v0, Lcom/google/firebase/perf/util/b;->NETWORK_TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/b;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/b;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/application/a;->d(Ljava/lang/String;J)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private s(Lcom/google/firebase/perf/v1/j;)Z
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->cacheMap:Ljava/util/Map;

    .line 3
    .line 4
    const-string v1, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/firebase/perf/transport/k;->cacheMap:Ljava/util/Map;

    .line 17
    .line 18
    const-string v3, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v2

    .line 29
    .line 30
    iget-object v4, p0, Lcom/google/firebase/perf/transport/k;->cacheMap:Ljava/util/Map;

    .line 31
    .line 32
    const-string v5, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 33
    .line 34
    .line 35
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    check-cast v4, Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v4

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/google/firebase/perf/v1/j;->g()Z

    .line 46
    move-result v6

    .line 47
    const/4 v7, 0x1

    .line 48
    .line 49
    if-eqz v6, :cond_0

    .line 50
    .line 51
    if-lez v0, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/firebase/perf/transport/k;->cacheMap:Ljava/util/Map;

    .line 54
    sub-int/2addr v0, v7

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return v7

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/perf/v1/j;->f()Z

    .line 66
    move-result v1

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    if-lez v2, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/google/firebase/perf/transport/k;->cacheMap:Ljava/util/Map;

    .line 73
    sub-int/2addr v2, v7

    .line 74
    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return v7

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-interface {p1}, Lcom/google/firebase/perf/v1/j;->e()Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    if-lez v4, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/google/firebase/perf/transport/k;->cacheMap:Ljava/util/Map;

    .line 92
    sub-int/2addr v4, v7

    .line 93
    .line 94
    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return v7

    .line 101
    .line 102
    :cond_2
    sget-object v1, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 103
    const/4 v3, 0x4

    .line 104
    .line 105
    new-array v3, v3, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    const/4 v5, 0x0

    .line 111
    .line 112
    aput-object p1, v3, v5

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    aput-object p1, v3, v7

    .line 119
    const/4 p1, 0x2

    .line 120
    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    aput-object v0, v3, p1

    .line 126
    const/4 p1, 0x3

    .line 127
    .line 128
    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    aput-object v0, v3, p1

    .line 133
    .line 134
    const-string p1, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1, v3}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return v5
.end method

.method private t(Lcom/google/firebase/perf/v1/i;)Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->configResolver:Lcom/google/firebase/perf/config/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->K()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 13
    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    const-string p1, "Performance collection is not enabled, dropping %s"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, v1}, Ly4/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return v2

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/i;->l()Lcom/google/firebase/perf/v1/c;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->q()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 39
    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    aput-object p1, v1, v2

    .line 47
    .line 48
    const-string p1, "App Instance ID is null or empty, dropping %s"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1, v1}, Ly4/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return v2

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->appContext:Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lz4/e;->b(Lcom/google/firebase/perf/v1/i;Landroid/content/Context;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 63
    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    aput-object p1, v1, v2

    .line 71
    .line 72
    const-string p1, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1, v1}, Ly4/a;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return v2

    .line 77
    .line 78
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->rateLimiter:Lcom/google/firebase/perf/transport/d;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/transport/d;->h(Lcom/google/firebase/perf/v1/i;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/transport/k;->q(Lcom/google/firebase/perf/v1/i;)V

    .line 88
    .line 89
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 90
    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    aput-object p1, v1, v2

    .line 98
    .line 99
    const-string p1, "Event dropped due to device sampling - %s"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1, v1}, Ly4/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return v2

    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->rateLimiter:Lcom/google/firebase/perf/transport/d;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/transport/d;->g(Lcom/google/firebase/perf/v1/i;)Z

    .line 109
    move-result v0

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/transport/k;->q(Lcom/google/firebase/perf/v1/i;)V

    .line 115
    .line 116
    sget-object v0, Lcom/google/firebase/perf/transport/k;->logger:Ly4/a;

    .line 117
    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    invoke-static {p1}, Lcom/google/firebase/perf/transport/k;->n(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    aput-object p1, v1, v2

    .line 125
    .line 126
    const-string p1, "Rate limited (per device) - %s"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1, v1}, Ly4/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return v2

    .line 131
    :cond_4
    return v1
.end method

.method private synthetic v(Lcom/google/firebase/perf/transport/c;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/firebase/perf/transport/c;->perfMetricBuilder:Lcom/google/firebase/perf/v1/i$b;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/firebase/perf/transport/c;->appState:Lcom/google/firebase/perf/v1/d;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/perf/transport/k;->F(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)V

    .line 8
    return-void
.end method

.method private synthetic w(Lcom/google/firebase/perf/v1/m;Lcom/google/firebase/perf/v1/d;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->n()Lcom/google/firebase/perf/v1/i$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/i$b;->k(Lcom/google/firebase/perf/v1/m;)Lcom/google/firebase/perf/v1/i$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/transport/k;->F(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)V

    .line 12
    return-void
.end method

.method private synthetic x(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/d;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->n()Lcom/google/firebase/perf/v1/i$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/i$b;->j(Lcom/google/firebase/perf/v1/h;)Lcom/google/firebase/perf/v1/i$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/transport/k;->F(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)V

    .line 12
    return-void
.end method

.method private synthetic y(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/d;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/perf/v1/i;->n()Lcom/google/firebase/perf/v1/i$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/i$b;->h(Lcom/google/firebase/perf/v1/g;)Lcom/google/firebase/perf/v1/i$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/transport/k;->F(Lcom/google/firebase/perf/v1/i$b;Lcom/google/firebase/perf/v1/d;)V

    .line 12
    return-void
.end method

.method private synthetic z()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->rateLimiter:Lcom/google/firebase/perf/transport/d;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/google/firebase/perf/transport/k;->isForegroundState:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/transport/d;->a(Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public A(Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/d;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/perf/transport/i;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/perf/transport/i;-><init>(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/v1/g;Lcom/google/firebase/perf/v1/d;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public B(Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/d;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/perf/transport/g;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/perf/transport/g;-><init>(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/v1/h;Lcom/google/firebase/perf/v1/d;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public C(Lcom/google/firebase/perf/v1/m;Lcom/google/firebase/perf/v1/d;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/perf/transport/e;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/perf/transport/e;-><init>(Lcom/google/firebase/perf/transport/k;Lcom/google/firebase/perf/v1/m;Lcom/google/firebase/perf/v1/d;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public onUpdateAppState(Lcom/google/firebase/perf/v1/d;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/perf/v1/d;->FOREGROUND:Lcom/google/firebase/perf/v1/d;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    .line 9
    :goto_0
    iput-boolean p1, p0, Lcom/google/firebase/perf/transport/k;->isForegroundState:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/perf/transport/k;->u()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/firebase/perf/transport/k;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    new-instance v0, Lcom/google/firebase/perf/transport/h;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/google/firebase/perf/transport/h;-><init>(Lcom/google/firebase/perf/transport/k;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    :cond_1
    return-void
.end method

.method public r(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lo4/b;)V
    .locals 0
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/installations/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lo4/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lcom/google/firebase/installations/h;",
            "Lo4/b<",
            "Lf2/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/transport/k;->firebaseApp:Lcom/google/firebase/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/n;->e()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/firebase/perf/transport/k;->projectId:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/firebase/perf/transport/k;->firebaseInstallationsApi:Lcom/google/firebase/installations/h;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/firebase/perf/transport/k;->flgTransportFactoryProvider:Lo4/b;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/firebase/perf/transport/k;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    new-instance p2, Lcom/google/firebase/perf/transport/f;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/google/firebase/perf/transport/f;-><init>(Lcom/google/firebase/perf/transport/k;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/transport/k;->isTransportInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
