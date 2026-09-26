.class public final Lio/ktor/client/engine/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngineKt\n+ 2 Utils.kt\nio/ktor/client/engine/UtilsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n94#2,11:164\n766#3:175\n857#3,2:176\n*S KotlinDebug\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngineKt\n*L\n146#1:164,11\n156#1:175\n156#1:176,2\n*E\n"
.end annotation


# static fields
.field private static final CALL_COROUTINE:Lkotlinx/coroutines/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CLIENT_CONFIG:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Lio/ktor/client/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/n0;

    .line 3
    .line 4
    const-string v1, "call-context"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lkotlinx/coroutines/n0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lio/ktor/client/engine/i;->CALL_COROUTINE:Lkotlinx/coroutines/n0;

    .line 10
    .line 11
    new-instance v0, Lio/ktor/util/a;

    .line 12
    .line 13
    const-string v1, "client-config"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lio/ktor/client/engine/i;->CLIENT_CONFIG:Lio/ktor/util/a;

    .line 19
    return-void
.end method

.method public static final synthetic a(Li7/e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lio/ktor/client/engine/i;->d(Li7/e;)V

    .line 4
    return-void
.end method

.method public static final b(Lio/ktor/client/engine/b;Lkotlinx/coroutines/b2;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
    .param p0    # Lio/ktor/client/engine/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/b;",
            "Lkotlinx/coroutines/b2;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/coroutines/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/f2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    sget-object v0, Lio/ktor/client/engine/i;->CALL_COROUTINE:Lkotlinx/coroutines/n0;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 28
    move-result-object p2

    .line 29
    move-object v0, p2

    .line 30
    .line 31
    check-cast v0, Lkotlinx/coroutines/b2;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    new-instance v3, Lio/ktor/client/engine/l;

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, p1}, Lio/ktor/client/engine/l;-><init>(Lkotlinx/coroutines/b2;)V

    .line 42
    const/4 v4, 0x2

    .line 43
    const/4 v5, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/b2$a;->d(Lkotlinx/coroutines/b2;ZZLe8/l;ILjava/lang/Object;)Lkotlinx/coroutines/g1;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    new-instance v0, Lio/ktor/client/engine/k;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p2}, Lio/ktor/client/engine/k;-><init>(Lkotlinx/coroutines/g1;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 56
    :goto_0
    return-object p0
.end method

.method public static final c()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Lio/ktor/client/b<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/client/engine/i;->CLIENT_CONFIG:Lio/ktor/util/a;

    return-object v0
.end method

.method private static final d(Li7/e;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Li7/e;->e()Lio/ktor/http/k;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lio/ktor/util/t;->names()Ljava/util/Set;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    move-object v2, v1

    .line 29
    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    sget-object v3, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lio/ktor/http/o;->v()Ljava/util/List;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    move-result p0

    .line 51
    .line 52
    xor-int/lit8 p0, p0, 0x1

    .line 53
    .line 54
    if-nez p0, :cond_2

    .line 55
    return-void

    .line 56
    .line 57
    :cond_2
    new-instance p0, Lio/ktor/http/o0;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v0}, Lio/ktor/http/o0;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0
.end method
