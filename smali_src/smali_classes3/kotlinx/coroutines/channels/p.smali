.class public final Lkotlinx/coroutines/channels/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,151:1\n1#2:152\n314#3,11:153\n*S KotlinDebug\n*F\n+ 1 Produce.kt\nkotlinx/coroutines/channels/ProduceKt\n*L\n48#1:153,11\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/channels/r;Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/channels/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/a;
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
            "Lkotlinx/coroutines/channels/r<",
            "*>;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/channels/p$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/channels/p$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/channels/p$a;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lkotlinx/coroutines/channels/p$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/p$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/p$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/p$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/channels/p$a;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lkotlinx/coroutines/channels/p$a;->L$1:Ljava/lang/Object;

    .line 40
    move-object p1, p0

    .line 41
    .line 42
    check-cast p1, Le8/a;

    .line 43
    .line 44
    iget-object p0, v0, Lkotlinx/coroutines/channels/p$a;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lkotlinx/coroutines/channels/r;

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    sget-object v2, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 70
    .line 71
    .line 72
    invoke-interface {p2, v2}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    if-ne p2, p0, :cond_5

    .line 76
    .line 77
    :try_start_1
    iput-object p0, v0, Lkotlinx/coroutines/channels/p$a;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p1, v0, Lkotlinx/coroutines/channels/p$a;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    iput v3, v0, Lkotlinx/coroutines/channels/p$a;->label:I

    .line 82
    .line 83
    new-instance p2, Lkotlinx/coroutines/p;

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, v2, v3}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lkotlinx/coroutines/p;->x()V

    .line 94
    .line 95
    new-instance v2, Lkotlinx/coroutines/channels/p$b;

    .line 96
    .line 97
    .line 98
    invoke-direct {v2, p2}, Lkotlinx/coroutines/channels/p$b;-><init>(Lkotlinx/coroutines/o;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/u;->u(Le8/l;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 105
    move-result-object p0

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 110
    .line 111
    if-ne p0, p2, :cond_3

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    :cond_3
    if-ne p0, v1, :cond_4

    .line 117
    return-object v1

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_1
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 121
    .line 122
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 123
    return-object p0

    .line 124
    .line 125
    .line 126
    :goto_2
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 127
    throw p0

    .line 128
    .line 129
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string p1, "awaitClose() can only be invoked from the producer context"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p0
.end method

.method public static final b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ILkotlinx/coroutines/channels/a;Lkotlinx/coroutines/q0;Le8/l;Le8/p;)Lkotlinx/coroutines/channels/t;
    .locals 2
    .param p0    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/q0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/g;",
            "I",
            "Lkotlinx/coroutines/channels/a;",
            "Lkotlinx/coroutines/q0;",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/channels/r<",
            "-TE;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/channels/t<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p3, v0, v1, v0}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/a;Le8/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlinx/coroutines/j0;->e(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    new-instance p1, Lkotlinx/coroutines/channels/q;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/channels/q;-><init>(Lkotlin/coroutines/g;Lkotlinx/coroutines/channels/d;)V

    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p5}, Lkotlinx/coroutines/j2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1, p4, p1, p6}, Lkotlinx/coroutines/a;->Z0(Lkotlinx/coroutines/q0;Ljava/lang/Object;Le8/p;)V

    .line 24
    return-object p1
.end method

.method public static synthetic c(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ILkotlinx/coroutines/channels/a;Lkotlinx/coroutines/q0;Le8/l;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/channels/t;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x1

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    .line 6
    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 7
    :cond_0
    move-object v1, p1

    .line 8
    .line 9
    and-int/lit8 p1, p7, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    const/4 p2, 0x0

    .line 13
    :cond_1
    move v2, p2

    .line 14
    .line 15
    and-int/lit8 p1, p7, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    sget-object p3, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 20
    :cond_2
    move-object v3, p3

    .line 21
    .line 22
    and-int/lit8 p1, p7, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    sget-object p4, Lkotlinx/coroutines/q0;->DEFAULT:Lkotlinx/coroutines/q0;

    .line 27
    :cond_3
    move-object v4, p4

    .line 28
    .line 29
    and-int/lit8 p1, p7, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    const/4 p5, 0x0

    .line 33
    :cond_4
    move-object v5, p5

    .line 34
    move-object v0, p0

    .line 35
    move-object v6, p6

    .line 36
    .line 37
    .line 38
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/channels/p;->b(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ILkotlinx/coroutines/channels/a;Lkotlinx/coroutines/q0;Le8/l;Le8/p;)Lkotlinx/coroutines/channels/t;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
