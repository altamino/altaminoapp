.class final synthetic Lkotlinx/coroutines/flow/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/FlowKt__ShareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,426:1\n1#2:427\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/w;)Lkotlinx/coroutines/flow/b0;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/w<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/b0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/y;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/y;-><init>(Lkotlinx/coroutines/flow/b0;Lkotlinx/coroutines/b2;)V

    .line 7
    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/flow/x;)Lkotlinx/coroutines/flow/l0;
    .locals 2
    .param p0    # Lkotlinx/coroutines/flow/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/x<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/l0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/z;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/z;-><init>(Lkotlinx/coroutines/flow/l0;Lkotlinx/coroutines/b2;)V

    .line 7
    return-object v0
.end method

.method private static final c(Lkotlinx/coroutines/flow/g;I)Lkotlinx/coroutines/flow/g0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;I)",
            "Lkotlinx/coroutines/flow/g0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/d;->Factory:Lkotlinx/coroutines/channels/d$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/d$a;->a()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lj8/m;->e(II)I

    .line 10
    move-result v0

    .line 11
    sub-int/2addr v0, p1

    .line 12
    .line 13
    instance-of v1, p0, Lkotlinx/coroutines/flow/internal/e;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    move-object v1, p0

    .line 17
    .line 18
    check-cast v1, Lkotlinx/coroutines/flow/internal/e;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/internal/e;->j()Lkotlinx/coroutines/flow/g;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    new-instance p0, Lkotlinx/coroutines/flow/g0;

    .line 27
    .line 28
    iget v3, v1, Lkotlinx/coroutines/flow/internal/e;->capacity:I

    .line 29
    const/4 v4, -0x3

    .line 30
    .line 31
    if-eq v3, v4, :cond_0

    .line 32
    const/4 v4, -0x2

    .line 33
    .line 34
    if-eq v3, v4, :cond_0

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    move v0, v3

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/e;->onBufferOverflow:Lkotlinx/coroutines/channels/a;

    .line 41
    .line 42
    sget-object v5, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 43
    const/4 v6, 0x0

    .line 44
    .line 45
    if-ne v4, v5, :cond_2

    .line 46
    .line 47
    if-nez v3, :cond_3

    .line 48
    :cond_1
    move v0, v6

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_2
    if-nez p1, :cond_1

    .line 52
    const/4 v0, 0x1

    .line 53
    .line 54
    :cond_3
    :goto_0
    iget-object p1, v1, Lkotlinx/coroutines/flow/internal/e;->onBufferOverflow:Lkotlinx/coroutines/channels/a;

    .line 55
    .line 56
    iget-object v1, v1, Lkotlinx/coroutines/flow/internal/e;->context:Lkotlin/coroutines/g;

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v2, v0, p1, v1}, Lkotlinx/coroutines/flow/g0;-><init>(Lkotlinx/coroutines/flow/g;ILkotlinx/coroutines/channels/a;Lkotlin/coroutines/g;)V

    .line 60
    return-object p0

    .line 61
    .line 62
    :cond_4
    new-instance p1, Lkotlinx/coroutines/flow/g0;

    .line 63
    .line 64
    sget-object v1, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 65
    .line 66
    sget-object v2, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p0, v0, v1, v2}, Lkotlinx/coroutines/flow/g0;-><init>(Lkotlinx/coroutines/flow/g;ILkotlinx/coroutines/channels/a;Lkotlin/coroutines/g;)V

    .line 70
    return-object p1
.end method

