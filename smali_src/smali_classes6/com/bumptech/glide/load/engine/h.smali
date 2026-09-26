.class Lcom/bumptech/glide/load/engine/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements La1/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/h$h;,
        Lcom/bumptech/glide/load/engine/h$g;,
        Lcom/bumptech/glide/load/engine/h$e;,
        Lcom/bumptech/glide/load/engine/h$b;,
        Lcom/bumptech/glide/load/engine/h$d;,
        Lcom/bumptech/glide/load/engine/h$f;,
        Lcom/bumptech/glide/load/engine/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/h<",
        "*>;>;",
        "La1/a$f;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeJob"


# instance fields
.field private callback:Lcom/bumptech/glide/load/engine/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/h$b<",
            "TR;>;"
        }
    .end annotation
.end field

.field private currentAttemptingKey:Lcom/bumptech/glide/load/g;

.field private currentData:Ljava/lang/Object;

.field private currentDataSource:Lcom/bumptech/glide/load/a;

.field private currentFetcher:Lcom/bumptech/glide/load/data/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/d<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile currentGenerator:Lcom/bumptech/glide/load/engine/f;

.field private currentSourceKey:Lcom/bumptech/glide/load/g;

.field private currentThread:Ljava/lang/Thread;

.field private final decodeHelper:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final deferredEncodeManager:Lcom/bumptech/glide/load/engine/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/h$d<",
            "*>;"
        }
    .end annotation
.end field

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/h$e;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

.field private glideContext:Lcom/bumptech/glide/d;

.field private height:I

.field private volatile isCallbackNotified:Z

.field private volatile isCancelled:Z

.field private loadKey:Lcom/bumptech/glide/load/engine/n;

.field private model:Ljava/lang/Object;

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/i;

.field private order:I

.field private final pool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/f;

.field private final releaseManager:Lcom/bumptech/glide/load/engine/h$f;

.field private runReason:Lcom/bumptech/glide/load/engine/h$g;

.field private signature:Lcom/bumptech/glide/load/g;

.field private stage:Lcom/bumptech/glide/load/engine/h$h;

.field private startFetchTime:J

.field private final stateVerifier:La1/c;

.field private final throwables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/h$e;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h$e;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/g;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/g;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-static {}, La1/c;->a()La1/c;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->stateVerifier:La1/c;

    .line 24
    .line 25
    new-instance v0, Lcom/bumptech/glide/load/engine/h$d;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$d;-><init>()V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/h$d;

    .line 31
    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/h$f;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/h$f;-><init>()V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->releaseManager:Lcom/bumptech/glide/load/engine/h$f;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->diskCacheProvider:Lcom/bumptech/glide/load/engine/h$e;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h;->pool:Landroidx/core/util/Pools$Pool;

    .line 42
    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->currentThread:Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/bumptech/glide/util/f;->b()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/h;->startFetchTime:J

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/h;->isCancelled:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentGenerator:Lcom/bumptech/glide/load/engine/f;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->currentGenerator:Lcom/bumptech/glide/load/engine/f;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/f;->a()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/h;->l(Lcom/bumptech/glide/load/engine/h$h;)Lcom/bumptech/glide/load/engine/h$h;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->k()Lcom/bumptech/glide/load/engine/f;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentGenerator:Lcom/bumptech/glide/load/engine/f;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 46
    .line 47
    sget-object v2, Lcom/bumptech/glide/load/engine/h$h;->SOURCE:Lcom/bumptech/glide/load/engine/h$h;

    .line 48
    .line 49
    if-ne v1, v2, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/h;->c()V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 56
    .line 57
    sget-object v2, Lcom/bumptech/glide/load/engine/h$h;->FINISHED:Lcom/bumptech/glide/load/engine/h$h;

    .line 58
    .line 59
    if-eq v1, v2, :cond_2

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/h;->isCancelled:Z

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :cond_2
    if-nez v0, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->u()V

    .line 69
    :cond_3
    return-void
