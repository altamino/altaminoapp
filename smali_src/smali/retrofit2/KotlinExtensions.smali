.class public final Lretrofit2/KotlinExtensions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinExtensions.kt\nretrofit2/KotlinExtensions\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,120:1\n197#2,8:121\n197#2,8:129\n197#2,8:137\n*E\n*S KotlinDebug\n*F\n+ 1 KotlinExtensions.kt\nretrofit2/KotlinExtensions\n*L\n32#1,8:121\n66#1,8:129\n87#1,8:137\n*E\n"
.end annotation


# direct methods
.method public static final await(Lretrofit2/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    new-instance v1, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lretrofit2/Call;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 19
    .line 20
    new-instance v1, Lretrofit2/KotlinExtensions$await$2$2;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0}, Lretrofit2/KotlinExtensions$await$2$2;-><init>(Lkotlinx/coroutines/o;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 40
    :cond_0
    return-object p0
.end method

.method public static final awaitNullable(Lretrofit2/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    new-instance v1, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lretrofit2/KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2;-><init>(Lretrofit2/Call;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 19
    .line 20
    new-instance v1, Lretrofit2/KotlinExtensions$await$4$2;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0}, Lretrofit2/KotlinExtensions$await$4$2;-><init>(Lkotlinx/coroutines/o;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 40
    :cond_0
    return-object p0
.end method

.method public static final awaitResponse(Lretrofit2/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    new-instance v1, Lretrofit2/KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lretrofit2/KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lretrofit2/Call;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 19
    .line 20
    new-instance v1, Lretrofit2/KotlinExtensions$awaitResponse$2$2;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0}, Lretrofit2/KotlinExtensions$awaitResponse$2$2;-><init>(Lkotlinx/coroutines/o;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-ne p0, v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 40
    :cond_0
    return-object p0
.end method

.method public static final synthetic create(Lretrofit2/Retrofit;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lretrofit2/Retrofit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Retrofit;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$create"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x4

    .line 7
    .line 8
    const-string v1, "T"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->p(ILjava/lang/String;)V

    .line 12
    .line 13
    const-class v0, Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final suspendAndThrow(Ljava/lang/Exception;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Exception;
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
            "Ljava/lang/Exception;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lretrofit2/KotlinExtensions$suspendAndThrow$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;

    .line 8
    .line 9
    iget v1, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Lretrofit2/KotlinExtensions$suspendAndThrow$1;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Exception;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    iput-object p0, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    iput v3, v0, Lretrofit2/KotlinExtensions$suspendAndThrow$1;->label:I

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lkotlinx/coroutines/e1;->a()Lkotlinx/coroutines/k0;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    new-instance v3, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, v0, p0}, Lretrofit2/KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;-><init>(Lkotlin/coroutines/d;Ljava/lang/Exception;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2, v3}, Lkotlinx/coroutines/k0;->dispatch(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    if-ne p0, p1, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 90
    .line 91
    :cond_3
    if-ne p0, v1, :cond_4

    .line 92
    return-object v1

    .line 93
    .line 94
    :cond_4
    :goto_1
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 95
    return-object p0
.end method
