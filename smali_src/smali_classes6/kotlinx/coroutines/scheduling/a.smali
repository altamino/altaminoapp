.class public final Lkotlinx/coroutines/scheduling/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/a$a;,
        Lkotlinx/coroutines/scheduling/a$b;,
        Lkotlinx/coroutines/scheduling/a$c;,
        Lkotlinx/coroutines/scheduling/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1033:1\n285#1:1036\n283#1:1037\n283#1:1038\n285#1:1039\n280#1:1045\n281#1,5:1046\n291#1:1052\n283#1:1053\n284#1:1054\n283#1:1060\n284#1:1061\n280#1:1062\n288#1:1063\n283#1:1064\n283#1:1067\n284#1:1068\n285#1:1069\n93#2:1034\n93#2:1051\n1#3:1035\n28#4,4:1040\n28#4,4:1055\n20#5:1044\n20#5:1059\n90#6:1065\n610#7:1066\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n281#1:1036\n288#1:1037\n289#1:1038\n298#1:1039\n347#1:1045\n375#1:1046,5\n398#1:1052\n445#1:1053\n446#1:1054\n482#1:1060\n483#1:1061\n489#1:1062\n498#1:1063\n498#1:1064\n576#1:1067\n577#1:1068\n578#1:1069\n119#1:1034\n395#1:1051\n347#1:1040,4\n478#1:1055,4\n347#1:1044\n478#1:1059\n515#1:1065\n522#1:1066\n*E\n"
.end annotation


# static fields
.field private static final BLOCKING_MASK:J = 0x3ffffe00000L

.field private static final BLOCKING_SHIFT:I = 0x15

.field private static final CLAIMED:I = 0x0

.field private static final CPU_PERMITS_MASK:J = 0x7ffffc0000000000L

.field private static final CPU_PERMITS_SHIFT:I = 0x2a

.field private static final CREATED_MASK:J = 0x1fffffL

.field public static final Companion:Lkotlinx/coroutines/scheduling/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_SUPPORTED_POOL_SIZE:I = 0x1ffffe

.field public static final MIN_SUPPORTED_POOL_SIZE:I = 0x1

.field public static final NOT_IN_STACK:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PARKED:I = -0x1

.field private static final PARKED_INDEX_MASK:J = 0x1fffffL

.field private static final PARKED_VERSION_INC:J = 0x200000L

.field private static final PARKED_VERSION_MASK:J = -0x200000L

.field private static final TERMINATED:I = 0x1

.field private static final _isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _isTerminated:I

.field private volatile controlState:J

.field public final corePoolSize:I

.field public final globalBlockingQueue:Lkotlinx/coroutines/scheduling/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final globalCpuQueue:Lkotlinx/coroutines/scheduling/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final idleWorkerKeepAliveNs:J

.field public final maxPoolSize:I

.field private volatile parkedWorkersStack:J

