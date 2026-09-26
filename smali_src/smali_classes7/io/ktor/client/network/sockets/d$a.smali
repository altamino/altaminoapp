.class final Lio/ktor/client/network/sockets/d$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/network/sockets/d;->a(Li7/e;)Lio/ktor/utils/io/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $request:Li7/e;


# direct methods
.method constructor <init>(Li7/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/network/sockets/d$a;->$request:Li7/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lio/ktor/util/z;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    :goto_0
    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lio/ktor/client/network/sockets/d$a;->$request:Li7/e;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lio/ktor/client/plugins/z;->b(Li7/e;Ljava/lang/Throwable;)Lio/ktor/client/network/sockets/b;

    .line 18
    move-result-object p1

    .line 19
    :cond_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Throwable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/client/network/sockets/d$a;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
