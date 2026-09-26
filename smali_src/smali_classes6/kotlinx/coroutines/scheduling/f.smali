.class public Lkotlinx/coroutines/scheduling/f;
.super Lkotlinx/coroutines/q1;
.source "SourceFile"


# instance fields
.field private final corePoolSize:I

.field private coroutineScheduler:Lkotlinx/coroutines/scheduling/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final idleWorkerKeepAliveNs:J

.field private final maxPoolSize:I

.field private final schedulerName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/scheduling/f;-><init>(IIJLjava/lang/String;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Lkotlinx/coroutines/q1;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/f;->corePoolSize:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/f;->maxPoolSize:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/f;->idleWorkerKeepAliveNs:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/f;->schedulerName:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/f;->y0()Lkotlinx/coroutines/scheduling/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/f;->coroutineScheduler:Lkotlinx/coroutines/scheduling/a;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/k;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 2
    sget p1, Lkotlinx/coroutines/scheduling/l;->CORE_POOL_SIZE:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 3
    sget p2, Lkotlinx/coroutines/scheduling/l;->MAX_POOL_SIZE:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 4
    sget-wide p3, Lkotlinx/coroutines/scheduling/l;->IDLE_WORKER_KEEP_ALIVE_NS:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const-string p5, "CoroutineScheduler"

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-wide p5, v0

    move-object p7, v2

    .line 5
    invoke-direct/range {p2 .. p7}, Lkotlinx/coroutines/scheduling/f;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method private final y0()Lkotlinx/coroutines/scheduling/a;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lkotlinx/coroutines/scheduling/a;

    .line 3
    .line 4
    iget v1, p0, Lkotlinx/coroutines/scheduling/f;->corePoolSize:I

    .line 5
    .line 6
    iget v2, p0, Lkotlinx/coroutines/scheduling/f;->maxPoolSize:I

    .line 7
    .line 8
    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/f;->idleWorkerKeepAliveNs:J

    .line 9
    .line 10
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/f;->schedulerName:Ljava/lang/String;

    .line 11
    move-object v0, v6

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;-><init>(IIJLjava/lang/String;)V

    .line 15
    return-object v6
.end method


# virtual methods
.method public final F0(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/scheduling/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->coroutineScheduler:Lkotlinx/coroutines/scheduling/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/a;->l(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    .line 6
    return-void
.end method

.method public L()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->coroutineScheduler:Lkotlinx/coroutines/scheduling/a;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->coroutineScheduler:Lkotlinx/coroutines/scheduling/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/a;->close()V

    .line 6
    return-void
.end method

.method public dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->coroutineScheduler:Lkotlinx/coroutines/scheduling/a;

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x6

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v1, p2

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->m(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    .line 11
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->coroutineScheduler:Lkotlinx/coroutines/scheduling/a;

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v1, p2

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->m(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    .line 11
    return-void
.end method
