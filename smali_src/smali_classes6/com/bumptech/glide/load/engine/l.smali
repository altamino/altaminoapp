.class Lcom/bumptech/glide/load/engine/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/h$b;
.implements La1/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/l$c;,
        Lcom/bumptech/glide/load/engine/l$d;,
        Lcom/bumptech/glide/load/engine/l$e;,
        Lcom/bumptech/glide/load/engine/l$b;,
        Lcom/bumptech/glide/load/engine/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/h$b<",
        "TR;>;",
        "La1/a$f;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/l$c;


# instance fields
.field private final animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field final cbs:Lcom/bumptech/glide/load/engine/l$e;

.field dataSource:Lcom/bumptech/glide/load/a;

.field private decodeJob:Lcom/bumptech/glide/load/engine/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field private final engineJobListener:Lcom/bumptech/glide/load/engine/m;

.field engineResource:Lcom/bumptech/glide/load/engine/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;"
        }
    .end annotation
.end field

.field private final engineResourceFactory:Lcom/bumptech/glide/load/engine/l$c;

.field exception:Lcom/bumptech/glide/load/engine/q;

.field private hasLoadFailed:Z

.field private hasResource:Z

.field private isCacheable:Z

.field private volatile isCancelled:Z

.field private key:Lcom/bumptech/glide/load/g;

.field private onlyRetrieveFromCache:Z

.field private final pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/v<",
            "*>;"
        }
    .end annotation
.end field

.field private final resourceListener:Lcom/bumptech/glide/load/engine/p$a;

.field private final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field private final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/a;

