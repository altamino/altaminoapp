.class final Lcom/bumptech/glide/load/engine/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final onlyCacheJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;"
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
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/s;->jobs:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/s;->onlyCacheJobs:Ljava/util/Map;

    .line 18
    return-void
.end method

.method private b(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/s;->onlyCacheJobs:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/s;->jobs:Ljava/util/Map;

    :goto_0
    return-object p1
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/engine/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/s;->b(Z)Ljava/util/Map;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/bumptech/glide/load/engine/l;

    .line 11
    return-object p1
.end method

.method c(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/l;->p()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/s;->b(Z)Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method d(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/l;->p()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/s;->b(Z)Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    return-void
.end method