.method private static final d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Lkotlinx/coroutines/flow/h0;Ljava/lang/Object;)Lkotlinx/coroutines/b2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/g;",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/w<",
            "TT;>;",
            "Lkotlinx/coroutines/flow/h0;",
            "TT;)",
            "Lkotlinx/coroutines/b2;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/flow/h0;->Companion:Lkotlinx/coroutines/flow/h0$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/h0$a;->c()Lkotlinx/coroutines/flow/h0;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lkotlinx/coroutines/q0;->DEFAULT:Lkotlinx/coroutines/q0;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lkotlinx/coroutines/q0;->UNDISPATCHED:Lkotlinx/coroutines/q0;

    .line 18
    .line 19
    :goto_0
    new-instance v7, Lkotlinx/coroutines/flow/t$a;

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v1, v7

    .line 22
    move-object v2, p4

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p5

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/t$a;-><init>(Lkotlinx/coroutines/flow/h0;Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1, v0, v7}, Lkotlinx/coroutines/i;->c(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;)Lkotlinx/coroutines/b2;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/flow/b0;Le8/p;)Lkotlinx/coroutines/flow/b0;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/b0<",
            "+TT;>;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/b0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/q0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/q0;-><init>(Lkotlinx/coroutines/flow/b0;Le8/p;)V

    .line 6
    return-object v0
.end method

.method public static final f(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/o0;Lkotlinx/coroutines/flow/h0;I)Lkotlinx/coroutines/flow/b0;
    .locals 8
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/flow/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Lkotlinx/coroutines/o0;",
            "Lkotlinx/coroutines/flow/h0;",
            "I)",
            "Lkotlinx/coroutines/flow/b0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlinx/coroutines/flow/t;->c(Lkotlinx/coroutines/flow/g;I)Lkotlinx/coroutines/flow/g0;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    iget v0, p0, Lkotlinx/coroutines/flow/g0;->extraBufferCapacity:I

    .line 7
    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/flow/g0;->onBufferOverflow:Lkotlinx/coroutines/channels/a;

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v0, v1}, Lkotlinx/coroutines/flow/d0;->a(IILkotlinx/coroutines/channels/a;)Lkotlinx/coroutines/flow/w;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    iget-object v3, p0, Lkotlinx/coroutines/flow/g0;->context:Lkotlin/coroutines/g;

    .line 15
    .line 16
    iget-object v4, p0, Lkotlinx/coroutines/flow/g0;->upstream:Lkotlinx/coroutines/flow/g;

    .line 17
    .line 18
    sget-object v7, Lkotlinx/coroutines/flow/d0;->NO_VALUE:Lkotlinx/coroutines/internal/i0;

    .line 19
    move-object v2, p1

    .line 20
    move-object v5, p3

    .line 21
    move-object v6, p2

    .line 22
    .line 23
    .line 24
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/flow/t;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Lkotlinx/coroutines/flow/h0;Ljava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    new-instance p1, Lkotlinx/coroutines/flow/y;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p3, p0}, Lkotlinx/coroutines/flow/y;-><init>(Lkotlinx/coroutines/flow/b0;Lkotlinx/coroutines/b2;)V

    .line 31
    return-object p1
.end method

.method public static final g(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/o0;Lkotlinx/coroutines/flow/h0;Ljava/lang/Object;)Lkotlinx/coroutines/flow/l0;
    .locals 7
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/flow/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/g<",
            "+TT;>;",
            "Lkotlinx/coroutines/o0;",
            "Lkotlinx/coroutines/flow/h0;",
            "TT;)",
            "Lkotlinx/coroutines/flow/l0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/t;->c(Lkotlinx/coroutines/flow/g;I)Lkotlinx/coroutines/flow/g0;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    .line 8
    invoke-static {p3}, Lkotlinx/coroutines/flow/n0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x;

    .line 9
    move-result-object v6

    .line 10
    .line 11
    iget-object v1, p0, Lkotlinx/coroutines/flow/g0;->context:Lkotlin/coroutines/g;

    .line 12
    .line 13
    iget-object v2, p0, Lkotlinx/coroutines/flow/g0;->upstream:Lkotlinx/coroutines/flow/g;

    .line 14
    move-object v0, p1

    .line 15
    move-object v3, v6

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    .line 19
    .line 20
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/flow/t;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/w;Lkotlinx/coroutines/flow/h0;Ljava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    new-instance p1, Lkotlinx/coroutines/flow/z;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v6, p0}, Lkotlinx/coroutines/flow/z;-><init>(Lkotlinx/coroutines/flow/l0;Lkotlinx/coroutines/b2;)V

    .line 27
    return-object p1
.end method
