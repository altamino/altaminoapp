.class public final Lio/ktor/util/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutinesUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutinesUtils.kt\nio/ktor/util/CoroutinesUtilsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,29:1\n1295#2,2:30\n48#3,4:32\n*S KotlinDebug\n*F\n+ 1 CoroutinesUtils.kt\nio/ktor/util/CoroutinesUtilsKt\n*L\n16#1:30,2\n28#1:32,4\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/b2;)Lkotlin/coroutines/g;
    .locals 2
    .param p0    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/y2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lkotlinx/coroutines/l0;->Key:Lkotlinx/coroutines/l0$b;

    .line 7
    .line 8
    new-instance v1, Lio/ktor/util/m$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Lio/ktor/util/m$a;-><init>(Lkotlinx/coroutines/l0$b;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlin/coroutines/g;
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
    invoke-static {p0}, Lio/ktor/util/m;->a(Lkotlinx/coroutines/b2;)Lkotlin/coroutines/g;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
