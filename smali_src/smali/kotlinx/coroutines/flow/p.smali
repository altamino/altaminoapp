.class final synthetic Lkotlinx/coroutines/flow/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,224:1\n107#2:225\n107#2:227\n1#3:226\n163#4:228\n*S KotlinDebug\n*F\n+ 1 Errors.kt\nkotlinx/coroutines/flow/FlowKt__ErrorsKt\n*L\n58#1:225\n132#1:227\n221#1:228\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/g;Le8/q;)Lkotlinx/coroutines/flow/g;
    .locals 1
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/q;
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
            "Le8/q<",
            "-",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/p$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/p$a;-><init>(Lkotlinx/coroutines/flow/g;Le8/q;)V

    .line 6
    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/coroutines/flow/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
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
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/flow/p$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/p$b;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/p$b;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/p$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/p$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/p$b;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/p$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/p$b;->label:I

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
    iget-object p0, v0, Lkotlinx/coroutines/flow/p$b;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/p0;

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    new-instance p2, Lkotlin/jvm/internal/p0;

    .line 61
    .line 62
    .line 63
    invoke-direct {p2}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 64
    .line 65
    :try_start_1
    new-instance v2, Lkotlinx/coroutines/flow/p$c;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/p$c;-><init>(Lkotlinx/coroutines/flow/h;Lkotlin/jvm/internal/p0;)V

    .line 69
    .line 70
    iput-object p2, v0, Lkotlinx/coroutines/flow/p$b;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    iput v3, v0, Lkotlinx/coroutines/flow/p$b;->label:I

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 76
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .line 78
    if-ne p0, v1, :cond_3

    .line 79
    return-object v1

    .line 80
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 81
    return-object p0

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    move-object p0, p2

    .line 84
    .line 85
    :goto_2
    iget-object p0, p0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Ljava/lang/Throwable;

    .line 88
    .line 89
    .line 90
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/p;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 91
    move-result p2

    .line 92
    .line 93
    if-nez p2, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    .line 100
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/p;->c(Ljava/lang/Throwable;Lkotlin/coroutines/g;)Z

    .line 101
    move-result p2

    .line 102
    .line 103
    if-nez p2, :cond_6

    .line 104
    .line 105
    if-nez p0, :cond_4

    .line 106
    return-object p1

    .line 107
    .line 108
    :cond_4
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    .line 109
    .line 110
    if-eqz p2, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-static {p0, p1}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 114
    throw p0

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-static {p1, p0}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 118
    throw p1

    .line 119
    :cond_6
    throw p1
.end method

.method private static final c(Ljava/lang/Throwable;Lkotlin/coroutines/g;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/b2;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lkotlinx/coroutines/b2;->isCancelled()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/b2;->b0()Ljava/util/concurrent/CancellationException;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/p;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z

    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private static final d(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
