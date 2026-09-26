.class public final Landroidx/room/MultiInstanceInvalidationClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiInstanceInvalidationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiInstanceInvalidationClient.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,129:1\n37#2,2:130\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n95#1:130,2\n*E\n"
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final callback:Landroidx/room/IMultiInstanceInvalidationCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clientId:I

.field private final executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidationTracker:Landroidx/room/InvalidationTracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public observer:Landroidx/room/InvalidationTracker$Observer;

.field private final removeObserverRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private service:Landroidx/room/IMultiInstanceInvalidationService;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final serviceConnection:Landroid/content/ServiceConnection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final setUpRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/room/InvalidationTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "name"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "serviceIntent"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "invalidationTracker"

    .line 19
    .line 20
    .line 21
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    const-string v0, "executor"

    .line 24
    .line 25
    .line 26
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->name:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p4, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    .line 34
    .line 35
    iput-object p5, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->appContext:Landroid/content/Context;

    .line 42
    .line 43
    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$callback$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p0}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    .line 47
    .line 48
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->callback:Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 49
    .line 50
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    const/4 p5, 0x0

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 55
    .line 56
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p0}, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    .line 62
    .line 63
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 64
    .line 65
    new-instance v0, Landroidx/room/d;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p0}, Landroidx/room/d;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    .line 69
    .line 70
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->setUpRunnable:Ljava/lang/Runnable;

    .line 71
    .line 72
    new-instance v0, Landroidx/room/e;

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, p0}, Landroidx/room/e;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    .line 76
    .line 77
    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable:Ljava/lang/Runnable;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4}, Landroidx/room/InvalidationTracker;->j()Ljava/util/Map;

    .line 81
    move-result-object p4

    .line 82
    .line 83
    .line 84
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 85
    move-result-object p4

    .line 86
    .line 87
    new-array p5, p5, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-interface {p4, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    move-result-object p4

    .line 92
    .line 93
    .line 94
    const-string/jumbo p5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 95
    .line 96
    .line 97
    invoke-static {p4, p5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    check-cast p4, [Ljava/lang/String;

    .line 100
    .line 101
    new-instance p5, Landroidx/room/MultiInstanceInvalidationClient$1;

    .line 102
    .line 103
    .line 104
    invoke-direct {p5, p0, p4}, Landroidx/room/MultiInstanceInvalidationClient$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p5}, Landroidx/room/MultiInstanceInvalidationClient;->l(Landroidx/room/InvalidationTracker$Observer;)V

    .line 108
    const/4 p4, 0x1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p3, p2, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method public static synthetic a(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/MultiInstanceInvalidationClient;->n(Landroidx/room/MultiInstanceInvalidationClient;)V

    return-void
.end method

.method public static synthetic b(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/MultiInstanceInvalidationClient;->k(Landroidx/room/MultiInstanceInvalidationClient;)V

    return-void
.end method

.method private static final k(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->f()Landroidx/room/InvalidationTracker$Observer;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->o(Landroidx/room/InvalidationTracker$Observer;)V

    .line 16
    return-void
.end method

.method private static final n(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->callback:Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->name:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Landroidx/room/IMultiInstanceInvalidationService;->V0(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->f()Landroidx/room/InvalidationTracker$Observer;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->c(Landroidx/room/InvalidationTracker$Observer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    .line 33
    const-string v0, "ROOM"

    .line 34
    .line 35
    const-string v1, "Cannot register multi-instance invalidation callback"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    return v0
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final e()Landroidx/room/InvalidationTracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    return-object v0
.end method

.method public final f()Landroidx/room/InvalidationTracker$Observer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string/jumbo v0, "observer"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final g()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final h()Landroidx/room/IMultiInstanceInvalidationService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    return-object v0
.end method

.method public final i()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->setUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final j()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final l(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1    # Landroidx/room/InvalidationTracker$Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->observer:Landroidx/room/InvalidationTracker$Observer;

    return-void
.end method

.method public final m(Landroidx/room/IMultiInstanceInvalidationService;)V
    .locals 0
    .param p1    # Landroidx/room/IMultiInstanceInvalidationService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    return-void
.end method
