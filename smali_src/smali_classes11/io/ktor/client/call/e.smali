.class public final Lio/ktor/client/call/e;
.super Lio/ktor/client/call/b;
.source "SourceFile"


# instance fields
.field private final allowDoubleReceive:Z

.field private final responseBody:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/a;Li7/c;Lio/ktor/client/statement/c;[B)V
    .locals 1
    .param p1    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [B
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
    const-string v0, "request"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "response"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "responseBody"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lio/ktor/client/call/b;-><init>(Lio/ktor/client/a;)V

    .line 24
    .line 25
    iput-object p4, p0, Lio/ktor/client/call/e;->responseBody:[B

    .line 26
    .line 27
    new-instance p1, Lio/ktor/client/call/f;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p0, p2}, Lio/ktor/client/call/f;-><init>(Lio/ktor/client/call/e;Li7/c;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lio/ktor/client/call/b;->i(Li7/c;)V

    .line 34
    .line 35
    new-instance p1, Lio/ktor/client/call/g;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p0, p4, p3}, Lio/ktor/client/call/g;-><init>(Lio/ktor/client/call/e;[BLio/ktor/client/statement/c;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lio/ktor/client/call/b;->j(Lio/ktor/client/statement/c;)V

    .line 42
    const/4 p1, 0x1

    .line 43
    .line 44
    iput-boolean p1, p0, Lio/ktor/client/call/e;->allowDoubleReceive:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/client/call/e;->allowDoubleReceive:Z

    return v0
.end method

.method protected g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/utils/io/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/ktor/client/call/e;->responseBody:[B

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lio/ktor/utils/io/d;->a([B)Lio/ktor/utils/io/g;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
