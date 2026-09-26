.class public final Lh7/a;
.super Lio/ktor/client/call/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/ktor/client/a;Lio/ktor/utils/io/g;Lio/ktor/client/call/b;)V
    .locals 1
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/ktor/client/call/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "client"

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
    const-string v0, "originCall"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lio/ktor/client/call/b;-><init>(Lio/ktor/client/a;)V

    .line 19
    .line 20
    new-instance p1, Lh7/c;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p0, v0}, Lh7/c;-><init>(Lio/ktor/client/call/b;Li7/c;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lio/ktor/client/call/b;->i(Li7/c;)V

    .line 31
    .line 32
    new-instance p1, Lh7/d;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 36
    move-result-object p3

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p0, p2, p3}, Lh7/d;-><init>(Lio/ktor/client/call/b;Lio/ktor/utils/io/g;Lio/ktor/client/statement/c;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lio/ktor/client/call/b;->j(Lio/ktor/client/statement/c;)V

    .line 43
    return-void
.end method
