.class public final Lio/ktor/utils/io/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;ZLe8/p;)Lio/ktor/utils/io/l;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lkotlinx/coroutines/o0;",
            ">(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/g;",
            "Lio/ktor/utils/io/c;",
            "Z",
            "Le8/p<",
            "-TS;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/l;"
        }
    .end annotation

    .line 1
    move-object v6, p2

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    sget-object v1, Lkotlinx/coroutines/k0;->Key:Lkotlinx/coroutines/k0$a;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 11
    move-result-object v0

    .line 12
    move-object v4, v0

    .line 13
    .line 14
    check-cast v4, Lkotlinx/coroutines/k0;

    .line 15
    const/4 v9, 0x0

    .line 16
    .line 17
    new-instance v10, Lio/ktor/utils/io/q$b;

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v0, v10

    .line 20
    .line 21
    move/from16 v1, p3

    .line 22
    move-object v2, p2

    .line 23
    .line 24
    move-object/from16 v3, p4

    .line 25
    .line 26
    .line 27
    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/q$b;-><init>(ZLio/ktor/utils/io/c;Le8/p;Lkotlinx/coroutines/k0;Lkotlin/coroutines/d;)V

    .line 28
    const/4 v11, 0x2

    .line 29
    const/4 v12, 0x0

    .line 30
    move-object v7, p0

    .line 31
    move-object v8, p1

    .line 32
    .line 33
    .line 34
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    new-instance v1, Lio/ktor/utils/io/q$a;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p2}, Lio/ktor/utils/io/q$a;-><init>(Lio/ktor/utils/io/c;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 44
    .line 45
    new-instance v1, Lio/ktor/utils/io/l;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v0, p2}, Lio/ktor/utils/io/l;-><init>(Lkotlinx/coroutines/b2;Lio/ktor/utils/io/c;)V

    .line 49
    return-object v1
.end method

.method public static final b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;)Lio/ktor/utils/io/t;
    .locals 1
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/g;",
            "Z",
            "Le8/p<",
            "-",
            "Lio/ktor/utils/io/u;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/t;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "coroutineContext"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "block"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lio/ktor/utils/io/e;->a(Z)Lio/ktor/utils/io/c;

    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/utils/io/q;->a(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;ZLe8/p;)Lio/ktor/utils/io/l;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final c(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;Le8/p;)Lio/ktor/utils/io/v;
    .locals 1
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/utils/io/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/g;",
            "Lio/ktor/utils/io/c;",
            "Le8/p<",
            "-",
            "Lio/ktor/utils/io/w;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/v;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "coroutineContext"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "channel"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "block"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/utils/io/q;->a(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;ZLe8/p;)Lio/ktor/utils/io/l;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static final d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;)Lio/ktor/utils/io/v;
    .locals 1
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/g;",
            "Z",
            "Le8/p<",
            "-",
            "Lio/ktor/utils/io/w;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/utils/io/v;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "coroutineContext"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "block"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lio/ktor/utils/io/e;->a(Z)Lio/ktor/utils/io/c;

    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/utils/io/q;->a(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;ZLe8/p;)Lio/ktor/utils/io/l;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static synthetic e(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;Le8/p;ILjava/lang/Object;)Lio/ktor/utils/io/v;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/q;->c(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lio/ktor/utils/io/c;Le8/p;)Lio/ktor/utils/io/v;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic f(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;ILjava/lang/Object;)Lio/ktor/utils/io/v;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 7
    .line 8
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/q;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;)Lio/ktor/utils/io/v;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
