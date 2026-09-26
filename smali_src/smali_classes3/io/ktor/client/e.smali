.class public final Lio/ktor/client/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/ktor/client/engine/h;Le8/l;)Lio/ktor/client/a;
    .locals 2
    .param p0    # Lio/ktor/client/engine/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/ktor/client/engine/g;",
            ">(",
            "Lio/ktor/client/engine/h<",
            "+TT;>;",
            "Le8/l<",
            "-",
            "Lio/ktor/client/b<",
            "TT;>;",
            "Lw7/l0;",
            ">;)",
            "Lio/ktor/client/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "engineFactory"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lio/ktor/client/b;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lio/ktor/client/b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lio/ktor/client/b;->c()Le8/l;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p1}, Lio/ktor/client/engine/h;->a(Le8/l;)Lio/ktor/client/engine/b;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    new-instance p1, Lio/ktor/client/a;

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p0, v0, v1}, Lio/ktor/client/a;-><init>(Lio/ktor/client/engine/b;Lio/ktor/client/b;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lio/ktor/client/a;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sget-object v1, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    check-cast v0, Lkotlinx/coroutines/b2;

    .line 48
    .line 49
    new-instance v1, Lio/ktor/client/e$a;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0}, Lio/ktor/client/e$a;-><init>(Lio/ktor/client/engine/b;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v1}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 56
    return-object p1
.end method
