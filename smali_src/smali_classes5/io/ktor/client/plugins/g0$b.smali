.class public final Lio/ktor/client/plugins/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/m<",
        "Lio/ktor/client/plugins/g0$a;",
        "Lio/ktor/client/plugins/g0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/client/plugins/g0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le8/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/g0$b;->d(Le8/l;)Lio/ktor/client/plugins/g0;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/a;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/g0$b;->c(Lio/ktor/client/plugins/g0;Lio/ktor/client/a;)V

    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/g0;Lio/ktor/client/a;)V
    .locals 3
    .param p1    # Lio/ktor/client/plugins/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "plugin"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "scope"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lio/ktor/client/a;->n()Li7/g;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    sget-object v0, Li7/g;->Phases:Li7/g$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Li7/g$a;->d()Lio/ktor/util/pipeline/h;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Lio/ktor/client/plugins/g0$b$a;

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p1, v2}, Lio/ktor/client/plugins/g0$b$a;-><init>(Lio/ktor/client/plugins/g0;Lkotlin/coroutines/d;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0, v1}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 30
    return-void
.end method

.method public d(Le8/l;)Lio/ktor/client/plugins/g0;
    .locals 4
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lio/ktor/client/plugins/g0$a;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/plugins/g0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "block"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/client/plugins/g0;

    .line 8
    .line 9
    new-instance v1, Lio/ktor/client/plugins/g0$a;

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3, v2, v3}, Lio/ktor/client/plugins/g0$a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/k;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lio/ktor/client/plugins/g0$a;->a()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1, v3}, Lio/ktor/client/plugins/g0;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/k;)V

    .line 25
    return-object v0
.end method

.method public getKey()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/g0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/client/plugins/g0;->a()Lio/ktor/util/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
