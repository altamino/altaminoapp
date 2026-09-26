.class public final Lio/ktor/client/plugins/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/m;
.implements Lio/ktor/client/engine/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/m<",
        "Lio/ktor/client/plugins/y$a;",
        "Lio/ktor/client/plugins/y;",
        ">;",
        "Lio/ktor/client/engine/e<",
        "Lio/ktor/client/plugins/y$a;",
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
    invoke-direct {p0}, Lio/ktor/client/plugins/y$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le8/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/y$b;->d(Le8/l;)Lio/ktor/client/plugins/y;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/a;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/y;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/y$b;->c(Lio/ktor/client/plugins/y;Lio/ktor/client/a;)V

    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/y;Lio/ktor/client/a;)V
    .locals 3
    .param p1    # Lio/ktor/client/plugins/y;
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
    sget-object v0, Lio/ktor/client/plugins/x;->Plugin:Lio/ktor/client/plugins/x$d;

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lio/ktor/client/plugins/n;->b(Lio/ktor/client/a;Lio/ktor/client/plugins/m;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lio/ktor/client/plugins/x;

    .line 19
    .line 20
    new-instance v1, Lio/ktor/client/plugins/y$b$a;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p1, p2, v2}, Lio/ktor/client/plugins/y$b$a;-><init>(Lio/ktor/client/plugins/y;Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lio/ktor/client/plugins/x;->d(Le8/q;)V

    .line 28
    return-void
.end method

.method public d(Le8/l;)Lio/ktor/client/plugins/y;
    .locals 7
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lio/ktor/client/plugins/y$a;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/plugins/y;"
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
    new-instance v0, Lio/ktor/client/plugins/y$a;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x7

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, v0

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v1 .. v6}, Lio/ktor/client/plugins/y$a;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/k;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lio/ktor/client/plugins/y$a;->a()Lio/ktor/client/plugins/y;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public getKey()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/y;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/client/plugins/y;->b()Lio/ktor/util/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
