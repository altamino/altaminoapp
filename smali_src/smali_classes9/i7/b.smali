.class public Li7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/c;


# instance fields
.field private final attributes:Lio/ktor/util/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final call:Lio/ktor/client/call/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final content:Lk7/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headers:Lio/ktor/http/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final method:Lio/ktor/http/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Lio/ktor/http/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/call/b;Li7/e;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/e;
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
    const-string v0, "data"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Li7/b;->call:Lio/ktor/client/call/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Li7/e;->f()Lio/ktor/http/t;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Li7/b;->method:Lio/ktor/http/t;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Li7/e;->h()Lio/ktor/http/p0;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Li7/b;->url:Lio/ktor/http/p0;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Li7/e;->b()Lk7/b;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Li7/b;->content:Lk7/b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Li7/e;->e()Lio/ktor/http/k;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Li7/b;->headers:Lio/ktor/http/k;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Li7/e;->a()Lio/ktor/util/b;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Li7/b;->attributes:Lio/ktor/util/b;

    .line 46
    return-void
.end method


# virtual methods
.method public L()Lio/ktor/util/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/b;->attributes:Lio/ktor/util/b;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Li7/b;->y0()Lio/ktor/client/call/b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lio/ktor/client/call/b;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/b;->headers:Lio/ktor/http/k;

    return-object v0
.end method

.method public getMethod()Lio/ktor/http/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/b;->method:Lio/ktor/http/t;

    return-object v0
.end method

.method public getUrl()Lio/ktor/http/p0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/b;->url:Lio/ktor/http/p0;

    return-object v0
.end method

.method public y0()Lio/ktor/client/call/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Li7/b;->call:Lio/ktor/client/call/b;

    return-object v0
.end method
