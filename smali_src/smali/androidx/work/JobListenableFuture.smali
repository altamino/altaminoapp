.class public final Landroidx/work/JobListenableFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/k<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final job:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final underlying:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/b2;Landroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/utils/futures/SettableFuture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/b2;",
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "underlying"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/JobListenableFuture;->job:Lkotlinx/coroutines/b2;

    iput-object p2, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 2
    new-instance p2, Landroidx/work/JobListenableFuture$1;

    invoke-direct {p2, p0}, Landroidx/work/JobListenableFuture$1;-><init>(Landroidx/work/JobListenableFuture;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/b2;Landroidx/work/impl/utils/futures/SettableFuture;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 3
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->s()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object p2

    const-string p3, "create()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/work/JobListenableFuture;-><init>(Lkotlinx/coroutines/b2;Landroidx/work/impl/utils/futures/SettableFuture;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/work/JobListenableFuture;)Landroidx/work/impl/utils/futures/SettableFuture;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 3
    return-object p0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->o(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/work/impl/utils/futures/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Landroidx/work/JobListenableFuture;->underlying:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isDone()Z

    move-result v0

    return v0
.end method
