.class public final Landroidx/compose/runtime/BroadcastFrameClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/MonotonicFrameClock;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcastFrameClock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,132:1\n66#2:133\n66#2:134\n66#2:144\n66#2:147\n314#3,9:135\n323#3,2:145\n32#4,6:148\n*S KotlinDebug\n*F\n+ 1 BroadcastFrameClock.kt\nandroidx/compose/runtime/BroadcastFrameClock\n*L\n54#1:133\n62#1:134\n81#1:144\n112#1:147\n79#1:135,9\n79#1:145,2\n115#1:148,6\n*E\n"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private awaiters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private failureCause:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onNewAwaiters:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Le8/a;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Le8/a;)V
    .locals 0
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Le8/a;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Le8/a;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;-><init>(Le8/a;)V

    return-void
.end method

.method public static final synthetic c(Landroidx/compose/runtime/BroadcastFrameClock;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;->s(Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;

    .line 3
    return-object p0
.end method

.method public static final synthetic q(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static final synthetic r(Landroidx/compose/runtime/BroadcastFrameClock;)Le8/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->onNewAwaiters:Le8/a;

    .line 3
    return-object p0
.end method

.method private final s(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->failureCause:Ljava/lang/Throwable;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    check-cast v4, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->a()Lkotlin/coroutines/d;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    sget-object v5, Lw7/v;->Companion:Lw7/v$a;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    .line 39
    invoke-static {v5}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-interface {v4, v5}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0

    .line 59
    throw p1
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->a(Landroidx/compose/runtime/MonotonicFrameClock;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/g$b;",
            ">(",
            "Lkotlin/coroutines/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->b(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic getKey()Lkotlin/coroutines/g$c;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/compose/runtime/b;->a(Landroidx/compose/runtime/MonotonicFrameClock;)Lkotlin/coroutines/g$c;

    move-result-object v0

    return-object v0
.end method

.method public k(Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/l<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    new-instance v1, Lkotlin/jvm/internal/p0;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->q(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    monitor-enter v3

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->p(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/lang/Throwable;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    sget-object p1, Lw7/v;->Companion:Lw7/v$a;

    .line 32
    .line 33
    .line 34
    invoke-static {v4}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v3

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_0
    :try_start_1
    new-instance v4, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, p1, v0}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;-><init>(Le8/l;Lkotlin/coroutines/d;)V

    .line 52
    .line 53
    iput-object v4, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->e(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/util/List;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 63
    move-result p1

    .line 64
    xor-int/2addr p1, v2

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->e(Landroidx/compose/runtime/BroadcastFrameClock;)Ljava/util/List;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    iget-object v5, v1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 71
    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    const-string v5, "awaiter"

    .line 75
    .line 76
    .line 77
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 78
    const/4 v5, 0x0

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    check-cast v5, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    xor-int/2addr p1, v2

    .line 86
    monitor-exit v3

    .line 87
    .line 88
    new-instance v2, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, p0, v1}, Landroidx/compose/runtime/BroadcastFrameClock$withFrameNanos$2$1;-><init>(Landroidx/compose/runtime/BroadcastFrameClock;Lkotlin/jvm/internal/p0;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v2}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->r(Landroidx/compose/runtime/BroadcastFrameClock;)Le8/a;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-static {p0}, Landroidx/compose/runtime/BroadcastFrameClock;->r(Landroidx/compose/runtime/BroadcastFrameClock;)Le8/a;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    goto :goto_1

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    .line 113
    .line 114
    invoke-static {p0, p1}, Landroidx/compose/runtime/BroadcastFrameClock;->c(Landroidx/compose/runtime/BroadcastFrameClock;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    if-ne p1, v0, :cond_3

    .line 125
    .line 126
    .line 127
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 128
    :cond_3
    return-object p1

    .line 129
    :goto_2
    monitor-exit v3

    .line 130
    throw p1
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g$c<",
            "*>;)",
            "Lkotlin/coroutines/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->c(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->d(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final t()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 6
    .line 7
    check-cast v1, Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    xor-int/lit8 v1, v1, 0x1

    .line 14
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    .line 18
    throw v1
.end method

.method public final u(J)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/List;

    .line 8
    .line 9
    iput-object v2, p0, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/List;

    .line 10
    .line 11
    iput-object v1, p0, Landroidx/compose/runtime/BroadcastFrameClock;->spareList:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    check-cast v4, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, p1, p2}, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;->b(J)V

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0

    .line 41
    throw p1
.end method
