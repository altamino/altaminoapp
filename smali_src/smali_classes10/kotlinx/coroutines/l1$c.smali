.class public abstract Lkotlinx/coroutines/l1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lkotlinx/coroutines/g1;
.implements Lkotlinx/coroutines/internal/r0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lkotlinx/coroutines/l1$c;",
        ">;",
        "Lkotlinx/coroutines/g1;",
        "Lkotlinx/coroutines/internal/r0;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n1#1,543:1\n28#2,4:544\n28#2,4:550\n28#2,4:562\n20#3:548\n20#3:554\n20#3:566\n72#4:549\n73#4,7:555\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n437#1:544,4\n439#1:550,4\n479#1:562,4\n437#1:548\n439#1:554\n479#1:566\n439#1:549\n439#1:555,7\n*E\n"
.end annotation


# instance fields
.field private volatile _heap:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private index:I

.field public nanoTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 6
    const/4 p1, -0x1

    .line 7
    .line 8
    iput p1, p0, Lkotlinx/coroutines/l1$c;->index:I

    .line 9
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/internal/q0;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/q0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/q0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/l1$c;->_heap:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/o1;->b()Lkotlinx/coroutines/internal/i0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/coroutines/l1$c;->_heap:Ljava/lang/Object;

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Failed requirement."

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1
.end method

.method public c()Lkotlinx/coroutines/internal/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/q0<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/l1$c;->_heap:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lkotlinx/coroutines/internal/q0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/internal/q0;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lkotlinx/coroutines/l1$c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/l1$c;->d(Lkotlinx/coroutines/l1$c;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Lkotlinx/coroutines/l1$c;)I
    .locals 4
    .param p1    # Lkotlinx/coroutines/l1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-wide v0, p0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 3
    .line 4
    iget-wide v2, p1, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 5
    sub-long/2addr v0, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-gez p1, :cond_1

    .line 16
    const/4 p1, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method

.method public final e(JLkotlinx/coroutines/l1$d;Lkotlinx/coroutines/l1;)I
    .locals 7
    .param p3    # Lkotlinx/coroutines/l1$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/l1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/l1$c;->_heap:Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/o1;->b()Lkotlinx/coroutines/internal/i0;

    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    monitor-exit p0

    .line 11
    const/4 p1, 0x2

    .line 12
    return p1

    .line 13
    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_2
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/q0;->b()Lkotlinx/coroutines/internal/r0;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lkotlinx/coroutines/l1$c;

    .line 20
    .line 21
    .line 22
    invoke-static {p4}, Lkotlinx/coroutines/l1;->S0(Lkotlinx/coroutines/l1;)Z

    .line 23
    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    monitor-exit p0

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_3

    .line 32
    .line 33
    :cond_1
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :try_start_4
    iput-wide p1, p3, Lkotlinx/coroutines/l1$d;->timeNow:J

    .line 38
    goto :goto_1

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_2
    iget-wide v3, v0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 43
    .line 44
    sub-long v5, v3, p1

    .line 45
    .line 46
    cmp-long p4, v5, v1

    .line 47
    .line 48
    if-ltz p4, :cond_3

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move-wide p1, v3

    .line 51
    .line 52
    :goto_0
    iget-wide v3, p3, Lkotlinx/coroutines/l1$d;->timeNow:J

    .line 53
    .line 54
    sub-long v3, p1, v3

    .line 55
    .line 56
    cmp-long p4, v3, v1

    .line 57
    .line 58
    if-lez p4, :cond_4

    .line 59
    .line 60
    iput-wide p1, p3, Lkotlinx/coroutines/l1$d;->timeNow:J

    .line 61
    .line 62
    :cond_4
    :goto_1
    iget-wide p1, p0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 63
    .line 64
    iget-wide v3, p3, Lkotlinx/coroutines/l1$d;->timeNow:J

    .line 65
    sub-long/2addr p1, v3

    .line 66
    .line 67
    cmp-long p1, p1, v1

    .line 68
    .line 69
    if-gez p1, :cond_5

    .line 70
    .line 71
    iput-wide v3, p0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/q0;->a(Lkotlinx/coroutines/internal/r0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    monitor-exit p0

    .line 77
    const/4 p1, 0x0

    .line 78
    return p1

    .line 79
    :goto_2
    :try_start_6
    monitor-exit p3

    .line 80
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 81
    :goto_3
    monitor-exit p0

    .line 82
    throw p1
.end method

.method public final f(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lkotlinx/coroutines/l1$c;->index:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/l1$c;->index:I

    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/l1$c;->_heap:Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/o1;->b()Lkotlinx/coroutines/internal/i0;

    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    :try_start_1
    instance-of v1, v0, Lkotlinx/coroutines/l1$d;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lkotlinx/coroutines/l1$d;

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/q0;->g(Lkotlinx/coroutines/internal/r0;)Z

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/o1;->b()Lkotlinx/coroutines/internal/i0;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lkotlinx/coroutines/l1$c;->_heap:Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Delayed[nanos="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-wide v1, p0, Lkotlinx/coroutines/l1$c;->nanoTime:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x5d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
