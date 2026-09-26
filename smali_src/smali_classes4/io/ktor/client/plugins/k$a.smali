.class public final Lio/ktor/client/plugins/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/client/plugins/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/client/plugins/m<",
        "Lio/ktor/client/plugins/k$b;",
        "Lio/ktor/client/plugins/k;",
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
    invoke-direct {p0}, Lio/ktor/client/plugins/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le8/l;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/k$a;->d(Le8/l;)Lio/ktor/client/plugins/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/a;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lio/ktor/client/plugins/k;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/k$a;->c(Lio/ktor/client/plugins/k;Lio/ktor/client/a;)V

    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/k;Lio/ktor/client/a;)V
    .locals 4
    .param p1    # Lio/ktor/client/plugins/k;
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
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Li7/g;->Phases:Li7/g$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Li7/g$a;->a()Lio/ktor/util/pipeline/h;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    new-instance v2, Lio/ktor/client/plugins/k$a$a;

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p1, v3}, Lio/ktor/client/plugins/k$a$a;-><init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 30
    .line 31
    new-instance v0, Lio/ktor/util/pipeline/h;

    .line 32
    .line 33
    const-string v1, "BeforeReceive"

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/h;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lio/ktor/client/a;->o()Lio/ktor/client/statement/f;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    sget-object v2, Lio/ktor/client/statement/f;->Phases:Lio/ktor/client/statement/f$a;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lio/ktor/client/statement/f$a;->b()Lio/ktor/util/pipeline/h;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Lio/ktor/util/pipeline/d;->k(Lio/ktor/util/pipeline/h;Lio/ktor/util/pipeline/h;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lio/ktor/client/a;->o()Lio/ktor/client/statement/f;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    new-instance v2, Lio/ktor/client/plugins/k$a$b;

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p1, v3}, Lio/ktor/client/plugins/k$a$b;-><init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0, v2}, Lio/ktor/util/pipeline/d;->l(Lio/ktor/util/pipeline/h;Le8/q;)V

    .line 62
    .line 63
    sget-object v0, Lio/ktor/client/plugins/x;->Plugin:Lio/ktor/client/plugins/x$d;

    .line 64
    .line 65
    .line 66
    invoke-static {p2, v0}, Lio/ktor/client/plugins/n;->b(Lio/ktor/client/a;Lio/ktor/client/plugins/m;)Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    check-cast p2, Lio/ktor/client/plugins/x;

    .line 70
    .line 71
    new-instance v0, Lio/ktor/client/plugins/k$a$c;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p1, v3}, Lio/ktor/client/plugins/k$a$c;-><init>(Lio/ktor/client/plugins/k;Lkotlin/coroutines/d;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v0}, Lio/ktor/client/plugins/x;->d(Le8/q;)V

    .line 78
    return-void
.end method

.method public d(Le8/l;)Lio/ktor/client/plugins/k;
    .locals 3
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Lio/ktor/client/plugins/k$b;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/plugins/k;"
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
    new-instance v0, Lio/ktor/client/plugins/k$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lio/ktor/client/plugins/k$b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p1, Lio/ktor/client/plugins/k;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lio/ktor/client/plugins/k$b;->c()Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Iterable;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/collections/t;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lio/ktor/client/plugins/k$b;->b()Ljava/util/List;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Ljava/lang/Iterable;

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/collections/t;->G0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lio/ktor/client/plugins/k$b;->a()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v1, v2, v0}, Lio/ktor/client/plugins/k;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 43
    return-object p1
.end method

.method public getKey()Lio/ktor/util/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/a<",
            "Lio/ktor/client/plugins/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/client/plugins/k;->b()Lio/ktor/util/a;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
