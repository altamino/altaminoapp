.class public Lcom/bumptech/glide/provider/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_PATHS_SIGNAL:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t<",
            "***>;"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/bumptech/glide/util/i;",
            "Lcom/bumptech/glide/load/engine/t<",
            "***>;>;"
        }
    .end annotation
.end field

.field private final keyRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/bumptech/glide/util/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    .line 2
    new-instance v6, Lcom/bumptech/glide/load/engine/t;

    .line 3
    .line 4
    const-class v1, Ljava/lang/Object;

    .line 5
    .line 6
    const-class v2, Ljava/lang/Object;

    .line 7
    .line 8
    const-class v3, Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v0, Lcom/bumptech/glide/load/engine/i;

    .line 11
    .line 12
    const-class v8, Ljava/lang/Object;

    .line 13
    .line 14
    const-class v9, Ljava/lang/Object;

    .line 15
    .line 16
    const-class v10, Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    move-result-object v11

    .line 21
    .line 22
    new-instance v12, Lcom/bumptech/glide/load/resource/transcode/g;

    .line 23
    .line 24
    .line 25
    invoke-direct {v12}, Lcom/bumptech/glide/load/resource/transcode/g;-><init>()V

    .line 26
    const/4 v13, 0x0

    .line 27
    move-object v7, v0

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v7 .. v13}, Lcom/bumptech/glide/load/engine/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/resource/transcode/e;Landroidx/core/util/Pools$Pool;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    move-result-object v4

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, v6

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/t;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/util/Pools$Pool;)V

    .line 40
    .line 41
    sput-object v6, Lcom/bumptech/glide/provider/c;->NO_PATHS_SIGNAL:Lcom/bumptech/glide/load/engine/t;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/provider/c;->cache:Landroidx/collection/ArrayMap;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/provider/c;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    return-void
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/util/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/util/i;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/provider/c;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/bumptech/glide/util/i;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/bumptech/glide/util/i;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/bumptech/glide/util/i;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/util/i;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 20
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/t;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/provider/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/util/i;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/bumptech/glide/provider/c;->cache:Landroidx/collection/ArrayMap;

    .line 7
    monitor-enter p2

    .line 8
    .line 9
    :try_start_0
    iget-object p3, p0, Lcom/bumptech/glide/provider/c;->cache:Landroidx/collection/ArrayMap;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    check-cast p3, Lcom/bumptech/glide/load/engine/t;

    .line 16
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/bumptech/glide/provider/c;->keyRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    return-object p3

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/t;)Z
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "***>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/provider/c;->NO_PATHS_SIGNAL:Lcom/bumptech/glide/load/engine/t;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/t;)V
    .locals 3
    .param p4    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/t<",
            "***>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/provider/c;->cache:Landroidx/collection/ArrayMap;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/provider/c;->cache:Landroidx/collection/ArrayMap;

    .line 6
    .line 7
    new-instance v2, Lcom/bumptech/glide/util/i;

    .line 8
    .line 9
    .line 10
    invoke-direct {v2, p1, p2, p3}, Lcom/bumptech/glide/util/i;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object p4, Lcom/bumptech/glide/provider/c;->NO_PATHS_SIGNAL:Lcom/bumptech/glide/load/engine/t;

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1, v2, p4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method
