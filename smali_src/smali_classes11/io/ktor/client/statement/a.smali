.class public final Lio/ktor/client/statement/a;
.super Lio/ktor/client/statement/c;
.source "SourceFile"


# instance fields
.field private final call:Lio/ktor/client/call/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final content:Lio/ktor/utils/io/g;
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
.method public constructor <init>(Lio/ktor/client/call/b;Li7/h;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/h;
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
    const-string v0, "responseData"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lio/ktor/client/statement/c;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lio/ktor/client/statement/a;->call:Lio/ktor/client/call/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Li7/h;->b()Lkotlin/coroutines/g;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lio/ktor/client/statement/a;->coroutineContext:Lkotlin/coroutines/g;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Li7/h;->f()Lio/ktor/http/v;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Lio/ktor/client/statement/a;->status:Lio/ktor/http/v;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Li7/h;->g()Lio/ktor/http/u;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lio/ktor/client/statement/a;->version:Lio/ktor/http/u;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Li7/h;->d()Lm7/b;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lio/ktor/client/statement/a;->requestTime:Lm7/b;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Li7/h;->e()Lm7/b;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lio/ktor/client/statement/a;->responseTime:Lm7/b;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Li7/h;->a()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    instance-of v0, p1, Lio/ktor/utils/io/g;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    check-cast p1, Lio/ktor/utils/io/g;

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    .line 59
    :goto_0
    if-nez p1, :cond_1

    .line 60
    .line 61
    sget-object p1, Lio/ktor/utils/io/g;->Companion:Lio/ktor/utils/io/g$a;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lio/ktor/utils/io/g$a;->a()Lio/ktor/utils/io/g;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    :cond_1
    iput-object p1, p0, Lio/ktor/client/statement/a;->content:Lio/ktor/utils/io/g;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Li7/h;->c()Lio/ktor/http/k;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    iput-object p1, p0, Lio/ktor/client/statement/a;->headers:Lio/ktor/http/k;

    .line 74
    return-void
.end method


# virtual methods
.method public a()Lio/ktor/utils/io/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/statement/a;->content:Lio/ktor/utils/io/g;

    return-object v0
.end method

.method public b()Lm7/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/statement/a;->requestTime:Lm7/b;

    return-object v0
.end method

.method public c()Lm7/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/statement/a;->responseTime:Lm7/b;

    return-object v0
.end method

.method public e()Lio/ktor/http/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/statement/a;->status:Lio/ktor/http/v;

    return-object v0
.end method

.method public f()Lio/ktor/http/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/statement/a;->version:Lio/ktor/http/u;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/statement/a;->coroutineContext:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/statement/a;->headers:Lio/ktor/http/k;

    return-object v0
.end method

.method public y0()Lio/ktor/client/call/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/statement/a;->call:Lio/ktor/client/call/b;

    return-object v0
.end method