.field private final stateVerifier:La1/c;

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorPool:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/l$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/l$c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bumptech/glide/load/engine/l;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/l$c;

    .line 8
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;Landroidx/core/util/Pools$Pool;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/m;",
            "Lcom/bumptech/glide/load/engine/p$a;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;)V"
        }
    .end annotation

    sget-object v8, Lcom/bumptech/glide/load/engine/l;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/l$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/l;-><init>(Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/l$c;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/executor/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/load/engine/l$c;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/executor/a;",
            "Lcom/bumptech/glide/load/engine/m;",
            "Lcom/bumptech/glide/load/engine/p$a;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;",
            "Lcom/bumptech/glide/load/engine/l$c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/engine/l$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/l$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 4
    invoke-static {}, La1/c;->a()La1/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->stateVerifier:La1/c;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/l;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/l;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/l;->engineJobListener:Lcom/bumptech/glide/load/engine/m;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/l;->resourceListener:Lcom/bumptech/glide/load/engine/p$a;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/l;->pool:Landroidx/core/util/Pools$Pool;

    iput-object p8, p0, Lcom/bumptech/glide/load/engine/l;->engineResourceFactory:Lcom/bumptech/glide/load/engine/l$c;

    return-void
.end method

.method private j()Lcom/bumptech/glide/load/engine/executor/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->useUnlimitedSourceGeneratorPool:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->useAnimationPool:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    :goto_0
    return-object v0
.end method

.method private m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasLoadFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasResource:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->isCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private declared-synchronized q()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->key:Lcom/bumptech/glide/load/g;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/l$e;->clear()V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->key:Lcom/bumptech/glide/load/g;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->engineResource:Lcom/bumptech/glide/load/engine/p;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/l;->hasLoadFailed:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/l;->isCancelled:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/l;->hasResource:Z

    .line 25
    .line 26
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l;->decodeJob:Lcom/bumptech/glide/load/engine/h;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/h;->y(Z)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->decodeJob:Lcom/bumptech/glide/load/engine/h;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->exception:Lcom/bumptech/glide/load/engine/q;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->dataSource:Lcom/bumptech/glide/load/a;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->pool:Landroidx/core/util/Pools$Pool;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 50
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    .line 52
    throw v0
.end method


# virtual methods
.method declared-synchronized a(Ly0/g;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->stateVerifier:La1/c;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, La1/c;->c()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/engine/l$e;->a(Ly0/g;Ljava/util/concurrent/Executor;)V

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasResource:Z

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/l;->k(I)V

    .line 20
    .line 21
    new-instance v0, Lcom/bumptech/glide/load/engine/l$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/l$b;-><init>(Lcom/bumptech/glide/load/engine/l;Ly0/g;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasLoadFailed:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/l;->k(I)V

    .line 38
    .line 39
    new-instance v0, Lcom/bumptech/glide/load/engine/l$a;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/load/engine/l$a;-><init>(Lcom/bumptech/glide/load/engine/l;Ly0/g;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->isCancelled:Z

    .line 49
    xor-int/2addr p1, v1

    .line 50
    .line 51
    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/j;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit p0

    .line 58
    throw p1
.end method

.method public b(Lcom/bumptech/glide/load/engine/q;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->exception:Lcom/bumptech/glide/load/engine/q;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->n()V

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/l;->dataSource:Lcom/bumptech/glide/load/a;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->o()V

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public d(Lcom/bumptech/glide/load/engine/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->j()Lcom/bumptech/glide/load/engine/executor/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/a;->execute(Ljava/lang/Runnable;)V

    .line 8
    return-void
.end method

.method public e()La1/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->stateVerifier:La1/c;

    return-object v0
.end method

.method f(Ly0/g;)V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->exception:Lcom/bumptech/glide/load/engine/q;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ly0/g;->b(Lcom/bumptech/glide/load/engine/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/load/engine/b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b;-><init>(Ljava/lang/Throwable;)V

    .line 13
    throw v0
.end method

.method g(Ly0/g;)V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->engineResource:Lcom/bumptech/glide/load/engine/p;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->dataSource:Lcom/bumptech/glide/load/a;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Ly0/g;->c(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/load/engine/b;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b;-><init>(Ljava/lang/Throwable;)V

    .line 15
    throw v0
.end method

.method h()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->m()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->isCancelled:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->decodeJob:Lcom/bumptech/glide/load/engine/h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h;->a()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->engineJobListener:Lcom/bumptech/glide/load/engine/m;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->key:Lcom/bumptech/glide/load/g;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/m;->b(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/g;)V

    .line 23
    return-void
.end method

.method i()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->stateVerifier:La1/c;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, La1/c;->c()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->m()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    const-string v1, "Not yet complete!"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/j;->a(ZLjava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    .line 28
    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/j;->a(ZLjava/lang/String;)V

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->engineResource:Lcom/bumptech/glide/load/engine/p;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->q()V

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->f()V

    .line 49
    :cond_2
    return-void

    .line 50
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v0
.end method

.method declared-synchronized k(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->m()Z

    .line 5
    move-result v0

    .line 6
    .line 7
    const-string v1, "Not yet complete!"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/j;->a(ZLjava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->engineResource:Lcom/bumptech/glide/load/engine/p;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/p;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw p1
.end method

.method declared-synchronized l(Lcom/bumptech/glide/load/g;ZZZZ)Lcom/bumptech/glide/load/engine/l;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/l<",
            "TR;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->key:Lcom/bumptech/glide/load/g;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/l;->isCacheable:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/l;->useUnlimitedSourceGeneratorPool:Z

    .line 8
    .line 9
    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/l;->useAnimationPool:Z

    .line 10
    .line 11
    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/l;->onlyRetrieveFromCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method n()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->stateVerifier:La1/c;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, La1/c;->c()V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->isCancelled:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->q()V

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/l$e;->isEmpty()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasLoadFailed:Z

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    const/4 v0, 0x1

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasLoadFailed:Z

    .line 33
    .line 34
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->key:Lcom/bumptech/glide/load/g;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l$e;->c()Lcom/bumptech/glide/load/engine/l$e;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l$e;->size()I

    .line 44
    move-result v3

    .line 45
    add-int/2addr v3, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/bumptech/glide/load/engine/l;->k(I)V

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->engineJobListener:Lcom/bumptech/glide/load/engine/m;

    .line 52
    const/4 v3, 0x0

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p0, v1, v3}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/p;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/l$e;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    check-cast v1, Lcom/bumptech/glide/load/engine/l$d;

    .line 72
    .line 73
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/l$d;->executor:Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    new-instance v3, Lcom/bumptech/glide/load/engine/l$a;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/l$d;->cb:Ly0/g;

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/l$a;-><init>(Lcom/bumptech/glide/load/engine/l;Ly0/g;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->i()V

    .line 88
    return-void

    .line 89
    .line 90
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 91
    .line 92
    const-string v1, "Already failed once"

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    throw v0

    .line 97
    .line 98
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    const-string v1, "Received an exception without any callbacks to notify"

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    throw v0

    .line 105
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw v0
.end method

.method o()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->stateVerifier:La1/c;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, La1/c;->c()V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->isCancelled:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->a()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->q()V

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/l$e;->isEmpty()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasResource:Z

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->engineResourceFactory:Lcom/bumptech/glide/load/engine/l$c;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->resource:Lcom/bumptech/glide/load/engine/v;

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/l;->isCacheable:Z

    .line 41
    .line 42
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l;->key:Lcom/bumptech/glide/load/g;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/l;->resourceListener:Lcom/bumptech/glide/load/engine/p$a;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/l$c;->a(Lcom/bumptech/glide/load/engine/v;ZLcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/p$a;)Lcom/bumptech/glide/load/engine/p;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/l;->engineResource:Lcom/bumptech/glide/load/engine/p;

    .line 51
    const/4 v0, 0x1

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->hasResource:Z

    .line 54
    .line 55
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l$e;->c()Lcom/bumptech/glide/load/engine/l$e;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l$e;->size()I

    .line 63
    move-result v2

    .line 64
    add-int/2addr v2, v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/l;->k(I)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->key:Lcom/bumptech/glide/load/g;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/l;->engineResource:Lcom/bumptech/glide/load/engine/p;

    .line 72
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/l;->engineJobListener:Lcom/bumptech/glide/load/engine/m;

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, p0, v0, v2}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/p;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/l$e;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, Lcom/bumptech/glide/load/engine/l$d;

    .line 94
    .line 95
    iget-object v2, v1, Lcom/bumptech/glide/load/engine/l$d;->executor:Ljava/util/concurrent/Executor;

    .line 96
    .line 97
    new-instance v3, Lcom/bumptech/glide/load/engine/l$b;

    .line 98
    .line 99
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/l$d;->cb:Ly0/g;

    .line 100
    .line 101
    .line 102
    invoke-direct {v3, p0, v1}, Lcom/bumptech/glide/load/engine/l$b;-><init>(Lcom/bumptech/glide/load/engine/l;Ly0/g;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->i()V

    .line 110
    return-void

    .line 111
    .line 112
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string v1, "Already have resource"

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    throw v0

    .line 119
    .line 120
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string v1, "Received a resource without any callbacks to notify"

    .line 123
    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    throw v0

    .line 127
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw v0
.end method

.method p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/l;->onlyRetrieveFromCache:Z

    return v0
.end method

.method declared-synchronized r(Ly0/g;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->stateVerifier:La1/c;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, La1/c;->c()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/l$e;->e(Ly0/g;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->cbs:Lcom/bumptech/glide/load/engine/l$e;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/l$e;->isEmpty()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/l;->h()V

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->hasResource:Z

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/l;->hasLoadFailed:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/l;->pendingCallbacks:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public declared-synchronized s(Lcom/bumptech/glide/load/engine/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/l;->decodeJob:Lcom/bumptech/glide/load/engine/h;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/h;->E()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/l;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/a;

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/l;->j()Lcom/bumptech/glide/load/engine/executor/a;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/a;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    throw p1
.end method
