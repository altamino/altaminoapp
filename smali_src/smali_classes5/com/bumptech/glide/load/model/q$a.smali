.class Lcom/bumptech/glide/load/model/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d;
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d<",
        "TData;>;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/bumptech/glide/load/data/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private currentIndex:I

.field private exceptions:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/data/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private isCancelled:Z

.field private priority:Lcom/bumptech/glide/f;

.field private final throwableListPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/data/d<",
            "TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/model/q$a;->throwableListPool:Landroidx/core/util/Pools$Pool;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/bumptech/glide/util/j;->c(Ljava/util/Collection;)Ljava/util/Collection;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/load/model/q$a;->fetchers:Ljava/util/List;

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput p1, p0, Lcom/bumptech/glide/load/model/q$a;->currentIndex:I

    .line 14
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/model/q$a;->isCancelled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/load/model/q$a;->currentIndex:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/load/model/q$a;->fetchers:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    if-ge v0, v1, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/bumptech/glide/load/model/q$a;->currentIndex:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lcom/bumptech/glide/load/model/q$a;->currentIndex:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->priority:Lcom/bumptech/glide/f;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bumptech/glide/load/model/q$a;->callback:Lcom/bumptech/glide/load/data/d$a;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/model/q$a;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->exceptions:Ljava/util/List;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->callback:Lcom/bumptech/glide/load/data/d$a;

    .line 39
    .line 40
    new-instance v1, Lcom/bumptech/glide/load/engine/q;

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/bumptech/glide/load/model/q$a;->exceptions:Ljava/util/List;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    const-string v3, "Fetch failed"

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/engine/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/data/d$a;->f(Ljava/lang/Exception;)V

    .line 56
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->fetchers:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/bumptech/glide/load/data/d;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->exceptions:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/load/model/q$a;->throwableListPool:Landroidx/core/util/Pools$Pool;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->exceptions:Ljava/util/List;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->fetchers:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/bumptech/glide/load/data/d;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->fetchers:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/bumptech/glide/load/data/d;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/d;->c()Lcom/bumptech/glide/load/a;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/model/q$a;->isCancelled:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->fetchers:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/bumptech/glide/load/data/d;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->cancel()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/data/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/model/q$a;->priority:Lcom/bumptech/glide/f;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/model/q$a;->callback:Lcom/bumptech/glide/load/data/d$a;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/bumptech/glide/load/model/q$a;->throwableListPool:Landroidx/core/util/Pools$Pool;

    .line 7
    .line 8
    .line 9
    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->a()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Ljava/util/List;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bumptech/glide/load/model/q$a;->exceptions:Ljava/util/List;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/bumptech/glide/load/model/q$a;->fetchers:Ljava/util/List;

    .line 17
    .line 18
    iget v0, p0, Lcom/bumptech/glide/load/model/q$a;->currentIndex:I

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Lcom/bumptech/glide/load/data/d;

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/data/d;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/bumptech/glide/load/model/q$a;->isCancelled:Z

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/bumptech/glide/load/model/q$a;->cancel()V

    .line 35
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->callback:Lcom/bumptech/glide/load/data/d$a;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/d$a;->e(Ljava/lang/Object;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/q$a;->g()V

    .line 12
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/model/q$a;->exceptions:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bumptech/glide/util/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/load/model/q$a;->g()V

    .line 15
    return-void
.end method
