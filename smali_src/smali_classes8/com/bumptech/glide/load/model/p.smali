.class public Lcom/bumptech/glide/load/model/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/p$a;
    }
.end annotation


# instance fields
.field private final cache:Lcom/bumptech/glide/load/model/p$a;

.field private final multiModelLoaderFactory:Lcom/bumptech/glide/load/model/r;


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .param p1    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/model/r;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/r;-><init>(Landroidx/core/util/Pools$Pool;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/p;-><init>(Lcom/bumptech/glide/load/model/r;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/model/r;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/load/model/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/model/p$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/p$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/p;->cache:Lcom/bumptech/glide/load/model/p$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/model/p;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/r;

    return-void
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private declared-synchronized e(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n<",
            "TA;*>;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/p;->cache:Lcom/bumptech/glide/load/model/p$a;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/model/p$a;->b(Ljava/lang/Class;)Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/model/p;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/r;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/model/r;->e(Ljava/lang/Class;)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bumptech/glide/load/model/p;->cache:Lcom/bumptech/glide/load/model/p$a;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/model/p$a;->c(Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit p0

    .line 29
    return-object v0

    .line 30
    :goto_1
    monitor-exit p0

    .line 31
    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/model/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lcom/bumptech/glide/load/model/o<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/p;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/r;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/r;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/load/model/p;->cache:Lcom/bumptech/glide/load/model/p$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/p$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/p;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/r;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/model/r;->g(Ljava/lang/Class;)Ljava/util/List;

    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public d(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n<",
            "TA;*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/load/model/p;->b(Ljava/lang/Object;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/p;->e(Ljava/lang/Class;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    move v5, v3

    .line 26
    .line 27
    :goto_0
    if-ge v5, v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    check-cast v6, Lcom/bumptech/glide/load/model/n;

    .line 34
    .line 35
    .line 36
    invoke-interface {v6, p1}, Lcom/bumptech/glide/load/model/n;->b(Ljava/lang/Object;)Z

    .line 37
    move-result v7

    .line 38
    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    .line 44
    .line 45
    sub-int v4, v1, v5

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    move v4, v3

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    return-object v2

    .line 63
    .line 64
    :cond_3
    new-instance v1, Lcom/bumptech/glide/h$c;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, p1, v0}, Lcom/bumptech/glide/h$c;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    .line 68
    throw v1

    .line 69
    .line 70
    :cond_4
    new-instance v0, Lcom/bumptech/glide/h$c;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, p1}, Lcom/bumptech/glide/h$c;-><init>(Ljava/lang/Object;)V

    .line 74
    throw v0
.end method
