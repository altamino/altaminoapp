.class public final Lh7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li7/c;


# instance fields
.field private final synthetic $$delegate_0:Li7/c;

.field private final call:Lio/ktor/client/call/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/call/b;Li7/c;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/c;
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
    const-string v0, "origin"

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
    iput-object p1, p0, Lh7/c;->call:Lio/ktor/client/call/b;

    .line 16
    .line 17
    iput-object p2, p0, Lh7/c;->$$delegate_0:Li7/c;

    .line 18
    return-void
.end method


# virtual methods
.method public L()Lio/ktor/util/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/c;->$$delegate_0:Li7/c;

    invoke-interface {v0}, Li7/c;->L()Lio/ktor/util/b;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/c;->$$delegate_0:Li7/c;

    invoke-interface {v0}, Li7/c;->getCoroutineContext()Lkotlin/coroutines/g;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lio/ktor/http/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/c;->$$delegate_0:Li7/c;

    invoke-interface {v0}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lio/ktor/http/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/c;->$$delegate_0:Li7/c;

    invoke-interface {v0}, Li7/c;->getMethod()Lio/ktor/http/t;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Lio/ktor/http/p0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/c;->$$delegate_0:Li7/c;

    invoke-interface {v0}, Li7/c;->getUrl()Lio/ktor/http/p0;

    move-result-object v0

    return-object v0
.end method

.method public y0()Lio/ktor/client/call/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/c;->call:Lio/ktor/client/call/b;

    return-object v0
.end method
