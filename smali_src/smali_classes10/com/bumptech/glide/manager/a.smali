.class Lcom/bumptech/glide/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# instance fields
.field private isDestroyed:Z

.field private isStarted:Z

.field private final lifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/bumptech/glide/manager/a;->lifecycleListeners:Ljava/util/Set;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/manager/i;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/manager/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->lifecycleListeners:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public b(Lcom/bumptech/glide/manager/i;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/manager/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->lifecycleListeners:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/a;->isDestroyed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->onDestroy()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/a;->isStarted:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->onStart()V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->onStop()V

    .line 25
    :goto_0
    return-void
.end method

.method c()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->isDestroyed:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->lifecycleListeners:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/bumptech/glide/util/k;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/bumptech/glide/manager/i;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Lcom/bumptech/glide/manager/i;->onDestroy()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->isStarted:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->lifecycleListeners:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/bumptech/glide/util/k;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/bumptech/glide/manager/i;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Lcom/bumptech/glide/manager/i;->onStart()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/a;->isStarted:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/manager/a;->lifecycleListeners:Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/bumptech/glide/util/k;->i(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/bumptech/glide/manager/i;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Lcom/bumptech/glide/manager/i;->onStop()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
