.class public final Lio/ktor/client/plugins/w;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Li7/d;)V
    .locals 2
    .param p1    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Li7/d;->h()Lio/ktor/http/f0;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/f0;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lio/ktor/client/plugins/y;->Plugin:Lio/ktor/client/plugins/y$b;

    invoke-virtual {p1, v1}, Li7/d;->e(Lio/ktor/client/engine/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/client/plugins/y$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/ktor/client/plugins/y$a;->d()Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v0, p1}, Lio/ktor/client/plugins/w;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Li7/e;)V
    .locals 2
    .param p1    # Li7/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Li7/e;->h()Lio/ktor/http/p0;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/http/p0;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Lio/ktor/client/plugins/y;->Plugin:Lio/ktor/client/plugins/y$b;

    invoke-virtual {p1, v1}, Li7/e;->c(Lio/ktor/client/engine/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/ktor/client/plugins/y$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/ktor/client/plugins/y$a;->d()Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-direct {p0, v0, p1}, Lio/ktor/client/plugins/w;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request timeout has expired [url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", request_timeout="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, "unknown"

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ms]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
