.class public final Lio/ktor/client/network/sockets/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Li7/e;)Lio/ktor/utils/io/c;
    .locals 3
    .param p0    # Li7/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "request"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/client/network/sockets/d$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lio/ktor/client/network/sockets/d$a;-><init>(Li7/e;)V

    .line 11
    const/4 p0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v0, p0, v1}, Lio/ktor/utils/io/e;->d(ZLe8/l;ILjava/lang/Object;)Lio/ktor/utils/io/c;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
