.class public final Lio/ktor/client/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/o0;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,239:1\n1855#2,2:240\n*S KotlinDebug\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient\n*L\n222#1:240,2\n*E\n"
.end annotation


# static fields
.field private static final synthetic closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final attributes:Lio/ktor/util/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final clientJob:Lkotlinx/coroutines/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic closed:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final config:Lio/ktor/client/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/b<",
            "Lio/ktor/client/engine/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coroutineContext:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final engine:Lio/ktor/client/engine/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final engineConfig:Lio/ktor/client/engine/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private manageEngine:Z

.field private final monitor:Lj7/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final receivePipeline:Lio/ktor/client/statement/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestPipeline:Li7/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final responsePipeline:Lio/ktor/client/statement/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendPipeline:Li7/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userConfig:Lio/ktor/client/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/b<",
            "+",
            "Lio/ktor/client/engine/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/ktor/client/a;

    const-string v1, "closed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/client/a;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;)V
    .locals 5
    .param p1    # Lio/ktor/client/engine/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/b;",
            "Lio/ktor/client/b<",
            "+",
            "Lio/ktor/client/engine/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/client/a;->engine:Lio/ktor/client/engine/b;

    iput-object p2, p0, Lio/ktor/client/a;->userConfig:Lio/ktor/client/b;

    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/client/a;->closed:I

    .line 2
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b2;

    invoke-static {v0}, Lkotlinx/coroutines/f2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/a;->clientJob:Lkotlinx/coroutines/a0;

    .line 3
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/client/a;->coroutineContext:Lkotlin/coroutines/g;

    .line 4
    new-instance v1, Li7/g;

    invoke-virtual {p2}, Lio/ktor/client/b;->b()Z

    move-result v2

    invoke-direct {v1, v2}, Li7/g;-><init>(Z)V

    iput-object v1, p0, Lio/ktor/client/a;->requestPipeline:Li7/g;

    .line 5
    new-instance v1, Lio/ktor/client/statement/f;

    invoke-virtual {p2}, Lio/ktor/client/b;->b()Z

    move-result v2

    invoke-direct {v1, v2}, Lio/ktor/client/statement/f;-><init>(Z)V

    iput-object v1, p0, Lio/ktor/client/a;->responsePipeline:Lio/ktor/client/statement/f;

    .line 6
    new-instance v2, Li7/i;

    invoke-virtual {p2}, Lio/ktor/client/b;->b()Z

    move-result v3

    invoke-direct {v2, v3}, Li7/i;-><init>(Z)V

    iput-object v2, p0, Lio/ktor/client/a;->sendPipeline:Li7/i;

    .line 7
    new-instance v3, Lio/ktor/client/statement/b;

    invoke-virtual {p2}, Lio/ktor/client/b;->b()Z

    move-result v4

    invoke-direct {v3, v4}, Lio/ktor/client/statement/b;-><init>(Z)V

    iput-object v3, p0, Lio/ktor/client/a;->receivePipeline:Lio/ktor/client/statement/b;

    const/4 v3, 0x1

    .line 8
    invoke-static {v3}, Lio/ktor/util/d;->a(Z)Lio/ktor/util/b;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/a;->attributes:Lio/ktor/util/b;

    .line 9
    invoke-interface {p1}, Lio/ktor/client/engine/b;->Z()Lio/ktor/client/engine/g;

    move-result-object v3

    iput-object v3, p0, Lio/ktor/client/a;->engineConfig:Lio/ktor/client/engine/g;

    .line 10
    new-instance v3, Lj7/b;

    invoke-direct {v3}, Lj7/b;-><init>()V

    iput-object v3, p0, Lio/ktor/client/a;->monitor:Lj7/b;

    .line 11
    new-instance v3, Lio/ktor/client/b;

    invoke-direct {v3}, Lio/ktor/client/b;-><init>()V

    iput-object v3, p0, Lio/ktor/client/a;->config:Lio/ktor/client/b;

    iget-boolean v4, p0, Lio/ktor/client/a;->manageEngine:Z

    if-eqz v4, :cond_0

    .line 12
    new-instance v4, Lio/ktor/client/a$a;

    invoke-direct {v4, p0}, Lio/ktor/client/a$a;-><init>(Lio/ktor/client/a;)V

    invoke-interface {v0, v4}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 13
    :cond_0
    invoke-interface {p1, p0}, Lio/ktor/client/engine/b;->T(Lio/ktor/client/a;)V

    .line 14
    sget-object p1, Li7/i;->Phases:Li7/i$a;

    invoke-virtual {p1}, Li7/i$a;->b()Lio/ktor/util/pipeline/h;

    move-result-object p1

    new-instance v0, Lio/ktor/client/a$b;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lio/ktor/client/a$b;-><init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    invoke-virtual {v2, p1, v0}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 15
    sget-object p1, Lio/ktor/client/plugins/s;->Plugin:Lio/ktor/client/plugins/s$a;

    const/4 v0, 0x2

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/b;->j(Lio/ktor/client/b;Lio/ktor/client/plugins/m;Le8/l;ILjava/lang/Object;)V

    .line 16
    sget-object p1, Lio/ktor/client/plugins/a;->Plugin:Lio/ktor/client/plugins/a$a;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/b;->j(Lio/ktor/client/b;Lio/ktor/client/plugins/m;Le8/l;ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p2}, Lio/ktor/client/b;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DefaultTransformers"

    sget-object v2, Lio/ktor/client/a$c;->INSTANCE:Lio/ktor/client/a$c;

    .line 18
    invoke-virtual {v3, p1, v2}, Lio/ktor/client/b;->i(Ljava/lang/String;Le8/l;)V

    .line 19
    :cond_1
    sget-object p1, Lio/ktor/client/plugins/x;->Plugin:Lio/ktor/client/plugins/x$d;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/b;->j(Lio/ktor/client/b;Lio/ktor/client/plugins/m;Le8/l;ILjava/lang/Object;)V

    .line 20
    sget-object p1, Lio/ktor/client/plugins/k;->Companion:Lio/ktor/client/plugins/k$a;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/b;->j(Lio/ktor/client/b;Lio/ktor/client/plugins/m;Le8/l;ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p2}, Lio/ktor/client/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    sget-object p1, Lio/ktor/client/plugins/q;->Plugin:Lio/ktor/client/plugins/q$b;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/b;->j(Lio/ktor/client/b;Lio/ktor/client/plugins/m;Le8/l;ILjava/lang/Object;)V

    .line 23
    :cond_2
    invoke-virtual {v3, p2}, Lio/ktor/client/b;->k(Lio/ktor/client/b;)V

    .line 24
    invoke-virtual {p2}, Lio/ktor/client/b;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    sget-object p1, Lio/ktor/client/plugins/o;->Plugin:Lio/ktor/client/plugins/o$b;

    invoke-static {v3, p1, v4, v0, v4}, Lio/ktor/client/b;->j(Lio/ktor/client/b;Lio/ktor/client/plugins/m;Le8/l;ILjava/lang/Object;)V

    .line 26
    :cond_3
    invoke-static {v3}, Lio/ktor/client/plugins/f;->c(Lio/ktor/client/b;)V

    .line 27
    invoke-virtual {v3, p0}, Lio/ktor/client/b;->g(Lio/ktor/client/a;)V

    .line 28
    sget-object p1, Lio/ktor/client/statement/f;->Phases:Lio/ktor/client/statement/f$a;

    invoke-virtual {p1}, Lio/ktor/client/statement/f$a;->b()Lio/ktor/util/pipeline/h;

    move-result-object p1

    new-instance p2, Lio/ktor/client/a$d;

    invoke-direct {p2, p0, v4}, Lio/ktor/client/a$d;-><init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    invoke-virtual {v1, p1, p2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 29
    new-instance p2, Lio/ktor/client/b;

    invoke-direct {p2}, Lio/ktor/client/b;-><init>()V

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/client/a;-><init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;Z)V
    .locals 1
    .param p1    # Lio/ktor/client/engine/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/engine/b;",
            "Lio/ktor/client/b<",
            "+",
            "Lio/ktor/client/engine/g;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lio/ktor/client/a;-><init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;)V

    iput-boolean p3, p0, Lio/ktor/client/a;->manageEngine:Z

    return-void
