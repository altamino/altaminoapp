.class public final Lkotlinx/coroutines/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/internal/g;->a()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lkotlinx/coroutines/l0;

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/l0;->handleException(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lkotlinx/coroutines/internal/l; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v1}, Lkotlinx/coroutines/m0;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lkotlinx/coroutines/internal/g;->b(Ljava/lang/Throwable;)V

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    return-void

    .line 35
    .line 36
    :cond_0
    :try_start_1
    new-instance v0, Lkotlinx/coroutines/internal/i;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/i;-><init>(Lkotlin/coroutines/g;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    :catchall_1
    invoke-static {p1}, Lkotlinx/coroutines/internal/g;->b(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method
