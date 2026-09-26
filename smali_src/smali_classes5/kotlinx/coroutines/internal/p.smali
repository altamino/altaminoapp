.class public final Lkotlinx/coroutines/internal/p;
.super Lkotlinx/coroutines/k0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/x0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"
.end annotation


# static fields
.field private static final runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/coroutines/x0;

.field private final dispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parallelism:I

.field private final queue:Lkotlinx/coroutines/internal/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/u<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile runningWorkers:I

.field private final workerAllocationLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/p;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/p;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/k0;I)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/k0;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/internal/p;->dispatcher:Lkotlinx/coroutines/k0;

    .line 6
    .line 7
    iput p2, p0, Lkotlinx/coroutines/internal/p;->parallelism:I

    .line 8
    .line 9
    instance-of p2, p1, Lkotlinx/coroutines/x0;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lkotlinx/coroutines/x0;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lkotlinx/coroutines/u0;->a()Lkotlinx/coroutines/x0;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/p;->$$delegate_0:Lkotlinx/coroutines/x0;

    .line 24
    .line 25
    new-instance p1, Lkotlinx/coroutines/internal/u;

    .line 26
    const/4 p2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/u;-><init>(Z)V

    .line 30
    .line 31
    iput-object p1, p0, Lkotlinx/coroutines/internal/p;->queue:Lkotlinx/coroutines/internal/u;

    .line 32
    .line 33
    new-instance p1, Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    iput-object p1, p0, Lkotlinx/coroutines/internal/p;->workerAllocationLock:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private final F0()Ljava/lang/Runnable;
    .locals 3

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/p;->queue:Lkotlinx/coroutines/internal/u;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/u;->d()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Runnable;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lkotlinx/coroutines/internal/p;->workerAllocationLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    .line 15
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/internal/p;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 19
    .line 20
    iget-object v2, p0, Lkotlinx/coroutines/internal/p;->queue:Lkotlinx/coroutines/internal/u;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/u;->c()I

    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    monitor-exit v0

    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    .line 31
    .line 32
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0

    .line 37
    throw v1

    .line 38
    :cond_1
    return-object v0
.end method

.method private final G0()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/p;->workerAllocationLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/internal/p;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 9
    move-result v2

    .line 10
    .line 11
    iget v3, p0, Lkotlinx/coroutines/internal/p;->parallelism:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0

    .line 25
    throw v1
.end method

.method public static final synthetic L(Lkotlinx/coroutines/internal/p;)Lkotlinx/coroutines/k0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lkotlinx/coroutines/internal/p;->dispatcher:Lkotlinx/coroutines/k0;

    .line 3
    return-object p0
.end method

.method public static final synthetic y0(Lkotlinx/coroutines/internal/p;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;->F0()Ljava/lang/Runnable;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 0
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
    iget-object p1, p0, Lkotlinx/coroutines/internal/p;->queue:Lkotlinx/coroutines/internal/u;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Object;)Z

    .line 6
    .line 7
    sget-object p1, Lkotlinx/coroutines/internal/p;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iget p2, p0, Lkotlinx/coroutines/internal/p;->parallelism:I

    .line 14
    .line 15
    if-ge p1, p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;->G0()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;->F0()Ljava/lang/Runnable;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/p$a;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/p$a;-><init>(Lkotlinx/coroutines/internal/p;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    iget-object p1, p0, Lkotlinx/coroutines/internal/p;->dispatcher:Lkotlinx/coroutines/k0;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/k0;->dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
    .locals 0
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
    iget-object p1, p0, Lkotlinx/coroutines/internal/p;->queue:Lkotlinx/coroutines/internal/u;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Object;)Z

    .line 6
    .line 7
    sget-object p1, Lkotlinx/coroutines/internal/p;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    iget p2, p0, Lkotlinx/coroutines/internal/p;->parallelism:I

    .line 14
    .line 15
    if-ge p1, p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;->G0()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;->F0()Ljava/lang/Runnable;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/p$a;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/p$a;-><init>(Lkotlinx/coroutines/internal/p;Ljava/lang/Runnable;)V

    .line 34
    .line 35
    iget-object p1, p0, Lkotlinx/coroutines/internal/p;->dispatcher:Lkotlinx/coroutines/k0;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/k0;->dispatchYield(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;
    .locals 1
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/p;->$$delegate_0:Lkotlinx/coroutines/x0;

    invoke-interface {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/x0;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;

    move-result-object p1

    return-object p1
.end method

.method public limitedParallelism(I)Lkotlinx/coroutines/k0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/internal/q;->a(I)V

    .line 4
    .line 5
    iget v0, p0, Lkotlinx/coroutines/internal/p;->parallelism:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/k0;->limitedParallelism(I)Lkotlinx/coroutines/k0;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/o;)V
    .locals 1
    .param p3    # Lkotlinx/coroutines/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/o<",
            "-",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/p;->$$delegate_0:Lkotlinx/coroutines/x0;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/x0;->scheduleResumeAfterDelay(JLkotlinx/coroutines/o;)V

    return-void
.end method
