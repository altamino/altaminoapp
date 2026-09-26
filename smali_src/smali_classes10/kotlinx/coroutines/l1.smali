.class public abstract Lkotlinx/coroutines/l1;
.super Lkotlinx/coroutines/m1;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/x0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/l1$a;,
        Lkotlinx/coroutines/l1$b;,
        Lkotlinx/coroutines/l1$c;,
        Lkotlinx/coroutines/l1$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n60#2:544\n61#2,7:550\n28#3,4:545\n20#4:549\n56#5:557\n1#6:558\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n269#1:544\n269#1:550,7\n269#1:545,4\n269#1:549\n280#1:557\n*E\n"
.end annotation


# static fields
.field private static final _delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _isCompleted$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _delayed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _isCompleted:I

.field private volatile _queue:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, Lkotlinx/coroutines/l1;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/l1;->_isCompleted$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/m1;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lkotlinx/coroutines/l1;->_isCompleted:I

    .line 7
    return-void
.end method

.method public static final synthetic S0(Lkotlinx/coroutines/l1;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/l1;->m()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final T0()V
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget-object v1, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/internal/i0;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0, v2, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    instance-of v2, v1, Lkotlinx/coroutines/internal/v;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    check-cast v1, Lkotlinx/coroutines/internal/v;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/v;->d()Z

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/internal/i0;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-ne v1, v2, :cond_3

    .line 39
    return-void

    .line 40
    .line 41
    :cond_3
    new-instance v2, Lkotlinx/coroutines/internal/v;

    .line 42
    .line 43
    const/16 v3, 0x8

    .line 44
    const/4 v4, 0x1

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/internal/v;-><init>(IZ)V

    .line 48
    .line 49
    const-string v3, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v3, v1

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Runnable;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 59
    .line 60
    sget-object v3, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 61
    .line 62
    .line 63
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    return-void
.end method

.method private final U0()Ljava/lang/Runnable;
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return-object v2

    .line 11
    .line 12
    :cond_1
    instance-of v3, v1, Lkotlinx/coroutines/internal/v;

    .line 13
    .line 14
    if-eqz v3, :cond_3

    .line 15
    .line 16
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v2, v1

    .line 21
    .line 22
    check-cast v2, Lkotlinx/coroutines/internal/v;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/v;->j()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    sget-object v4, Lkotlinx/coroutines/internal/v;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/i0;

    .line 29
    .line 30
    if-eq v3, v4, :cond_2

    .line 31
    .line 32
    check-cast v3, Ljava/lang/Runnable;

    .line 33
    return-object v3

    .line 34
    .line 35
    :cond_2
    sget-object v3, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/v;->i()Lkotlinx/coroutines/internal/v;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/internal/i0;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    if-ne v1, v3, :cond_4

    .line 50
    return-object v2

    .line 51
    .line 52
    :cond_4
    sget-object v3, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    .line 55
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    const-string v0, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    check-cast v1, Ljava/lang/Runnable;

    .line 66
    return-object v1
.end method

.method private final W0(Ljava/lang/Runnable;)Z
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lkotlinx/coroutines/l1;->m()Z

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    return v3

    .line 15
    :cond_1
    const/4 v2, 0x1

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    sget-object v1, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p0, v3, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    return v2

    .line 28
    .line 29
    :cond_2
    instance-of v4, v1, Lkotlinx/coroutines/internal/v;

    .line 30
    .line 31
    if-eqz v4, :cond_6

    .line 32
    .line 33
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v4, v1

    .line 38
    .line 39
    check-cast v4, Lkotlinx/coroutines/internal/v;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p1}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 43
    move-result v5

    .line 44
    .line 45
    if-eqz v5, :cond_5

    .line 46
    .line 47
    if-eq v5, v2, :cond_4

    .line 48
    const/4 v1, 0x2

    .line 49
    .line 50
    if-eq v5, v1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return v3

    .line 53
    .line 54
    :cond_4
    sget-object v2, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lkotlinx/coroutines/internal/v;->i()Lkotlinx/coroutines/internal/v;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_5
    return v2

    .line 64
    .line 65
    .line 66
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/internal/i0;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    if-ne v1, v4, :cond_7

    .line 70
    return v3

    .line 71
    .line 72
    :cond_7
    new-instance v3, Lkotlinx/coroutines/internal/v;

    .line 73
    .line 74
    const/16 v4, 0x8

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v4, v2}, Lkotlinx/coroutines/internal/v;-><init>(IZ)V

    .line 78
    .line 79
    const-string v4, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }"

    .line 80
    .line 81
    .line 82
    invoke-static {v1, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v4, v1

    .line 84
    .line 85
    check-cast v4, Ljava/lang/Runnable;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/v;->a(Ljava/lang/Object;)I

    .line 92
    .line 93
    sget-object v4, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 94
    .line 95
    .line 96
    invoke-static {v4, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    move-result v1

    .line 98
    .line 99
    if-eqz v1, :cond_0

    .line 100
    return v2
.end method

.method private final Y0()V
    .locals 3

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
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->a()J

    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    :goto_0
    sget-object v2, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lkotlinx/coroutines/l1$d;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/q0;->i()Lkotlinx/coroutines/internal/r0;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lkotlinx/coroutines/l1$c;

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/m1;->Q0(JLkotlinx/coroutines/l1$c;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    return-void
.end method

.method private final b1(JLkotlinx/coroutines/l1$c;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/l1;->m()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Lkotlinx/coroutines/l1$d;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Lkotlinx/coroutines/l1$d;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1, p2}, Lkotlinx/coroutines/l1$d;-><init>(J)V

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p0, v2, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    move-object v1, v0

    .line 36
    .line 37
    check-cast v1, Lkotlinx/coroutines/l1$d;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p3, p1, p2, v1, p0}, Lkotlinx/coroutines/l1$c;->e(JLkotlinx/coroutines/l1$d;Lkotlinx/coroutines/l1;)I

    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method private final d1(Z)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/l1;->_isCompleted$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 6
    return-void
.end method

.method private final e1(Lkotlinx/coroutines/l1$c;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/l1$d;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->e()Lkotlinx/coroutines/internal/r0;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lkotlinx/coroutines/l1$c;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    .line 20
    :goto_0
    if-ne v0, p1, :cond_1

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_1
    return p1
.end method

.method private final m()Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/l1;->_isCompleted$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

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


# virtual methods
.method protected H0()J
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lkotlinx/coroutines/k1;->H0()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-wide v2

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v4, 0x7fffffffffffffffL

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    instance-of v1, v0, Lkotlinx/coroutines/internal/v;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    check-cast v0, Lkotlinx/coroutines/internal/v;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/v;->g()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    return-wide v2

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/internal/i0;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    return-wide v4

    .line 45
    :cond_2
    return-wide v2

    .line 46
    .line 47
    :cond_3
    sget-object v0, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lkotlinx/coroutines/l1$d;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->e()Lkotlinx/coroutines/internal/r0;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lkotlinx/coroutines/l1$c;

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_4
    iget-wide v0, v0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lkotlinx/coroutines/b;->a()J

    .line 76
    move-result-wide v4

    .line 77
    goto :goto_0

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    move-result-wide v4

    .line 82
    :goto_0
    sub-long/2addr v0, v4

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v1, v2, v3}, Lj8/m;->f(JJ)J

    .line 86
    move-result-wide v0

    .line 87
    return-wide v0

    .line 88
    :cond_6
    :goto_1
    return-wide v4
.end method

.method public M0()J
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/k1;->N0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-wide v1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lkotlinx/coroutines/l1$d;

    .line 18
    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->d()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-nez v3, :cond_5

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lkotlinx/coroutines/b;->a()J

    .line 35
    move-result-wide v3

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 40
    move-result-wide v3

    .line 41
    :cond_2
    :goto_0
    monitor-enter v0

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->b()Lkotlinx/coroutines/internal/r0;

    .line 45
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v6, 0x0

    .line 47
    .line 48
    if-nez v5, :cond_3

    .line 49
    monitor-exit v0

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_3
    :try_start_1
    check-cast v5, Lkotlinx/coroutines/l1$c;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v3, v4}, Lkotlinx/coroutines/l1$c;->f(J)Z

    .line 56
    move-result v7

    .line 57
    .line 58
    if-eqz v7, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v5}, Lkotlinx/coroutines/l1;->W0(Ljava/lang/Runnable;)Z

    .line 62
    move-result v5

    .line 63
    .line 64
    if-eqz v5, :cond_4

    .line 65
    const/4 v5, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/internal/q0;->h(I)Lkotlinx/coroutines/internal/r0;

    .line 69
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception v1

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    :goto_1
    monitor-exit v0

    .line 74
    .line 75
    :goto_2
    check-cast v6, Lkotlinx/coroutines/l1$c;

    .line 76
    .line 77
    if-nez v6, :cond_2

    .line 78
    goto :goto_4

    .line 79
    :goto_3
    monitor-exit v0

    .line 80
    throw v1

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_4
    invoke-direct {p0}, Lkotlinx/coroutines/l1;->U0()Ljava/lang/Runnable;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    return-wide v1

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->H0()J

    .line 94
    move-result-wide v0

    .line 95
    return-wide v0
