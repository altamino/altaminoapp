.class final Lio/ktor/client/engine/m$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/m;->c(Lio/ktor/http/k;Lk7/b;Le8/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lio/ktor/http/l;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $content:Lk7/b;

.field final synthetic $requestHeaders:Lio/ktor/http/k;


# direct methods
.method constructor <init>(Lio/ktor/http/k;Lk7/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/m$a;->$requestHeaders:Lio/ktor/http/k;

    iput-object p2, p0, Lio/ktor/client/engine/m$a;->$content:Lk7/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/ktor/http/l;)V
    .locals 1
    .param p1    # Lio/ktor/http/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$buildHeaders"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lio/ktor/client/engine/m$a;->$requestHeaders:Lio/ktor/http/k;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lio/ktor/util/v;->e(Lio/ktor/util/t;)V

    .line 11
    .line 12
    iget-object v0, p0, Lio/ktor/client/engine/m$a;->$content:Lk7/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lk7/b;->c()Lio/ktor/http/k;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lio/ktor/util/v;->e(Lio/ktor/util/t;)V

    .line 20
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/http/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/ktor/client/engine/m$a;->a(Lio/ktor/http/l;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
