.class final Lio/ktor/client/network/sockets/c$a;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/network/sockets/c;->a(Lkotlinx/coroutines/o0;Lio/ktor/utils/io/g;Li7/e;)Lio/ktor/utils/io/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lio/ktor/utils/io/w;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.network.sockets.TimeoutExceptionsCommonKt$mapEngineExceptions$1"
    f = "TimeoutExceptionsCommon.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $input:Lio/ktor/utils/io/g;

.field final synthetic $replacementChannel:Lio/ktor/utils/io/c;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/g;Lio/ktor/utils/io/c;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/g;",
            "Lio/ktor/utils/io/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/network/sockets/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/network/sockets/c$a;->$input:Lio/ktor/utils/io/g;

    iput-object p2, p0, Lio/ktor/client/network/sockets/c$a;->$replacementChannel:Lio/ktor/utils/io/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lio/ktor/client/network/sockets/c$a;

    iget-object v0, p0, Lio/ktor/client/network/sockets/c$a;->$input:Lio/ktor/utils/io/g;

    iget-object v1, p0, Lio/ktor/client/network/sockets/c$a;->$replacementChannel:Lio/ktor/utils/io/c;

    invoke-direct {p1, v0, v1, p2}, Lio/ktor/client/network/sockets/c$a;-><init>(Lio/ktor/utils/io/g;Lio/ktor/utils/io/c;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final f(Lio/ktor/utils/io/w;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/utils/io/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/w;",
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
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/network/sockets/c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/ktor/client/network/sockets/c$a;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Lio/ktor/client/network/sockets/c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/utils/io/w;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/ktor/client/network/sockets/c$a;->f(Lio/ktor/utils/io/w;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Lio/ktor/client/network/sockets/c$a;->label:I

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    :try_start_1
    iget-object v1, p0, Lio/ktor/client/network/sockets/c$a;->$input:Lio/ktor/utils/io/g;

    .line 31
    .line 32
    iget-object p1, p0, Lio/ktor/client/network/sockets/c$a;->$replacementChannel:Lio/ktor/utils/io/c;

    .line 33
    .line 34
    const-wide/16 v3, 0x0

    .line 35
    const/4 v6, 0x2

    .line 36
    const/4 v7, 0x0

    .line 37
    .line 38
    iput v2, p0, Lio/ktor/client/network/sockets/c$a;->label:I

    .line 39
    move-object v2, p1

    .line 40
    move-object v5, p0

    .line 41
    .line 42
    .line 43
    invoke-static/range {v1 .. v7}, Lio/ktor/utils/io/i;->c(Lio/ktor/utils/io/g;Lio/ktor/utils/io/j;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    return-object v0

    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lio/ktor/client/network/sockets/c$a;->$input:Lio/ktor/utils/io/g;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1}, Lio/ktor/utils/io/g;->e(Ljava/lang/Throwable;)Z

    .line 53
    .line 54
    :cond_2
    :goto_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 55
    return-object p1
.end method
