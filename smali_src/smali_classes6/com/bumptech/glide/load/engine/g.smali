.class final Lcom/bumptech/glide/load/engine/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheProvider:Lcom/bumptech/glide/load/engine/h$e;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

.field private glideContext:Lcom/bumptech/glide/d;

.field private height:I

.field private isCacheKeysSet:Z

.field private isLoadDataSet:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationRequired:Z

.field private final loadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;

.field private options:Lcom/bumptech/glide/load/i;

.field private priority:Lcom/bumptech/glide/f;

.field private resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/g;

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->loadData:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->signature:Lcom/bumptech/glide/load/g;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->resourceClass:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->transcodeClass:Ljava/lang/Class;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/i;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->priority:Lcom/bumptech/glide/f;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->transformations:Ljava/util/Map;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/g;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->loadData:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isLoadDataSet:Z

    .line 28
    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isCacheKeysSet:Z

    .line 35
    return-void
.end method

.method b()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/g;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isCacheKeysSet:Z

    .line 3
    .line 4
    if-nez v0, :cond_3

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isCacheKeysSet:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->g()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    .line 24
    :goto_0
    if-ge v3, v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    check-cast v4, Lcom/bumptech/glide/load/model/n$a;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 33
    .line 34
    iget-object v6, v4, Lcom/bumptech/glide/load/model/n$a;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 35
    .line 36
    .line 37
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 39
    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 43
    .line 44
    iget-object v6, v4, Lcom/bumptech/glide/load/model/n$a;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 45
    .line 46
    .line 47
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    move v5, v2

    .line 49
    .line 50
    :goto_1
    iget-object v6, v4, Lcom/bumptech/glide/load/model/n$a;->alternateKeys:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 54
    move-result v6

    .line 55
    .line 56
    if-ge v5, v6, :cond_2

    .line 57
    .line 58
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 59
    .line 60
    iget-object v7, v4, Lcom/bumptech/glide/load/model/n$a;->alternateKeys:Ljava/util/List;

    .line 61
    .line 62
    .line 63
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v7

    .line 65
    .line 66
    .line 67
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-nez v6, :cond_1

    .line 71
    .line 72
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 73
    .line 74
    iget-object v7, v4, Lcom/bumptech/glide/load/model/n$a;->alternateKeys:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v7

    .line 79
    .line 80
    .line 81
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->cacheKeys:Ljava/util/List;

    .line 90
    return-object v0
.end method

.method d()Lcom/bumptech/glide/load/engine/cache/a;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->diskCacheProvider:Lcom/bumptech/glide/load/engine/h$e;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/h$e;->a()Lcom/bumptech/glide/load/engine/cache/a;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method e()Lcom/bumptech/glide/load/engine/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    return-object v0
.end method

.method f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/g;->height:I

    return v0
.end method

.method g()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n$a<",
            "*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isLoadDataSet:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isLoadDataSet:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->loadData:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->i(Ljava/lang/Object;)Ljava/util/List;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    :goto_0
    if-ge v2, v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Lcom/bumptech/glide/load/model/n;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    .line 40
    .line 41
    iget v5, p0, Lcom/bumptech/glide/load/engine/g;->width:I

    .line 42
    .line 43
    iget v6, p0, Lcom/bumptech/glide/load/engine/g;->height:I

    .line 44
    .line 45
    iget-object v7, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/i;

    .line 46
    .line 47
    .line 48
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/load/model/n;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/g;->loadData:Ljava/util/List;

    .line 54
    .line 55
    .line 56
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->loadData:Ljava/util/List;

    .line 62
    return-object v0
.end method

.method h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->resourceClass:Ljava/lang/Class;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->transcodeClass:Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/h;->h(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/t;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method i()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method j(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/h$c;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->i(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method k()Lcom/bumptech/glide/load/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method l()Lcom/bumptech/glide/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->priority:Lcom/bumptech/glide/f;

    return-object v0
.end method

.method m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/g;->resourceClass:Ljava/lang/Class;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/g;->transcodeClass:Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/h;->j(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method n(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/v<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/l<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->k(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/l;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method o()Lcom/bumptech/glide/load/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->signature:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method p(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/d<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/h$e;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->m(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method q()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->transcodeClass:Ljava/lang/Class;

    return-object v0
.end method

.method r(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/m<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->transformations:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/bumptech/glide/load/m;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/g;->transformations:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/bumptech/glide/load/m;

    .line 51
    .line 52
    :cond_1
    if-nez v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->transformations:Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isTransformationRequired:Z

    .line 63
    .line 64
    if-nez v0, :cond_2

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    const-string v2, "Missing transformation for "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/l;->c()Lcom/bumptech/glide/load/resource/l;

    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_4
    return-object v0
.end method

.method s()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/g;->width:I

    return v0
.end method

.method t(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/g;->h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/t;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method u(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/engine/j;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/h$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Lcom/bumptech/glide/load/engine/j;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/i;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/engine/h$e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/g;->model:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/g;->signature:Lcom/bumptech/glide/load/g;

    iput p4, p0, Lcom/bumptech/glide/load/engine/g;->width:I

    iput p5, p0, Lcom/bumptech/glide/load/engine/g;->height:I

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/g;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/g;->resourceClass:Ljava/lang/Class;

    iput-object p14, p0, Lcom/bumptech/glide/load/engine/g;->diskCacheProvider:Lcom/bumptech/glide/load/engine/h$e;

    iput-object p8, p0, Lcom/bumptech/glide/load/engine/g;->transcodeClass:Ljava/lang/Class;

    iput-object p9, p0, Lcom/bumptech/glide/load/engine/g;->priority:Lcom/bumptech/glide/f;

    iput-object p10, p0, Lcom/bumptech/glide/load/engine/g;->options:Lcom/bumptech/glide/load/i;

    iput-object p11, p0, Lcom/bumptech/glide/load/engine/g;->transformations:Ljava/util/Map;

    iput-boolean p12, p0, Lcom/bumptech/glide/load/engine/g;->isTransformationRequired:Z

    iput-boolean p13, p0, Lcom/bumptech/glide/load/engine/g;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method v(Lcom/bumptech/glide/load/engine/v;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/g;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->n(Lcom/bumptech/glide/load/engine/v;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/g;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method x(Lcom/bumptech/glide/load/g;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/g;->g()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    check-cast v4, Lcom/bumptech/glide/load/model/n$a;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/bumptech/glide/load/model/n$a;->sourceKey:Lcom/bumptech/glide/load/g;

    .line 21
    .line 22
    .line 23
    invoke-interface {v4, p1}, Lcom/bumptech/glide/load/g;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v2
.end method
