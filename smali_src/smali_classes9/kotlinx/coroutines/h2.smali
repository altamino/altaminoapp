.class final synthetic Lkotlinx/coroutines/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,685:1\n13#2:686\n1295#3,2:687\n1295#3,2:689\n1295#3,2:691\n1295#3,2:693\n*S KotlinDebug\n*F\n+ 1 Job.kt\nkotlinx/coroutines/JobKt__JobKt\n*L\n494#1:686\n521#1:687,2\n535#1:689,2\n629#1:691,2\n653#1:693,2\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;
    .locals 1
    .param p0    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/e2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lkotlinx/coroutines/e2;-><init>(Lkotlinx/coroutines/b2;)V

    .line 6
    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/f2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lkotlinx/coroutines/b2;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Lkotlinx/coroutines/b2;->b(Ljava/util/concurrent/CancellationException;)V

    .line 14
    :cond_0
    return-void
.end method

.method public static final d(Lkotlinx/coroutines/b2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lkotlinx/coroutines/b2;
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
    invoke-interface {p0, p1}, Lkotlinx/coroutines/b2;->b(Ljava/util/concurrent/CancellationException;)V

    .line 8
    return-void
.end method

.method public static synthetic e(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
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
    invoke-static {p0, p1}, Lkotlinx/coroutines/f2;->c(Lkotlin/coroutines/g;Ljava/util/concurrent/CancellationException;)V

    .line 9
    return-void
.end method

.method public static synthetic f(Lkotlinx/coroutines/b2;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/f2;->d(Lkotlinx/coroutines/b2;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method

.method public static final g(Lkotlinx/coroutines/b2;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/b2;",
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
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/b2$a;->a(Lkotlinx/coroutines/b2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, p1}, Lkotlinx/coroutines/b2;->t0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 19
    return-object p0
.end method

.method public static final h(Lkotlinx/coroutines/b2;Lkotlinx/coroutines/g1;)Lkotlinx/coroutines/g1;
    .locals 1
    .param p0    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/g1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/i1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lkotlinx/coroutines/i1;-><init>(Lkotlinx/coroutines/g1;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final i(Lkotlin/coroutines/g;)V
    .locals 1
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lkotlinx/coroutines/b2;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lkotlinx/coroutines/f2;->k(Lkotlinx/coroutines/b2;)V

    .line 14
    :cond_0
    return-void
.end method

.method public static final j(Lkotlinx/coroutines/b2;)V
    .locals 1
    .param p0    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/b2;->b0()Ljava/util/concurrent/CancellationException;

    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public static final k(Lkotlin/coroutines/g;)Lkotlinx/coroutines/b2;
    .locals 3
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/b2;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "Current context doesn\'t contain Job in it: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0
.end method

.method public static final l(Lkotlin/coroutines/g;)Z
    .locals 1
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lkotlinx/coroutines/b2;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lkotlinx/coroutines/b2;->isActive()Z

    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    :goto_0
    return p0
.end method
