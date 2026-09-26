.class public final Lh7/d;
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

.field private final origin:Lio/ktor/client/statement/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/call/b;Lio/ktor/utils/io/g;Lio/ktor/client/statement/c;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/g;
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
    const-string v0, "content"

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
    iput-object p1, p0, Lh7/d;->call:Lio/ktor/client/call/b;

    .line 21
    .line 22
    iput-object p2, p0, Lh7/d;->content:Lio/ktor/utils/io/g;

    .line 23
    .line 24
    iput-object p3, p0, Lh7/d;->origin:Lio/ktor/client/statement/c;

    .line 25
    .line 26
    .line 27
    invoke-interface {p3}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lh7/d;->coroutineContext:Lkotlin/coroutines/g;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lio/ktor/utils/io/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/d;->content:Lio/ktor/utils/io/g;

    return-object v0
.end method

.method public b()Lm7/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh7/d;->origin:Lio/ktor/client/statement/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/client/statement/c;->b()Lm7/b;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()Lm7/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh7/d;->origin:Lio/ktor/client/statement/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/client/statement/c;->c()Lm7/b;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public e()Lio/ktor/http/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh7/d;->origin:Lio/ktor/client/statement/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public f()Lio/ktor/http/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh7/d;->origin:Lio/ktor/client/statement/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lio/ktor/client/statement/c;->f()Lio/ktor/http/u;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/d;->coroutineContext:Lkotlin/coroutines/g;

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lh7/d;->origin:Lio/ktor/client/statement/c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public y0()Lio/ktor/client/call/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/d;->call:Lio/ktor/client/call/b;

    return-object v0
.end method
