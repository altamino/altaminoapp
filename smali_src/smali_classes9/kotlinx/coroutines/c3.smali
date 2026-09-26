.class final Lkotlinx/coroutines/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# static fields
.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _state:I

.field private cancelHandle:Lkotlinx/coroutines/g1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final job:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final targetThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/c3;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/c3;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/b2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/c3;->job:Lkotlinx/coroutines/b2;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lkotlinx/coroutines/c3;->targetThread:Ljava/lang/Thread;

    .line 12
    return-void
.end method

.method private final b(I)Ljava/lang/Void;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Illegal state "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/c3;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    const/4 v0, 0x3

    .line 13
    .line 14
    if-ne v1, v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, v1}, Lkotlinx/coroutines/c3;->b(I)Ljava/lang/Void;

    .line 22
    .line 23
    new-instance v0, Lw7/i;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 27
    throw v0

    .line 28
    .line 29
    :cond_2
    sget-object v2, Lkotlinx/coroutines/c3;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 30
    const/4 v3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lkotlinx/coroutines/c3;->cancelHandle:Lkotlinx/coroutines/g1;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lkotlinx/coroutines/g1;->t()V

    .line 44
    :cond_3
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object p1, Lkotlinx/coroutines/c3;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    if-eq v0, p1, :cond_2

    .line 14
    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/c3;->b(I)Ljava/lang/Void;

    .line 22
    .line 23
    new-instance p1, Lw7/i;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1}, Lw7/i;-><init>()V

    .line 27
    throw p1

    .line 28
    :cond_2
    :goto_0
    return-void

    .line 29
    .line 30
    :cond_3
    sget-object v3, Lkotlinx/coroutines/c3;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lkotlinx/coroutines/c3;->targetThread:Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 45
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/c3;->job:Lkotlinx/coroutines/b2;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1, v1, p0}, Lkotlinx/coroutines/b2;->O(ZZLe8/l;)Lkotlinx/coroutines/g1;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lkotlinx/coroutines/c3;->cancelHandle:Lkotlinx/coroutines/g1;

    .line 10
    .line 11
    sget-object v0, Lkotlinx/coroutines/c3;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    if-eq v1, v0, :cond_2

    .line 21
    const/4 v0, 0x3

    .line 22
    .line 23
    if-ne v1, v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0, v1}, Lkotlinx/coroutines/c3;->b(I)Ljava/lang/Void;

    .line 28
    .line 29
    new-instance v0, Lw7/i;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 33
    throw v0

    .line 34
    :cond_2
    :goto_0
    return-void

    .line 35
    .line 36
    :cond_3
    sget-object v2, Lkotlinx/coroutines/c3;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/c3;->c(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
