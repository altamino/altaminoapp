.class final Lio/ktor/client/plugins/x$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final interceptor:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Lio/ktor/client/plugins/e0;",
            "Li7/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nextSender:Lio/ktor/client/plugins/e0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le8/q;Lio/ktor/client/plugins/e0;)V
    .locals 1
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/plugins/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Lio/ktor/client/plugins/e0;",
            "-",
            "Li7/d;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/ktor/client/plugins/e0;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "interceptor"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "nextSender"

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
    iput-object p1, p0, Lio/ktor/client/plugins/x$c;->interceptor:Le8/q;

    .line 16
    .line 17
    iput-object p2, p0, Lio/ktor/client/plugins/x$c;->nextSender:Lio/ktor/client/plugins/e0;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li7/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/client/plugins/x$c;->interceptor:Le8/q;

    .line 3
    .line 4
    iget-object v1, p0, Lio/ktor/client/plugins/x$c;->nextSender:Lio/ktor/client/plugins/e0;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1, p1, p2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