.end method

.method public V0(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/l1;->W0(Ljava/lang/Runnable;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->R0()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lkotlinx/coroutines/t0;->INSTANCE:Lkotlinx/coroutines/t0;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/t0;->V0(Ljava/lang/Runnable;)V

    .line 16
    :goto_0
    return-void
.end method

.method protected X0()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/k1;->L0()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lkotlinx/coroutines/l1$d;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q0;->d()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    return v1

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x1

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    :goto_0
    move v1, v2

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/v;

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    check-cast v0, Lkotlinx/coroutines/internal/v;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/v;->g()Z

    .line 46
    move-result v1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/o1;->a()Lkotlinx/coroutines/internal/i0;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    if-ne v0, v3, :cond_4

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    :goto_1
    return v1
.end method

.method protected final Z0()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/l1;->_queue$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    sget-object v0, Lkotlinx/coroutines/l1;->_delayed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public final a1(JLkotlinx/coroutines/l1$c;)V
    .locals 2
    .param p3    # Lkotlinx/coroutines/l1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/l1;->b1(JLkotlinx/coroutines/l1$c;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    const/4 p1, 0x2

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "unexpected result"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/m1;->Q0(JLkotlinx/coroutines/l1$c;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-direct {p0, p3}, Lkotlinx/coroutines/l1;->e1(Lkotlinx/coroutines/l1$c;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->R0()V

    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method protected final c1(JLjava/lang/Runnable;)Lkotlinx/coroutines/g1;
    .locals 3
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlinx/coroutines/o1;->c(J)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-gez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->a()J

    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    :goto_0
    new-instance v2, Lkotlinx/coroutines/l1$b;

    .line 31
    add-long/2addr p1, v0

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p1, p2, p3}, Lkotlinx/coroutines/l1$b;-><init>(JLjava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/l1;->a1(JLkotlinx/coroutines/l1$c;)V

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    sget-object v2, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 41
    :goto_1
    return-object v2
.end method

.method public final dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
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
    .line 3
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/l1;->V0(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;
    .locals 0
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

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/x0$a;->b(Lkotlinx/coroutines/x0;JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/o;)V
    .locals 3
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

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlinx/coroutines/o1;->c(J)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-gez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->a()J

    .line 23
    move-result-wide v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    :goto_0
    new-instance v2, Lkotlinx/coroutines/l1$a;

    .line 31
    add-long/2addr p1, v0

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, p0, p1, p2, p3}, Lkotlinx/coroutines/l1$a;-><init>(Lkotlinx/coroutines/l1;JLkotlinx/coroutines/o;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/l1;->a1(JLkotlinx/coroutines/l1$c;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p3, v2}, Lkotlinx/coroutines/r;->a(Lkotlinx/coroutines/o;Lkotlinx/coroutines/g1;)V

    .line 41
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b3;->INSTANCE:Lkotlinx/coroutines/b3;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/b3;->c()V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0}, Lkotlinx/coroutines/l1;->d1(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lkotlinx/coroutines/l1;->T0()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->M0()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lkotlinx/coroutines/l1;->Y0()V

    .line 26
    return-void
.end method
