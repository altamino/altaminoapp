.class final Lkotlinx/coroutines/g;
.super Lkotlinx/coroutines/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/a<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuilders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Builders.kt\nkotlinx/coroutines/BlockingCoroutine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation


# instance fields
.field private final blockedThread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventLoop:Lkotlinx/coroutines/k1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;Ljava/lang/Thread;Lkotlinx/coroutines/k1;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/k1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/g;ZZ)V

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/g;->blockedThread:Ljava/lang/Thread;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/g;->eventLoop:Lkotlinx/coroutines/k1;

    .line 9
    return-void
.end method


# virtual methods
.method protected C(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/coroutines/g;->blockedThread:Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lkotlinx/coroutines/g;->blockedThread:Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/b;->f(Ljava/lang/Thread;)V

    .line 24
    .line 25
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 33
    :cond_1
    return-void
.end method

.method public final a1()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

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
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->c()V

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/g;->eventLoop:Lkotlinx/coroutines/k1;

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/k1;->J0(Lkotlinx/coroutines/k1;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_4

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_9

    .line 29
    .line 30
    iget-object v0, p0, Lkotlinx/coroutines/g;->eventLoop:Lkotlinx/coroutines/k1;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lkotlinx/coroutines/k1;->M0()J

    .line 36
    move-result-wide v4

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    goto :goto_3

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->m()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0, v4, v5}, Lkotlinx/coroutines/b;->b(Ljava/lang/Object;J)V

    .line 60
    .line 61
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move-object v0, v3

    .line 64
    .line 65
    :goto_2
    if-nez v0, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_4
    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/g;->eventLoop:Lkotlinx/coroutines/k1;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/k1;->y0(Lkotlinx/coroutines/k1;ZILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->g()V

    .line 86
    .line 87
    .line 88
    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lkotlinx/coroutines/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    instance-of v1, v0, Lkotlinx/coroutines/c0;

    .line 96
    .line 97
    if-eqz v1, :cond_7

    .line 98
    move-object v3, v0

    .line 99
    .line 100
    check-cast v3, Lkotlinx/coroutines/c0;

    .line 101
    .line 102
    :cond_7
    if-nez v3, :cond_8

    .line 103
    return-object v0

    .line 104
    .line 105
    :cond_8
    iget-object v0, v3, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 106
    throw v0

    .line 107
    .line 108
    :cond_9
    :try_start_3
    new-instance v0, Ljava/lang/InterruptedException;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->F(Ljava/lang/Throwable;)Z

    .line 115
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    .line 117
    :goto_3
    :try_start_4
    iget-object v4, p0, Lkotlinx/coroutines/g;->eventLoop:Lkotlinx/coroutines/k1;

    .line 118
    .line 119
    if-eqz v4, :cond_a

    .line 120
    .line 121
    .line 122
    invoke-static {v4, v2, v1, v3}, Lkotlinx/coroutines/k1;->y0(Lkotlinx/coroutines/k1;ZILjava/lang/Object;)V

    .line 123
    :cond_a
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    .line 125
    .line 126
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    if-eqz v1, :cond_b

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lkotlinx/coroutines/b;->g()V

    .line 133
    :cond_b
    throw v0
.end method

.method protected r0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