.end method


# virtual methods
.method public final L()Lio/ktor/util/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->attributes:Lio/ktor/util/b;

    return-object v0
.end method

.method public final a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Li7/d;
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
            "Li7/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/client/a$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/a$e;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/a$e;->label:I

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
    iput v1, v0, Lio/ktor/client/a$e;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/client/a$e;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/client/a$e;-><init>(Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/client/a$e;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/client/a$e;->label:I

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
    .line 40
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    iget-object p2, p0, Lio/ktor/client/a;->monitor:Lj7/b;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lio/ktor/client/utils/b;->a()Lj7/a;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v2, p1}, Lj7/b;->a(Lj7/a;Ljava/lang/Object;)V

    .line 62
    .line 63
    iget-object p2, p0, Lio/ktor/client/a;->requestPipeline:Li7/g;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Li7/d;->c()Ljava/lang/Object;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    iput v3, v0, Lio/ktor/client/a$e;->label:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p1, v2, v0}, Lio/ktor/util/pipeline/d;->d(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    if-ne p2, v1, :cond_3

    .line 76
    return-object v1

    .line 77
    .line 78
    :cond_3
    :goto_1
    const-string p1, "null cannot be cast to non-null type io.ktor.client.call.HttpClientCall"

    .line 79
    .line 80
    .line 81
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    check-cast p2, Lio/ktor/client/call/b;

    .line 84
    return-object p2
.end method

.method public close()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lio/ktor/client/a;->closed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lio/ktor/client/a;->attributes:Lio/ktor/util/b;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lio/ktor/client/plugins/n;->a()Lio/ktor/util/a;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lio/ktor/util/b;->f(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lio/ktor/util/b;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Lio/ktor/util/b;->b()Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Iterable;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Lio/ktor/util/a;

    .line 46
    .line 47
    const-string v3, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>"

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2}, Lio/ktor/util/b;->f(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    instance-of v3, v2, Ljava/io/Closeable;

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    check-cast v2, Ljava/io/Closeable;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lio/ktor/client/a;->clientJob:Lkotlinx/coroutines/a0;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Lkotlinx/coroutines/a0;->complete()Z

    .line 70
    .line 71
    iget-boolean v0, p0, Lio/ktor/client/a;->manageEngine:Z

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lio/ktor/client/a;->engine:Lio/ktor/client/engine/b;

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 79
    :cond_3
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/a;->coroutineContext:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public final h()Lio/ktor/client/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/client/b<",
            "Lio/ktor/client/engine/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->config:Lio/ktor/client/b;

    return-object v0
.end method

.method public final k()Lio/ktor/client/engine/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->engine:Lio/ktor/client/engine/b;

    return-object v0
.end method

.method public final l()Lj7/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->monitor:Lj7/b;

    return-object v0
.end method

.method public final m()Lio/ktor/client/statement/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->receivePipeline:Lio/ktor/client/statement/b;

    return-object v0
.end method

.method public final n()Li7/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->requestPipeline:Li7/g;

    return-object v0
.end method

.method public final o()Lio/ktor/client/statement/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->responsePipeline:Lio/ktor/client/statement/f;

    return-object v0
.end method

.method public final p()Li7/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/a;->sendPipeline:Li7/i;

    return-object v0
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
    const-string v1, "HttpClient["

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lio/ktor/client/a;->engine:Lio/ktor/client/engine/b;

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
