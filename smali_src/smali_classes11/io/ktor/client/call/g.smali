.class public final Lio/ktor/client/call/g;
.super Lio/ktor/client/statement/c;
.source "SourceFile"


# instance fields
.field private final call:Lio/ktor/client/call/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final content:Lio/ktor/utils/io/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Lkotlinx/coroutines/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coroutineContext:Lkotlin/coroutines/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headers:Lio/ktor/http/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestTime:Lm7/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final responseTime:Lm7/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final status:Lio/ktor/http/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final version:Lio/ktor/http/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/call/e;[BLio/ktor/client/statement/c;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "call"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "body"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "origin"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lio/ktor/client/statement/c;-><init>()V

    .line 19
    .line 20
    iput-object p1, p0, Lio/ktor/client/call/g;->call:Lio/ktor/client/call/e;

    .line 21
    const/4 p1, 0x0

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/f2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lio/ktor/client/call/g;->context:Lkotlinx/coroutines/a0;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lio/ktor/client/call/g;->status:Lio/ktor/http/v;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lio/ktor/client/statement/c;->f()Lio/ktor/http/u;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lio/ktor/client/call/g;->version:Lio/ktor/http/u;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Lio/ktor/client/statement/c;->b()Lm7/b;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lio/ktor/client/call/g;->requestTime:Lm7/b;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Lio/ktor/client/statement/c;->c()Lm7/b;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, p0, Lio/ktor/client/call/g;->responseTime:Lm7/b;

    .line 53
    .line 54
    .line 55
    invoke-interface {p3}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lio/ktor/client/call/g;->headers:Lio/ktor/http/k;

    .line 59
    .line 60
    .line 61
    invoke-interface {p3}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    .line 65
    invoke-interface {p3, p1}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iput-object p1, p0, Lio/ktor/client/call/g;->coroutineContext:Lkotlin/coroutines/g;

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Lio/ktor/utils/io/d;->a([B)Lio/ktor/utils/io/g;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    iput-object p1, p0, Lio/ktor/client/call/g;->content:Lio/ktor/utils/io/g;

    .line 75
    return-void
.end method


# virtual methods
.method public a()Lio/ktor/utils/io/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/g;->content:Lio/ktor/utils/io/g;

    return-object v0
.end method

.method public b()Lm7/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/g;->requestTime:Lm7/b;

    return-object v0
.end method

.method public c()Lm7/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/g;->responseTime:Lm7/b;

    return-object v0
.end method

.method public e()Lio/ktor/http/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/g;->status:Lio/ktor/http/v;

    return-object v0
.end method

.method public f()Lio/ktor/http/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/g;->version:Lio/ktor/http/u;

    return-object v0
.end method

.method public g()Lio/ktor/client/call/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/g;->call:Lio/ktor/client/call/e;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/call/g;->coroutineContext:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/call/g;->headers:Lio/ktor/http/k;

    return-object v0
.end method

.method public bridge synthetic y0()Lio/ktor/client/call/b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/client/call/g;->g()Lio/ktor/client/call/e;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
