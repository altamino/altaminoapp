.class public Lcom/google/firebase/concurrent/ExecutorsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ThreadPoolCreation"
    }
.end annotation


# static fields
.field static final BG_EXECUTOR:Lcom/google/firebase/components/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/y<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static final BLOCKING_EXECUTOR:Lcom/google/firebase/components/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/y<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static final LITE_EXECUTOR:Lcom/google/firebase/components/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/y<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field static final SCHEDULER:Lcom/google/firebase/components/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/y<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/components/y;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/concurrent/r;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/firebase/concurrent/r;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/google/firebase/components/y;-><init>(Lo4/b;)V

    .line 11
    .line 12
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->BG_EXECUTOR:Lcom/google/firebase/components/y;

    .line 13
    .line 14
    new-instance v0, Lcom/google/firebase/components/y;

    .line 15
    .line 16
    new-instance v1, Lcom/google/firebase/concurrent/s;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lcom/google/firebase/concurrent/s;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/google/firebase/components/y;-><init>(Lo4/b;)V

    .line 23
    .line 24
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->LITE_EXECUTOR:Lcom/google/firebase/components/y;

    .line 25
    .line 26
    new-instance v0, Lcom/google/firebase/components/y;

    .line 27
    .line 28
    new-instance v1, Lcom/google/firebase/concurrent/t;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Lcom/google/firebase/concurrent/t;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/google/firebase/components/y;-><init>(Lo4/b;)V

    .line 35
    .line 36
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->BLOCKING_EXECUTOR:Lcom/google/firebase/components/y;

    .line 37
    .line 38
    new-instance v0, Lcom/google/firebase/components/y;

    .line 39
    .line 40
    new-instance v1, Lcom/google/firebase/concurrent/u;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Lcom/google/firebase/concurrent/u;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Lcom/google/firebase/components/y;-><init>(Lo4/b;)V

    .line 47
    .line 48
    sput-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->SCHEDULER:Lcom/google/firebase/components/y;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->m(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->s()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->r()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->q()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lcom/google/firebase/components/e;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->o(Lcom/google/firebase/components/e;)Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->n(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->l(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method private static i()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 15
    .line 16
    const/16 v2, 0x1a

    .line 17
    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/firebase/concurrent/q;->a(Landroid/os/StrictMode$ThreadPolicy$Builder;)Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method private static j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/concurrent/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/concurrent/b;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    .line 7
    return-object v0
.end method

.method private static k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/concurrent/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/concurrent/b;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    return-object v0
.end method

.method private static synthetic l(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    .line 2
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->BG_EXECUTOR:Lcom/google/firebase/components/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/components/y;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    return-object p0
.end method

.method private static synthetic m(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    .line 2
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->BLOCKING_EXECUTOR:Lcom/google/firebase/components/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/components/y;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    return-object p0
.end method

.method private static synthetic n(Lcom/google/firebase/components/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    .line 2
    sget-object p0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->LITE_EXECUTOR:Lcom/google/firebase/components/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/components/y;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    return-object p0
.end method

.method private static synthetic o(Lcom/google/firebase/components/e;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    .line 2
    sget-object p0, Lcom/google/firebase/concurrent/b0;->INSTANCE:Lcom/google/firebase/concurrent/b0;

    .line 3
    return-object p0
.end method

.method private static synthetic p()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->i()Landroid/os/StrictMode$ThreadPolicy;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "Firebase Background"

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x4

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method private static synthetic q()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->t()Landroid/os/StrictMode$ThreadPolicy;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    const-string v3, "Firebase Lite"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v1, v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->k(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)Ljava/util/concurrent/ThreadFactory;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private static synthetic r()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    .line 2
    const-string v0, "Firebase Blocking"

    .line 3
    .line 4
    const/16 v1, 0xb

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private static synthetic s()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    .line 2
    const-string v0, "Firebase Scheduler"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->j(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method private static t()Landroid/os/StrictMode$ThreadPolicy;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private static u(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/concurrent/o;

    .line 3
    .line 4
    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->SCHEDULER:Lcom/google/firebase/components/y;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/components/y;->get()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/concurrent/o;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/firebase/components/c;

    .line 4
    .line 5
    const-class v1, Lw3/a;

    .line 6
    .line 7
    const-class v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x2

    .line 13
    .line 14
    new-array v5, v4, [Lcom/google/firebase/components/g0;

    .line 15
    .line 16
    const-class v6, Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v6}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 20
    move-result-object v7

    .line 21
    const/4 v8, 0x0

    .line 22
    .line 23
    aput-object v7, v5, v8

    .line 24
    .line 25
    const-class v7, Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v7}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 29
    move-result-object v1

    .line 30
    const/4 v9, 0x1

    .line 31
    .line 32
    aput-object v1, v5, v9

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v5}, Lcom/google/firebase/components/c;->d(Lcom/google/firebase/components/g0;[Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    new-instance v3, Lcom/google/firebase/concurrent/v;

    .line 39
    .line 40
    .line 41
    invoke-direct {v3}, Lcom/google/firebase/concurrent/v;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    aput-object v1, v0, v8

    .line 52
    .line 53
    const-class v1, Lw3/b;

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    new-array v5, v4, [Lcom/google/firebase/components/g0;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v6}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 63
    move-result-object v10

    .line 64
    .line 65
    aput-object v10, v5, v8

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v7}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    aput-object v1, v5, v9

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v5}, Lcom/google/firebase/components/c;->d(Lcom/google/firebase/components/g0;[Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    new-instance v3, Lcom/google/firebase/concurrent/w;

    .line 78
    .line 79
    .line 80
    invoke-direct {v3}, Lcom/google/firebase/concurrent/w;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    aput-object v1, v0, v9

    .line 91
    .line 92
    const-class v1, Lw3/c;

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v2}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    new-array v3, v4, [Lcom/google/firebase/components/g0;

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v6}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    aput-object v5, v3, v8

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v7}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    aput-object v1, v3, v9

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3}, Lcom/google/firebase/components/c;->d(Lcom/google/firebase/components/g0;[Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    new-instance v2, Lcom/google/firebase/concurrent/x;

    .line 117
    .line 118
    .line 119
    invoke-direct {v2}, Lcom/google/firebase/concurrent/x;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    aput-object v1, v0, v4

    .line 130
    .line 131
    const-class v1, Lw3/d;

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v7}, Lcom/google/firebase/components/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/firebase/components/g0;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Lcom/google/firebase/components/c;->c(Lcom/google/firebase/components/g0;)Lcom/google/firebase/components/c$b;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    new-instance v2, Lcom/google/firebase/concurrent/y;

    .line 142
    .line 143
    .line 144
    invoke-direct {v2}, Lcom/google/firebase/concurrent/y;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/c$b;->f(Lcom/google/firebase/components/h;)Lcom/google/firebase/components/c$b;

    .line 148
    move-result-object v1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/google/firebase/components/c$b;->d()Lcom/google/firebase/components/c;

    .line 152
    move-result-object v1

    .line 153
    const/4 v2, 0x3

    .line 154
    .line 155
    aput-object v1, v0, v2

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 159
    move-result-object v0

    .line 160
    return-object v0
.end method
