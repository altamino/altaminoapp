.class public final Lcoil/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCalls.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Calls.kt\ncoil/util/-Calls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,44:1\n314#2,11:45\n*S KotlinDebug\n*F\n+ 1 Calls.kt\ncoil/util/-Calls\n*L\n16#1:45,11\n*E\n"
.end annotation


# direct methods
.method public static final a(Lokhttp3/Call;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lokhttp3/Call;
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
            "Lokhttp3/Call;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lokhttp3/Response;",
            ">;)",
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
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    new-instance v1, Lcoil/util/j;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, p0, v0}, Lcoil/util/j;-><init>(Lokhttp3/Call;Lkotlinx/coroutines/o;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Lkotlinx/coroutines/o;->S(Le8/l;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-ne p0, v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 38
    :cond_0
    return-object p0
.end method
