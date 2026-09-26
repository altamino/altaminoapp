.class public final Lkotlinx/coroutines/scheduling/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,255:1\n93#2:256\n93#2:257\n93#2:258\n93#2:261\n93#2:262\n1#3:259\n25#4:260\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n95#1:256\n162#1:257\n185#1:258\n205#1:261\n249#1:262\n205#1:260\n*E\n"
.end annotation


# static fields
.field private static final blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile blockingTasksInBuffer:I

.field private final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/scheduling/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile consumerIndex:I

.field private volatile lastScheduledTask:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "lastScheduledTask"

    const-class v2, Lkotlinx/coroutines/scheduling/n;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "producerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "consumerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "blockingTasksInBuffer"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    const/16 v1, 0x80

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 11
    .line 12
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/n;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 13
    return-void
.end method

.method private final b(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x7f

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    .line 20
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 24
    .line 25
    :cond_1
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 29
    move-result v0

    .line 30
    and-int/2addr v0, v1

    .line 31
    .line 32
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/n;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/n;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 48
    .line 49
    sget-object p1, Lkotlinx/coroutines/scheduling/n;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1
.end method

.method private final c(Lkotlinx/coroutines/scheduling/h;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 17
    :cond_0
    return-void
.end method

.method private final d()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Lkotlinx/coroutines/scheduling/n;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0
.end method

.method private final i()Lkotlinx/coroutines/scheduling/h;
    .locals 5

    .line 1
    .line 2
    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    sget-object v2, Lkotlinx/coroutines/scheduling/n;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 12
    move-result v2

    .line 13
    .line 14
    sub-int v2, v1, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    return-object v3

    .line 19
    .line 20
    :cond_1
    and-int/lit8 v2, v1, 0x7f

    .line 21
    .line 22
    add-int/lit8 v4, v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/n;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/n;->c(Lkotlinx/coroutines/scheduling/h;)V

    .line 43
    return-object v0
.end method

.method private final j(Lkotlinx/coroutines/scheduling/d;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->i()Lkotlinx/coroutines/scheduling/h;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Object;)Z

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1
.end method

.method private final k(Z)Lkotlinx/coroutines/scheduling/h;
    .locals 5

    .line 1
    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/scheduling/h;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    goto :goto_1

    .line 13
    .line 14
    :cond_1
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 15
    .line 16
    .line 17
    invoke-interface {v3}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    .line 21
    if-ne v3, v4, :cond_2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v4, 0x0

    .line 24
    .line 25
    :goto_0
    if-ne v4, p1, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    return-object v1

    .line 33
    .line 34
    :cond_3
    :goto_1
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 38
    move-result v0

    .line 39
    .line 40
    sget-object v1, Lkotlinx/coroutines/scheduling/n;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 44
    move-result v1

    .line 45
    .line 46
    :cond_4
    if-eq v0, v1, :cond_6

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    sget-object v3, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 54
    move-result v3

    .line 55
    .line 56
    if-nez v3, :cond_5

    .line 57
    return-object v2

    .line 58
    .line 59
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/scheduling/n;->m(IZ)Lkotlinx/coroutines/scheduling/h;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    return-object v3

    .line 67
    :cond_6
    return-object v2
.end method

.method private final l(I)Lkotlinx/coroutines/scheduling/h;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Lkotlinx/coroutines/scheduling/n;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-ne p1, v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    const/4 p1, 0x0

    .line 19
    .line 20
    if-eq v0, v1, :cond_3

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    sget-object v3, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 28
    move-result v3

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_1
    add-int/lit8 p1, v0, 0x1

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/scheduling/n;->m(IZ)Lkotlinx/coroutines/scheduling/h;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    move v0, p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-object v0

    .line 43
    :cond_3
    return-object p1
.end method

.method private final m(IZ)Lkotlinx/coroutines/scheduling/h;
    .locals 4

    .line 1
    .line 2
    and-int/lit8 p1, p1, 0x7f

    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/n;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x0

    .line 25
    .line 26
    :goto_0
    if-ne v3, p2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/n;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, p1, v0, v1}, Lt7/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    sget-object p1, Lkotlinx/coroutines/scheduling/n;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 42
    :cond_1
    return-object v0

    .line 43
    :cond_2
    return-object v1
.end method

.method private final o(ILkotlin/jvm/internal/p0;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/internal/p0<",
            "Lkotlinx/coroutines/scheduling/h;",
            ">;)J"
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/scheduling/h;

    .line 9
    .line 10
    const-wide/16 v2, -0x2

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    return-wide v2

    .line 14
    .line 15
    :cond_1
    iget-object v4, v1, Lkotlinx/coroutines/scheduling/h;->taskContext:Lkotlinx/coroutines/scheduling/i;

    .line 16
    .line 17
    .line 18
    invoke-interface {v4}, Lkotlinx/coroutines/scheduling/i;->b()I

    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x1

    .line 21
    .line 22
    if-ne v4, v5, :cond_2

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v5, 0x2

    .line 25
    .line 26
    :goto_0
    and-int v4, v5, p1

    .line 27
    .line 28
    if-nez v4, :cond_3

    .line 29
    return-wide v2

    .line 30
    .line 31
    :cond_3
    sget-object v2, Lkotlinx/coroutines/scheduling/l;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/g;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/g;->a()J

    .line 35
    move-result-wide v2

    .line 36
    .line 37
    iget-wide v4, v1, Lkotlinx/coroutines/scheduling/h;->submissionTime:J

    .line 38
    sub-long/2addr v2, v4

    .line 39
    .line 40
    sget-wide v4, Lkotlinx/coroutines/scheduling/l;->WORK_STEALING_TIME_RESOLUTION_NS:J

    .line 41
    .line 42
    cmp-long v6, v2, v4

    .line 43
    .line 44
    if-gez v6, :cond_4

    .line 45
    sub-long/2addr v4, v2

    .line 46
    return-wide v4

    .line 47
    :cond_4
    const/4 v2, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iput-object v1, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 56
    .line 57
    const-wide/16 p1, -0x1

    .line 58
    return-wide p1
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/scheduling/h;Z)Lkotlinx/coroutines/scheduling/h;
    .locals 0
    .param p1    # Lkotlinx/coroutines/scheduling/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/n;->b(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    sget-object p2, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lkotlinx/coroutines/scheduling/h;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/n;->b(Lkotlinx/coroutines/scheduling/h;)Lkotlinx/coroutines/scheduling/h;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final e()I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->d()I

    .line 12
    move-result v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->d()I

    .line 19
    move-result v0

    .line 20
    :goto_0
    return v0
.end method

.method public final f(Lkotlinx/coroutines/scheduling/d;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/scheduling/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/u;->a(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/n;->j(Lkotlinx/coroutines/scheduling/d;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return-void
.end method

.method public final g()Lkotlinx/coroutines/scheduling/h;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/n;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lkotlinx/coroutines/scheduling/h;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->i()Lkotlinx/coroutines/scheduling/h;

    .line 15
    move-result-object v0

    .line 16
    :cond_0
    return-object v0
.end method

.method public final h()Lkotlinx/coroutines/scheduling/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/n;->k(Z)Lkotlinx/coroutines/scheduling/h;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final n(ILkotlin/jvm/internal/p0;)J
    .locals 1
    .param p2    # Lkotlin/jvm/internal/p0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/internal/p0<",
            "Lkotlinx/coroutines/scheduling/h;",
            ">;)J"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/n;->i()Lkotlinx/coroutines/scheduling/h;

    .line 7
    move-result-object v0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/n;->l(I)Lkotlinx/coroutines/scheduling/h;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-object v0, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 17
    .line 18
    const-wide/16 p1, -0x1

    .line 19
    return-wide p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/n;->o(ILkotlin/jvm/internal/p0;)J

    .line 23
    move-result-wide p1

    .line 24
    return-wide p1
.end method
