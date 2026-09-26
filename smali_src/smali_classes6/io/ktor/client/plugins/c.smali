.class public final Lio/ktor/client/plugins/c;
.super Lio/ktor/client/plugins/c0;
.source "SourceFile"


# instance fields
.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/statement/c;)V
    .locals 1
    .param p1    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<no response text provided>"

    .line 5
    invoke-direct {p0, p1, v0}, Lio/ktor/client/plugins/c;-><init>(Lio/ktor/client/statement/c;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/client/statement/c;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedResponseText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/c0;-><init>(Lio/ktor/client/statement/c;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client request("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/call/b;->e()Li7/c;

    move-result-object v1

    invoke-interface {v1}, Li7/c;->getMethod()Lio/ktor/http/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/t;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/call/b;->e()Li7/c;

    move-result-object v1

    invoke-interface {v1}, Li7/c;->getUrl()Lio/ktor/http/p0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Text: \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/client/plugins/c;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lio/ktor/client/plugins/c;->message:Ljava/lang/String;

    return-object v0
.end method