.end method

.method private B(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/engine/t<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/v<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/q;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/h;->n(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/i;

    .line 4
    move-result-object v2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->glideContext:Lcom/bumptech/glide/d;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->g()Lcom/bumptech/glide/h;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->l(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/e;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/h;->width:I

    .line 17
    .line 18
    iget v4, p0, Lcom/bumptech/glide/load/engine/h;->height:I

    .line 19
    .line 20
    new-instance v5, Lcom/bumptech/glide/load/engine/h$c;

    .line 21
    .line 22
    .line 23
    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/h$c;-><init>(Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/load/a;)V

    .line 24
    move-object v0, p3

    .line 25
    move-object v1, p1

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/t;->a(Lcom/bumptech/glide/load/data/e;Lcom/bumptech/glide/load/i;IILcom/bumptech/glide/load/engine/i$a;)Lcom/bumptech/glide/load/engine/v;

    .line 29
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 33
    return-object p2

    .line 34
    :catchall_0
    move-exception p2

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 38
    throw p2
.end method

.method private C()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/engine/h$a;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason:[I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->runReason:Lcom/bumptech/glide/load/engine/h$g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->j()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "Unrecognized run reason: "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->runReason:Lcom/bumptech/glide/load/engine/h$g;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->A()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/h$h;->INITIALIZE:Lcom/bumptech/glide/load/engine/h$h;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/h;->l(Lcom/bumptech/glide/load/engine/h$h;)Lcom/bumptech/glide/load/engine/h$h;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->k()Lcom/bumptech/glide/load/engine/f;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->currentGenerator:Lcom/bumptech/glide/load/engine/f;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->A()V

    .line 70
    :goto_0
    return-void
.end method

.method private D()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->stateVerifier:La1/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, La1/c;->c()V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->isCallbackNotified:Z

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v2

    .line 27
    sub-int/2addr v2, v1

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Ljava/lang/Throwable;

    .line 34
    .line 35
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v2, "Already notified"

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    throw v1

    .line 42
    .line 43
    :cond_1
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/h;->isCallbackNotified:Z

    .line 44
    return-void
.end method

.method private h(Lcom/bumptech/glide/load/data/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/load/engine/v<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/q;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/f;->b()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/h;->i(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/v;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string p3, "DecodeJob"

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    move-result p3

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v2, "Decoded result "

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p3, v0, v1}, Lcom/bumptech/glide/load/engine/h;->q(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p2

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 51
    return-object p2

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 55
    throw p2
.end method

.method private i(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/load/engine/v<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/q;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/t;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/h;->B(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/v;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private j()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "DecodeJob"

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/h;->startFetchTime:J

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v3, "data: "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->currentData:Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, ", cache key: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->currentSourceKey:Lcom/bumptech/glide/load/g;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, ", fetcher: "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->currentFetcher:Lcom/bumptech/glide/load/data/d;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const-string v3, "Retrieved data"

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/h;->r(Ljava/lang/String;JLjava/lang/String;)V

    .line 56
    .line 57
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->currentFetcher:Lcom/bumptech/glide/load/data/d;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentData:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->currentDataSource:Lcom/bumptech/glide/load/a;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/load/engine/h;->h(Lcom/bumptech/glide/load/data/d;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/v;

    .line 65
    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/q; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentAttemptingKey:Lcom/bumptech/glide/load/g;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->currentDataSource:Lcom/bumptech/glide/load/a;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/q;->i(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;)V

    .line 75
    .line 76
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v0, 0x0

    .line 81
    .line 82
    :goto_0
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentDataSource:Lcom/bumptech/glide/load/a;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/h;->t(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->A()V

    .line 92
    :goto_1
    return-void
.end method

.method private k()Lcom/bumptech/glide/load/engine/f;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/engine/h$a;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_3

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    const/4 v1, 0x4

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v2, "Unrecognized stage: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 50
    .line 51
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/z;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/z;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    .line 57
    return-object v0

    .line 58
    .line 59
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/c;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    .line 65
    return-object v0

    .line 66
    .line 67
    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/engine/w;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/w;-><init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    .line 73
    return-object v0
.end method

.method private l(Lcom/bumptech/glide/load/engine/h$h;)Lcom/bumptech/glide/load/engine/h$h;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/engine/h$a;->$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_5

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    const/4 v1, 0x5

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/j;->b()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/h$h;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/h$h;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/h;->l(Lcom/bumptech/glide/load/engine/h$h;)Lcom/bumptech/glide/load/engine/h$h;

    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1

    .line 42
    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v2, "Unrecognized stage: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0

    .line 65
    .line 66
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->FINISHED:Lcom/bumptech/glide/load/engine/h$h;

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_3
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/h;->onlyRetrieveFromCache:Z

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->FINISHED:Lcom/bumptech/glide/load/engine/h$h;

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_4
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->SOURCE:Lcom/bumptech/glide/load/engine/h$h;

    .line 77
    :goto_1
    return-object p1

    .line 78
    .line 79
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/j;->a()Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/h$h;

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/h$h;

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/h;->l(Lcom/bumptech/glide/load/engine/h$h;)Lcom/bumptech/glide/load/engine/h$h;

    .line 94
    move-result-object p1

    .line 95
    :goto_2
    return-object p1
.end method

.method private n(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/i;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->options:Lcom/bumptech/glide/load/i;

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1a

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    .line 12
    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->w()Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 26
    .line 27
    :goto_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/p;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/h;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Ljava/lang/Boolean;

    .line 34
    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    :cond_3
    return-object v0

    .line 45
    .line 46
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/i;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Lcom/bumptech/glide/load/i;-><init>()V

    .line 50
    .line 51
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->options:Lcom/bumptech/glide/load/i;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/i;->d(Lcom/bumptech/glide/load/i;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/i;->e(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    .line 62
    return-object v0
.end method

.method private o()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->priority:Lcom/bumptech/glide/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private q(Ljava/lang/String;J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/h;->r(Ljava/lang/String;JLjava/lang/String;)V

    .line 5
    return-void
.end method

.method private r(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, " in "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Lcom/bumptech/glide/util/f;->a(J)D

    .line 17
    move-result-wide p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p1, ", load key: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->loadKey:Lcom/bumptech/glide/load/engine/n;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    if-eqz p4, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string p2, ", "

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    const-string p1, ""

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p1, ", thread: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string p2, "DecodeJob"

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method private s(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V
    .locals 1
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
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->D()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->callback:Lcom/bumptech/glide/load/engine/h$b;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/h$b;->c(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V

    .line 9
    return-void
.end method

.method private t(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V
    .locals 2
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
    .line 2
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/r;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/bumptech/glide/load/engine/r;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/r;->initialize()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/h$d;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$d;->c()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/u;->d(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/u;

    .line 22
    move-result-object p1

    .line 23
    move-object v0, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/h;->s(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/a;)V

    .line 29
    .line 30
    sget-object p1, Lcom/bumptech/glide/load/engine/h$h;->ENCODE:Lcom/bumptech/glide/load/engine/h$h;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 33
    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/h$d;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/h$d;->c()Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/h$d;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->diskCacheProvider:Lcom/bumptech/glide/load/engine/h$e;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->options:Lcom/bumptech/glide/load/i;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/engine/h$d;->b(Lcom/bumptech/glide/load/engine/h$e;Lcom/bumptech/glide/load/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/u;->g()V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->v()V

    .line 61
    return-void

    .line 62
    .line 63
    :goto_2
    if-eqz v0, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/u;->g()V

    .line 67
    :cond_4
    throw p1
.end method

.method private u()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->D()V

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/q;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    const-string v2, "Failed to load resource"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->callback:Lcom/bumptech/glide/load/engine/h$b;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/h$b;->b(Lcom/bumptech/glide/load/engine/q;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->w()V

    .line 26
    return-void
.end method

.method private v()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->releaseManager:Lcom/bumptech/glide/load/engine/h$f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$f;->b()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->z()V

    .line 12
    :cond_0
    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->releaseManager:Lcom/bumptech/glide/load/engine/h$f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$f;->c()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->z()V

    .line 12
    :cond_0
    return-void
.end method

.method private z()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->releaseManager:Lcom/bumptech/glide/load/engine/h$f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$f;->e()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/h$d;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$d;->a()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->a()V

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->isCallbackNotified:Z

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->glideContext:Lcom/bumptech/glide/d;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->signature:Lcom/bumptech/glide/load/g;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->options:Lcom/bumptech/glide/load/i;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->priority:Lcom/bumptech/glide/f;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->loadKey:Lcom/bumptech/glide/load/engine/n;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->callback:Lcom/bumptech/glide/load/engine/h$b;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentGenerator:Lcom/bumptech/glide/load/engine/f;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentThread:Ljava/lang/Thread;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentSourceKey:Lcom/bumptech/glide/load/g;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentData:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentDataSource:Lcom/bumptech/glide/load/a;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentFetcher:Lcom/bumptech/glide/load/data/d;

    .line 46
    .line 47
    const-wide/16 v2, 0x0

    .line 48
    .line 49
    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/h;->startFetchTime:J

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->isCancelled:Z

    .line 52
    .line 53
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/h;->model:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->pool:Landroidx/core/util/Pools$Pool;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method


# virtual methods
.method E()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/engine/h$h;->INITIALIZE:Lcom/bumptech/glide/load/engine/h$h;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/h;->l(Lcom/bumptech/glide/load/engine/h$h;)Lcom/bumptech/glide/load/engine/h$h;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/bumptech/glide/load/engine/h$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/h$h;

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/bumptech/glide/load/engine/h$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/h$h;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->isCancelled:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->currentGenerator:Lcom/bumptech/glide/load/engine/f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/f;->cancel()V

    .line 11
    :cond_0
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 4
    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/q;

    .line 6
    .line 7
    const-string v1, "Fetching data failed"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/d;->a()Ljava/lang/Class;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/q;->j(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;Ljava/lang/Class;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->currentThread:Ljava/lang/Thread;

    .line 29
    .line 30
    if-eq p1, p2, :cond_0

    .line 31
    .line 32
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/h$g;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->runReason:Lcom/bumptech/glide/load/engine/h$g;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->callback:Lcom/bumptech/glide/load/engine/h$b;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/h$b;->d(Lcom/bumptech/glide/load/engine/h;)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->A()V

    .line 44
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/engine/h$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/h$g;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->runReason:Lcom/bumptech/glide/load/engine/h$g;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->callback:Lcom/bumptech/glide/load/engine/h$b;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/h$b;->d(Lcom/bumptech/glide/load/engine/h;)V

    .line 10
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/bumptech/glide/load/engine/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/h;->f(Lcom/bumptech/glide/load/engine/h;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->currentSourceKey:Lcom/bumptech/glide/load/g;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h;->currentData:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/h;->currentFetcher:Lcom/bumptech/glide/load/data/d;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/h;->currentDataSource:Lcom/bumptech/glide/load/a;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/h;->currentAttemptingKey:Lcom/bumptech/glide/load/g;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->currentThread:Ljava/lang/Thread;

    .line 17
    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    .line 20
    sget-object p1, Lcom/bumptech/glide/load/engine/h$g;->DECODE_DATA:Lcom/bumptech/glide/load/engine/h$g;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->runReason:Lcom/bumptech/glide/load/engine/h$g;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/h;->callback:Lcom/bumptech/glide/load/engine/h$b;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/h$b;->d(Lcom/bumptech/glide/load/engine/h;)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, La1/b;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-static {}, La1/b;->d()V

    .line 40
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    .line 43
    .line 44
    invoke-static {}, La1/b;->d()V

    .line 45
    throw p1
.end method

.method public e()La1/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->stateVerifier:La1/c;

    return-object v0
.end method

.method public f(Lcom/bumptech/glide/load/engine/h;)I
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->o()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/h;->o()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/bumptech/glide/load/engine/h;->order:I

    .line 14
    .line 15
    iget p1, p1, Lcom/bumptech/glide/load/engine/h;->order:I

    .line 16
    sub-int/2addr v0, p1

    .line 17
    :cond_0
    return v0
.end method

.method p(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/n;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/engine/j;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/engine/h$b;I)Lcom/bumptech/glide/load/engine/h;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/n;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/engine/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/i;",
            "Lcom/bumptech/glide/load/engine/h$b<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/h<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/h;->diskCacheProvider:Lcom/bumptech/glide/load/engine/h$e;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    .line 1
    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/engine/g;->u(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/engine/j;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/h$e;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->glideContext:Lcom/bumptech/glide/d;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->signature:Lcom/bumptech/glide/load/g;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->priority:Lcom/bumptech/glide/f;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->loadKey:Lcom/bumptech/glide/load/engine/n;

    move/from16 v1, p5

    iput v1, v0, Lcom/bumptech/glide/load/engine/h;->width:I

    move/from16 v1, p6

    iput v1, v0, Lcom/bumptech/glide/load/engine/h;->height:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/h;->onlyRetrieveFromCache:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->options:Lcom/bumptech/glide/load/i;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->callback:Lcom/bumptech/glide/load/engine/h$b;

    move/from16 v1, p17

    iput v1, v0, Lcom/bumptech/glide/load/engine/h;->order:I

    .line 2
    sget-object v1, Lcom/bumptech/glide/load/engine/h$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/h$g;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->runReason:Lcom/bumptech/glide/load/engine/h$g;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/h;->model:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "DecodeJob"

    .line 3
    .line 4
    const-string v1, "DecodeJob#run(model=%s)"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->model:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, La1/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->currentFetcher:Lcom/bumptech/glide/load/data/d;

    .line 12
    .line 13
    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/h;->isCancelled:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->u()V
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, La1/b;->d()V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v2

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    .line 33
    .line 34
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->C()V
    :try_end_1
    .catch Lcom/bumptech/glide/load/engine/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-static {}, La1/b;->d()V

    .line 43
    return-void

    .line 44
    :goto_0
    const/4 v3, 0x3

    .line 45
    .line 46
    .line 47
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/h;->isCancelled:Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v4, ", stage: "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->stage:Lcom/bumptech/glide/load/engine/h$h;

    .line 88
    .line 89
    sget-object v3, Lcom/bumptech/glide/load/engine/h$h;->ENCODE:Lcom/bumptech/glide/load/engine/h$h;

    .line 90
    .line 91
    if-eq v0, v3, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->throwables:Ljava/util/List;

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->u()V

    .line 100
    .line 101
    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/h;->isCancelled:Z

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    throw v2

    .line 105
    :cond_5
    throw v2

    .line 106
    :goto_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    .line 108
    :goto_3
    if-eqz v1, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/d;->b()V

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-static {}, La1/b;->d()V

    .line 115
    throw v0
.end method

.method x(Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;
    .locals 11
    .param p2    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/engine/v<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/v<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v8

    .line 9
    .line 10
    sget-object v0, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/g;->r(Ljava/lang/Class;)Lcom/bumptech/glide/load/m;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->glideContext:Lcom/bumptech/glide/d;

    .line 22
    .line 23
    iget v3, p0, Lcom/bumptech/glide/load/engine/h;->width:I

    .line 24
    .line 25
    iget v4, p0, Lcom/bumptech/glide/load/engine/h;->height:I

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2, p2, v3, v4}, Lcom/bumptech/glide/load/m;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/v;II)Lcom/bumptech/glide/load/engine/v;

    .line 29
    move-result-object v2

    .line 30
    move-object v7, v0

    .line 31
    move-object v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v0, p2

    .line 34
    move-object v7, v1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/v;->a()V

    .line 44
    .line 45
    :cond_1
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/g;->v(Lcom/bumptech/glide/load/engine/v;)Z

    .line 49
    move-result p2

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/g;->n(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/l;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->options:Lcom/bumptech/glide/load/i;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/l;->b(Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/c;

    .line 63
    move-result-object p2

    .line 64
    :goto_1
    move-object v10, v1

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/c;->NONE:Lcom/bumptech/glide/load/c;

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :goto_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->currentSourceKey:Lcom/bumptech/glide/load/g;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/g;->x(Lcom/bumptech/glide/load/g;)Z

    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x1

    .line 78
    xor-int/2addr v1, v2

    .line 79
    .line 80
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/j;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1, p1, p2}, Lcom/bumptech/glide/load/engine/j;->d(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    if-eqz v10, :cond_5

    .line 89
    .line 90
    sget-object p1, Lcom/bumptech/glide/load/engine/h$a;->$SwitchMap$com$bumptech$glide$load$EncodeStrategy:[I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 94
    move-result v1

    .line 95
    .line 96
    aget p1, p1, v1

    .line 97
    .line 98
    if-eq p1, v2, :cond_4

    .line 99
    const/4 v1, 0x2

    .line 100
    .line 101
    if-ne p1, v1, :cond_3

    .line 102
    .line 103
    new-instance p1, Lcom/bumptech/glide/load/engine/x;

    .line 104
    .line 105
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->decodeHelper:Lcom/bumptech/glide/load/engine/g;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/g;->b()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 109
    move-result-object v2

    .line 110
    .line 111
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->currentSourceKey:Lcom/bumptech/glide/load/g;

    .line 112
    .line 113
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/h;->signature:Lcom/bumptech/glide/load/g;

    .line 114
    .line 115
    iget v5, p0, Lcom/bumptech/glide/load/engine/h;->width:I

    .line 116
    .line 117
    iget v6, p0, Lcom/bumptech/glide/load/engine/h;->height:I

    .line 118
    .line 119
    iget-object v9, p0, Lcom/bumptech/glide/load/engine/h;->options:Lcom/bumptech/glide/load/i;

    .line 120
    move-object v1, p1

    .line 121
    .line 122
    .line 123
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/x;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/m;Ljava/lang/Class;Lcom/bumptech/glide/load/i;)V

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string v1, "Unknown strategy: "

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    throw p1

    .line 148
    .line 149
    :cond_4
    new-instance p1, Lcom/bumptech/glide/load/engine/d;

    .line 150
    .line 151
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->currentSourceKey:Lcom/bumptech/glide/load/g;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->signature:Lcom/bumptech/glide/load/g;

    .line 154
    .line 155
    .line 156
    invoke-direct {p1, p2, v1}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/u;->d(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/u;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/h;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/h$d;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1, v10, v0}, Lcom/bumptech/glide/load/engine/h$d;->d(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/l;Lcom/bumptech/glide/load/engine/u;)V

    .line 166
    goto :goto_4

    .line 167
    .line 168
    :cond_5
    new-instance p1, Lcom/bumptech/glide/h$d;

    .line 169
    .line 170
    .line 171
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    move-result-object p2

    .line 177
    .line 178
    .line 179
    invoke-direct {p1, p2}, Lcom/bumptech/glide/h$d;-><init>(Ljava/lang/Class;)V

    .line 180
    throw p1

    .line 181
    :cond_6
    :goto_4
    return-object v0
.end method

.method y(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->releaseManager:Lcom/bumptech/glide/load/engine/h$f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/h$f;->d(Z)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->z()V

    .line 12
    :cond_0
    return-void
.end method
