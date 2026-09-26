.class public abstract Lkotlinx/coroutines/m1;
.super Lkotlinx/coroutines/k1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/k1;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected abstract P0()Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected Q0(JLkotlinx/coroutines/l1$c;)V
    .locals 1
    .param p3    # Lkotlinx/coroutines/l1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/t0;->INSTANCE:Lkotlinx/coroutines/t0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/l1;->a1(JLkotlinx/coroutines/l1$c;)V

    .line 6
    return-void
.end method

.method protected final R0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/m1;->P0()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eq v1, v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/b;->f(Ljava/lang/Thread;)V

    .line 20
    .line 21
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .line 25
    :goto_0
    if-nez v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 29
    :cond_1
    return-void
.end method
