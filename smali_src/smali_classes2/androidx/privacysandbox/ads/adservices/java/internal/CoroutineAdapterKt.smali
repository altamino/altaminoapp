.class public final Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lkotlinx/coroutines/v0;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->d(Lkotlinx/coroutines/v0;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/v0;Ljava/lang/Object;)Lcom/google/common/util/concurrent/k;
    .locals 1
    .param p0    # Lkotlinx/coroutines/v0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/v0<",
            "+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/k<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/privacysandbox/ads/adservices/java/internal/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Landroidx/privacysandbox/ads/adservices/java/internal/a;-><init>(Lkotlinx/coroutines/v0;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/k;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-string p1, "getFuture { completer ->\u2026        }\n    }\n    tag\n}"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-object p0
.end method

.method public static synthetic c(Lkotlinx/coroutines/v0;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/k;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x1

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    const-string p1, "Deferred.asListenableFuture"

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt;->b(Lkotlinx/coroutines/v0;Ljava/lang/Object;)Lcom/google/common/util/concurrent/k;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static final d(Lkotlinx/coroutines/v0;Ljava/lang/Object;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-string v0, "$this_asListenableFuture"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "completer"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p2, p0}, Landroidx/privacysandbox/ads/adservices/java/internal/CoroutineAdapterKt$asListenableFuture$1$1;-><init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lkotlinx/coroutines/v0;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, v0}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 19
    return-object p1
.end method
