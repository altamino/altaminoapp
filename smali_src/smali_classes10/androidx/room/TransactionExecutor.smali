.class public final Landroidx/room/TransactionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionExecutor.kt\nandroidx/room/TransactionExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation


# instance fields
.field private active:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final syncLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "executor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayDeque;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    new-instance p1, Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/room/TransactionExecutor;->b(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V

    return-void
.end method

.method private static final b(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$command"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/room/TransactionExecutor;->c()V

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/room/TransactionExecutor;->c()V

    .line 23
    throw p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    move-object v2, v1

    .line 11
    .line 12
    check-cast v2, Ljava/lang/Runnable;

    .line 13
    .line 14
    iput-object v2, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Runnable;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    :goto_0
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0

    .line 30
    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "command"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/util/ArrayDeque;

    .line 11
    .line 12
    new-instance v2, Landroidx/room/x;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p1, p0}, Landroidx/room/x;-><init>(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Runnable;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->c()V

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    :goto_0
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    throw p1
.end method
