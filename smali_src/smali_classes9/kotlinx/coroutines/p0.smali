.class public final Lkotlinx/coroutines/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;
    .locals 3
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/f;

    .line 3
    .line 4
    sget-object v1, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/f2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlin/coroutines/g;)V

    .line 25
    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/o0;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/f;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/y2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlin/coroutines/g;)V

    .line 20
    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/o0;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlinx/coroutines/p1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lkotlinx/coroutines/p0;->d(Lkotlinx/coroutines/o0;Ljava/util/concurrent/CancellationException;)V

    .line 8
    return-void
.end method

.method public static final d(Lkotlinx/coroutines/o0;Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lkotlinx/coroutines/b2;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lkotlinx/coroutines/b2;->b(Ljava/util/concurrent/CancellationException;)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method

.method public static synthetic e(Lkotlinx/coroutines/o0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/p0;->d(Lkotlinx/coroutines/o0;Ljava/util/concurrent/CancellationException;)V

    .line 9
    return-void
.end method

.method public static final f(Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/e0;-><init>(Lkotlin/coroutines/g;Lkotlin/coroutines/d;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v0, p0}, Ll8/b;->b(Lkotlinx/coroutines/internal/e0;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 23
    :cond_0
    return-object p0
.end method

.method public static final g(Lkotlinx/coroutines/o0;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlinx/coroutines/f2;->j(Lkotlin/coroutines/g;)V

    .line 8
    return-void
.end method

.method public static final h(Lkotlinx/coroutines/o0;)Z
    .locals 1
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Lkotlinx/coroutines/b2;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    :goto_0
    return p0
.end method

.method public static final i(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;
    .locals 1
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/f;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/f;-><init>(Lkotlin/coroutines/g;)V

    .line 14
    return-object v0
.end method
