.class final Lio/ktor/utils/io/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/utils/io/t;
.implements Lio/ktor/utils/io/v;
.implements Lkotlinx/coroutines/b2;


# instance fields
.field private final channel:Lio/ktor/utils/io/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegate:Lkotlinx/coroutines/b2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/b2;Lio/ktor/utils/io/c;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "delegate"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "channel"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    .line 16
    .line 17
    iput-object p2, p0, Lio/ktor/utils/io/l;->channel:Lio/ktor/utils/io/c;

    .line 18
    return-void
.end method


# virtual methods
.method public O(ZZLe8/l;)Lkotlinx/coroutines/g1;
    .locals 1
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/b2;->O(ZZLe8/l;)Lkotlinx/coroutines/g1;

    move-result-object p1

    return-object p1
.end method

.method public Q(Lkotlinx/coroutines/w;)Lkotlinx/coroutines/u;
    .locals 1
    .param p1    # Lkotlinx/coroutines/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/b2;->Q(Lkotlinx/coroutines/w;)Lkotlinx/coroutines/u;

    move-result-object p1

    return-object p1
.end method

.method public U(Le8/l;)Lkotlinx/coroutines/g1;
    .locals 1
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/b2;->b(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public b0()Ljava/util/concurrent/CancellationException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0}, Lkotlinx/coroutines/b2;->b0()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/ktor/utils/io/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/l;->channel:Lio/ktor/utils/io/c;

    return-object v0
.end method

.method public bridge synthetic d()Lio/ktor/utils/io/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/l;->c()Lio/ktor/utils/io/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lio/ktor/utils/io/j;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/ktor/utils/io/l;->c()Lio/ktor/utils/io/c;

    move-result-object v0

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/g$b;->fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 1
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/g$b;",
            ">(",
            "Lkotlin/coroutines/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g$b;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lkotlin/coroutines/g$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/g$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0}, Lkotlin/coroutines/g$b;->getKey()Lkotlin/coroutines/g$c;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lkotlinx/coroutines/b2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0}, Lkotlinx/coroutines/b2;->getParent()Lkotlinx/coroutines/b2;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0}, Lkotlinx/coroutines/b2;->isActive()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0}, Lkotlinx/coroutines/b2;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0}, Lkotlinx/coroutines/b2;->m()Z

    move-result v0

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 1
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g$c<",
            "*>;)",
            "Lkotlin/coroutines/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g$b;->minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 1
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    return-object p1
.end method

.method public start()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0}, Lkotlinx/coroutines/b2;->start()Z

    move-result v0

    return v0
.end method

.method public t0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/b2;->t0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "ChannelJob["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lio/ktor/utils/io/l;->delegate:Lkotlinx/coroutines/b2;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x5d

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