.field public final schedulerName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final workers:Lkotlinx/coroutines/internal/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/d0<",
            "Lkotlinx/coroutines/scheduling/a$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/scheduling/a$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/a$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/scheduling/a;->Companion:Lkotlinx/coroutines/scheduling/a$a;

    .line 9
    .line 10
    const-string v0, "parkedWorkersStack"

    .line 11
    .line 12
    const-class v1, Lkotlinx/coroutines/scheduling/a;

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 19
    .line 20
    const-string v0, "controlState"

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lkotlinx/coroutines/scheduling/a;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 27
    .line 28
    const-string v0, "_isTerminated"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    sput-object v0, Lkotlinx/coroutines/scheduling/a;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 35
    .line 36
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 37
    .line 38
    const-string v1, "NOT_IN_STACK"

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    sput-object v0, Lkotlinx/coroutines/scheduling/a;->NOT_IN_STACK:Lkotlinx/coroutines/internal/i0;

    .line 44
    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->corePoolSize:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/a;->maxPoolSize:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/a;->idleWorkerKeepAliveNs:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/a;->schedulerName:Ljava/lang/String;

    const/4 p5, 0x1

    if-lt p1, p5, :cond_3

    const-string p5, "Max pool size "

    if-lt p2, p1, :cond_2

    const v0, 0x1ffffe

    if-gt p2, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    .line 2
    new-instance p2, Lkotlinx/coroutines/scheduling/d;

    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/d;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/a;->globalCpuQueue:Lkotlinx/coroutines/scheduling/d;

    .line 3
    new-instance p2, Lkotlinx/coroutines/scheduling/d;

    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/d;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/a;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/d;

    .line 4
    new-instance p2, Lkotlinx/coroutines/internal/d0;

    add-int/lit8 p3, p1, 0x1

    mul-int/lit8 p3, p3, 0x2

    invoke-direct {p2, p3}, Lkotlinx/coroutines/internal/d0;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/a;->controlState:J

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/scheduling/a;->_isTerminated:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Idle worker keep alive time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 9
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Core pool size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " should be at least 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 13
    sget-wide p3, Lkotlinx/coroutines/scheduling/l;->IDLE_WORKER_KEEP_ALIVE_NS:J

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 14
    sget-object p5, Lkotlinx/coroutines/scheduling/l;->DEFAULT_SCHEDULER_NAME:Ljava/lang/String;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method private final U(JZ)V
    .locals 0

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->y0()Z

    .line 7
    move-result p3

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/a;->k0(J)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->y0()Z

    .line 21
    return-void
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final f(Lkotlinx/coroutines/scheduling/h;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/d;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->globalCpuQueue:Lkotlinx/coroutines/scheduling/d;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 23
    :goto_0
    return p1
.end method

.method private final g0(Lkotlinx/coroutines/scheduling/a$c;Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-object p2

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/a$c;->state:Lkotlinx/coroutines/scheduling/a$d;

    .line 6
    .line 7
    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->TERMINATED:Lkotlinx/coroutines/scheduling/a$d;

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    return-object p2

    .line 11
    .line 12
    :cond_1
    iget-object v0, p2, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/a$c;->state:Lkotlinx/coroutines/scheduling/a$d;

    .line 21
    .line 22
    sget-object v1, Lkotlinx/coroutines/scheduling/a$d;->BLOCKING:Lkotlinx/coroutines/scheduling/a$d;

    .line 23
    .line 24
    if-ne v0, v1, :cond_2

    .line 25
    return-object p2

    .line 26
    :cond_2
    const/4 v0, 0x1

    .line 27
    .line 28
    iput-boolean v0, p1, Lkotlinx/coroutines/scheduling/a$c;->mayHaveLocalTasks:Z

    .line 29
    .line 30
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/a$c;->localQueue:Lkotlinx/coroutines/scheduling/n;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p3}, Lkotlinx/coroutines/scheduling/n;->a(Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method private final h()I
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a;->isTerminated()Z

    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    monitor-exit v0

    .line 11
    const/4 v0, -0x1

    .line 12
    return v0

    .line 13
    .line 14
    :cond_0
    :try_start_1
    sget-object v1, Lkotlinx/coroutines/scheduling/a;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    const-wide/32 v4, 0x1fffff

    .line 22
    .line 23
    and-long v6, v2, v4

    .line 24
    long-to-int v6, v6

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v7, 0x3ffffe00000L

    .line 30
    and-long/2addr v2, v7

    .line 31
    .line 32
    const/16 v7, 0x15

    .line 33
    shr-long/2addr v2, v7

    .line 34
    long-to-int v2, v2

    .line 35
    .line 36
    sub-int v2, v6, v2

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Lj8/m;->e(II)I

    .line 41
    move-result v2

    .line 42
    .line 43
    iget v7, p0, Lkotlinx/coroutines/scheduling/a;->corePoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    if-lt v2, v7, :cond_1

    .line 46
    monitor-exit v0

    .line 47
    return v3

    .line 48
    .line 49
    :cond_1
    :try_start_2
    iget v7, p0, Lkotlinx/coroutines/scheduling/a;->maxPoolSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    if-lt v6, v7, :cond_2

    .line 52
    monitor-exit v0

    .line 53
    return v3

    .line 54
    .line 55
    .line 56
    :cond_2
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/scheduling/a;->d()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 61
    move-result-wide v6

    .line 62
    and-long/2addr v6, v4

    .line 63
    long-to-int v3, v6

    .line 64
    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    if-lez v3, :cond_4

    .line 68
    .line 69
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v3}, Lkotlinx/coroutines/internal/d0;->b(I)Ljava/lang/Object;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    new-instance v6, Lkotlinx/coroutines/scheduling/a$c;

    .line 78
    .line 79
    .line 80
    invoke-direct {v6, p0, v3}, Lkotlinx/coroutines/scheduling/a$c;-><init>(Lkotlinx/coroutines/scheduling/a;I)V

    .line 81
    .line 82
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v3, v6}, Lkotlinx/coroutines/internal/d0;->c(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 89
    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    and-long/2addr v4, v7

    .line 91
    long-to-int v1, v4

    .line 92
    .line 93
    if-ne v3, v1, :cond_3

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    monitor-exit v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 100
    return v2

    .line 101
    .line 102
    :cond_3
    :try_start_4
    const-string v1, "Failed requirement."

    .line 103
    .line 104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v2

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_4
    const-string v1, "Failed requirement."

    .line 117
    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 126
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    :goto_0
    monitor-exit v0

    .line 128
    throw v1
.end method

.method private final k()Lkotlinx/coroutines/scheduling/a$c;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/scheduling/a$c;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lkotlinx/coroutines/scheduling/a$c;

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlinx/coroutines/scheduling/a$c;->a(Lkotlinx/coroutines/scheduling/a$c;)Lkotlinx/coroutines/scheduling/a;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v1, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    move-object v2, v0

    .line 27
    :cond_1
    return-object v2
.end method

.method private final k0(J)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x1fffff

    .line 4
    and-long/2addr v0, p1

    .line 5
    long-to-int v0, v0

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v1, 0x3ffffe00000L

    .line 11
    and-long/2addr p1, v1

    .line 12
    .line 13
    const/16 v1, 0x15

    .line 14
    shr-long/2addr p1, v1

    .line 15
    long-to-int p1, p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lj8/m;->e(II)I

    .line 21
    move-result p2

    .line 22
    .line 23
    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->corePoolSize:I

    .line 24
    .line 25
    if-ge p2, v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->h()I

    .line 29
    move-result p2

    .line 30
    const/4 v0, 0x1

    .line 31
    .line 32
    if-ne p2, v0, :cond_0

    .line 33
    .line 34
    iget v1, p0, Lkotlinx/coroutines/scheduling/a;->corePoolSize:I

    .line 35
    .line 36
    if-le v1, v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->h()I

    .line 40
    .line 41
    :cond_0
    if-lez p2, :cond_1

    .line 42
    return v0

    .line 43
    :cond_1
    return p1
.end method

.method public static synthetic m(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/scheduling/l;->NonBlockingContext:Lkotlinx/coroutines/scheduling/i;

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    const/4 p3, 0x0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/a;->l(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    .line 15
    return-void
.end method

.method private final n(Lkotlinx/coroutines/scheduling/a$c;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->i()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    :goto_0
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->NOT_IN_STACK:Lkotlinx/coroutines/internal/i0;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    .line 16
    :cond_1
    check-cast p1, Lkotlinx/coroutines/scheduling/a$c;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->h()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    return v0

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->i()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_0
.end method

.method private final o()Lkotlinx/coroutines/scheduling/a$c;
    .locals 10

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    move-result-wide v3

    .line 7
    .line 8
    .line 9
    const-wide/32 v1, 0x1fffff

    .line 10
    and-long/2addr v1, v3

    .line 11
    long-to-int v1, v1

    .line 12
    .line 13
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/internal/d0;->b(I)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    move-object v7, v1

    .line 19
    .line 20
    check-cast v7, Lkotlinx/coroutines/scheduling/a$c;

    .line 21
    .line 22
    if-nez v7, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    .line 26
    .line 27
    :cond_1
    const-wide/32 v1, 0x200000

    .line 28
    add-long/2addr v1, v3

    .line 29
    .line 30
    .line 31
    const-wide/32 v5, -0x200000

    .line 32
    and-long/2addr v1, v5

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v7}, Lkotlinx/coroutines/scheduling/a;->n(Lkotlinx/coroutines/scheduling/a$c;)I

    .line 36
    move-result v5

    .line 37
    .line 38
    if-ltz v5, :cond_0

    .line 39
    .line 40
    sget-object v6, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 41
    int-to-long v8, v5

    .line 42
    or-long/2addr v8, v1

    .line 43
    move-object v1, v6

    .line 44
    move-object v2, p0

    .line 45
    move-wide v5, v8

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->NOT_IN_STACK:Lkotlinx/coroutines/internal/i0;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v0}, Lkotlinx/coroutines/scheduling/a$c;->r(Ljava/lang/Object;)V

    .line 57
    return-object v7
.end method

.method static synthetic t0(Lkotlinx/coroutines/scheduling/a;JILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    sget-object p1, Lkotlinx/coroutines/scheduling/a;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    move-result-wide p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/a;->k0(J)Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method private final y0()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->o()Lkotlinx/coroutines/scheduling/a$c;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/scheduling/a$c;->j()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, -0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 23
    const/4 v0, 0x1

    .line 24
    return v0
.end method


# virtual methods
.method public final L(Lkotlinx/coroutines/scheduling/a$c;II)V
    .locals 9
    .param p1    # Lkotlinx/coroutines/scheduling/a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 6
    move-result-wide v3

    .line 7
    .line 8
    .line 9
    const-wide/32 v1, 0x1fffff

    .line 10
    and-long/2addr v1, v3

    .line 11
    long-to-int v1, v1

    .line 12
    .line 13
    .line 14
    const-wide/32 v5, 0x200000

    .line 15
    add-long/2addr v5, v3

    .line 16
    .line 17
    .line 18
    const-wide/32 v7, -0x200000

    .line 19
    and-long/2addr v5, v7

    .line 20
    .line 21
    if-ne v1, p2, :cond_2

    .line 22
    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/a;->n(Lkotlinx/coroutines/scheduling/a$c;)I

    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, p3

    .line 30
    .line 31
    :cond_2
    :goto_0
    if-ltz v1, :cond_0

    .line 32
    .line 33
    sget-object v2, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 34
    int-to-long v7, v1

    .line 35
    or-long/2addr v5, v7

    .line 36
    move-object v1, v2

    .line 37
    move-object v2, p0

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    return-void
.end method

.method public final O(Lkotlinx/coroutines/scheduling/h;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/scheduling/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/b;->e()V

    .line 13
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :goto_1
    return-void

    .line 34
    :catchall_1
    move-exception p1

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->e()V

    .line 44
    :cond_1
    throw p1
.end method

.method public final Q(J)V
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->k()Lkotlinx/coroutines/scheduling/a$c;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 18
    monitor-enter v1

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/scheduling/a;->d()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 26
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    const-wide/32 v5, 0x1fffff

    .line 30
    and-long/2addr v3, v5

    .line 31
    long-to-int v3, v3

    .line 32
    monitor-exit v1

    .line 33
    .line 34
    if-gt v2, v3, :cond_3

    .line 35
    move v1, v2

    .line 36
    .line 37
    :goto_0
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v1}, Lkotlinx/coroutines/internal/d0;->b(I)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 45
    .line 46
    check-cast v4, Lkotlinx/coroutines/scheduling/a$c;

    .line 47
    .line 48
    if-eq v4, v0, :cond_2

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    .line 52
    move-result v5

    .line 53
    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p1, p2}, Ljava/lang/Thread;->join(J)V

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    iget-object v4, v4, Lkotlinx/coroutines/scheduling/a$c;->localQueue:Lkotlinx/coroutines/scheduling/n;

    .line 64
    .line 65
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/a;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/d;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Lkotlinx/coroutines/scheduling/n;->f(Lkotlinx/coroutines/scheduling/d;)V

    .line 69
    .line 70
    :cond_2
    if-eq v1, v3, :cond_3

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/d;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/u;->b()V

    .line 79
    .line 80
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->globalCpuQueue:Lkotlinx/coroutines/scheduling/d;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/u;->b()V

    .line 84
    .line 85
    :goto_2
    if-eqz v0, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/a$c;->g(Z)Lkotlinx/coroutines/scheduling/h;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-nez p1, :cond_6

    .line 92
    .line 93
    :cond_4
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->globalCpuQueue:Lkotlinx/coroutines/scheduling/d;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/u;->d()Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 100
    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/a;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/d;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/u;->d()Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 110
    .line 111
    if-nez p1, :cond_6

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    sget-object p1, Lkotlinx/coroutines/scheduling/a$d;->TERMINATED:Lkotlinx/coroutines/scheduling/a$d;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/a$c;->u(Lkotlinx/coroutines/scheduling/a$d;)Z

    .line 119
    .line 120
    :cond_5
    sget-object p1, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 121
    .line 122
    const-wide/16 v0, 0x0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 126
    .line 127
    sget-object p1, Lkotlinx/coroutines/scheduling/a;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 131
    return-void

    .line 132
    .line 133
    .line 134
    :cond_6
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/a;->O(Lkotlinx/coroutines/scheduling/h;)V

    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move-exception p1

    .line 137
    monitor-exit v1

    .line 138
    throw p1
.end method

.method public final b0()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->y0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/coroutines/scheduling/a;->t0(Lkotlinx/coroutines/scheduling/a;JILjava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->y0()Z

    .line 22
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x2710

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/a;->Q(J)V

    .line 6
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->m(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final i(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;)Lkotlinx/coroutines/scheduling/h;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/scheduling/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/l;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/g;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/h;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 13
    .line 14
    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/h;->submissionTime:J

    .line 15
    .line 16
    iput-object p2, p1, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    new-instance v2, Lkotlinx/coroutines/scheduling/k;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/k;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/i;)V

    .line 23
    return-object v2
.end method

.method public final isTerminated()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final l(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    .locals 5
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
    .line 3
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->d()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/a;->i(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;)Lkotlinx/coroutines/scheduling/h;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object p2, p1, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-ne p2, v1, :cond_1

    .line 24
    move p2, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move p2, v0

    .line 27
    .line 28
    :goto_0
    if-eqz p2, :cond_2

    .line 29
    .line 30
    sget-object v2, Lkotlinx/coroutines/scheduling/a;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 31
    .line 32
    .line 33
    const-wide/32 v3, 0x200000

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 37
    move-result-wide v2

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_2
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/a;->k()Lkotlinx/coroutines/scheduling/a$c;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v4, p1, p3}, Lkotlinx/coroutines/scheduling/a;->g0(Lkotlinx/coroutines/scheduling/a$c;Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/a;->f(Lkotlinx/coroutines/scheduling/h;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_3
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    iget-object p3, p0, Lkotlinx/coroutines/scheduling/a;->schedulerName:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p3, " was terminated"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    .line 84
    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    move v0, v1

    .line 88
    .line 89
    :cond_5
    if-eqz p2, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v2, v3, v0}, Lkotlinx/coroutines/scheduling/a;->U(JZ)V

    .line 93
    goto :goto_3

    .line 94
    .line 95
    :cond_6
    if-eqz v0, :cond_7

    .line 96
    return-void

    .line 97
    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/a;->b0()V

    .line 100
    :goto_3
    return-void
.end method

.method public final p(Lkotlinx/coroutines/scheduling/a$c;)Z
    .locals 9
    .param p1    # Lkotlinx/coroutines/scheduling/a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lkotlinx/coroutines/scheduling/a;->NOT_IN_STACK:Lkotlinx/coroutines/internal/i0;

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 16
    move-result-wide v3

    .line 17
    .line 18
    .line 19
    const-wide/32 v1, 0x1fffff

    .line 20
    and-long/2addr v1, v3

    .line 21
    long-to-int v1, v1

    .line 22
    .line 23
    .line 24
    const-wide/32 v5, 0x200000

    .line 25
    add-long/2addr v5, v3

    .line 26
    .line 27
    .line 28
    const-wide/32 v7, -0x200000

    .line 29
    and-long/2addr v5, v7

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/a$c;->h()I

    .line 33
    move-result v2

    .line 34
    .line 35
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7, v1}, Lkotlinx/coroutines/internal/d0;->b(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/scheduling/a$c;->r(Ljava/lang/Object;)V

    .line 43
    .line 44
    sget-object v1, Lkotlinx/coroutines/scheduling/a;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 45
    int-to-long v7, v2

    .line 46
    or-long/2addr v5, v7

    .line 47
    move-object v2, p0

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    const/4 p1, 0x1

    .line 55
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/d0;->a()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    move v4, v2

    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    move v7, v6

    .line 18
    move v8, v3

    .line 19
    .line 20
    :goto_0
    if-ge v8, v1, :cond_7

    .line 21
    .line 22
    iget-object v9, p0, Lkotlinx/coroutines/scheduling/a;->workers:Lkotlinx/coroutines/internal/d0;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v9, v8}, Lkotlinx/coroutines/internal/d0;->b(I)Ljava/lang/Object;

    .line 26
    move-result-object v9

    .line 27
    .line 28
    check-cast v9, Lkotlinx/coroutines/scheduling/a$c;

    .line 29
    .line 30
    if-nez v9, :cond_0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_0
    iget-object v10, v9, Lkotlinx/coroutines/scheduling/a$c;->localQueue:Lkotlinx/coroutines/scheduling/n;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/n;->e()I

    .line 37
    move-result v10

    .line 38
    .line 39
    iget-object v9, v9, Lkotlinx/coroutines/scheduling/a$c;->state:Lkotlinx/coroutines/scheduling/a$d;

    .line 40
    .line 41
    sget-object v11, Lkotlinx/coroutines/scheduling/a$b;->$EnumSwitchMapping$0:[I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 45
    move-result v9

    .line 46
    .line 47
    aget v9, v11, v9

    .line 48
    .line 49
    if-eq v9, v3, :cond_5

    .line 50
    const/4 v11, 0x2

    .line 51
    .line 52
    if-eq v9, v11, :cond_4

    .line 53
    const/4 v11, 0x3

    .line 54
    .line 55
    if-eq v9, v11, :cond_3

    .line 56
    const/4 v11, 0x4

    .line 57
    .line 58
    if-eq v9, v11, :cond_2

    .line 59
    const/4 v10, 0x5

    .line 60
    .line 61
    if-eq v9, v10, :cond_1

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    if-lez v10, :cond_6

    .line 70
    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const/16 v10, 0x64

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v9

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const/16 v10, 0x63

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v9

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    new-instance v9, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const/16 v10, 0x62

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v9

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_7
    sget-object v1, Lkotlinx/coroutines/scheduling/a;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 147
    move-result-wide v8

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/a;->schedulerName:Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const/16 v3, 0x40

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-static {p0}, Lkotlinx/coroutines/s0;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v3, "[Pool Size {core = "

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    iget v3, p0, Lkotlinx/coroutines/scheduling/a;->corePoolSize:I

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, ", max = "

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    iget v3, p0, Lkotlinx/coroutines/scheduling/a;->maxPoolSize:I

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v3, "}, Worker States {CPU = "

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v2, ", blocking = "

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v2, ", parked = "

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v2, ", dormant = "

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v2, ", terminated = "

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v2, "}, running workers queues = "

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v0, ", global CPU queue size = "

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->globalCpuQueue:Lkotlinx/coroutines/scheduling/d;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/u;->c()I

    .line 248
    move-result v0

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v0, ", global blocking queue size = "

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/a;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/d;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/u;->c()I

    .line 262
    move-result v0

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v0, ", Control State {created workers= "

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-wide/32 v2, 0x1fffff

    .line 274
    and-long/2addr v2, v8

    .line 275
    long-to-int v0, v2

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v0, ", blocking tasks = "

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    const-wide v2, 0x3ffffe00000L

    .line 289
    and-long/2addr v2, v8

    .line 290
    .line 291
    const/16 v0, 0x15

    .line 292
    shr-long/2addr v2, v0

    .line 293
    long-to-int v0, v2

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v0, ", CPUs acquired = "

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    iget v0, p0, Lkotlinx/coroutines/scheduling/a;->corePoolSize:I

    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    const-wide v2, 0x7ffffc0000000000L

    .line 309
    and-long/2addr v2, v8

    .line 310
    .line 311
    const/16 v4, 0x2a

    .line 312
    shr-long/2addr v2, v4

    .line 313
    long-to-int v2, v2

    .line 314
    sub-int/2addr v0, v2

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v0, "}]"

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v0

    .line 327
    return-object v0
.end method
