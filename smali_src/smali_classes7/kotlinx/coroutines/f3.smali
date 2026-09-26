.class public final Lkotlinx/coroutines/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(JLkotlinx/coroutines/x0;Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/d3;
    .locals 2
    .param p2    # Lkotlinx/coroutines/x0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/z0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Lkotlinx/coroutines/z0;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    sget-object v0, Lk8/b;->Companion:Lk8/b$a;

    .line 13
    .line 14
    sget-object v0, Lk8/e;->MILLISECONDS:Lk8/e;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1, v0}, Lk8/d;->t(JLk8/e;)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/z0;->p(J)Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v0, "Timed out waiting for "

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p0, " ms"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    :cond_2
    new-instance p0, Lkotlinx/coroutines/d3;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/d3;-><init>(Ljava/lang/String;Lkotlinx/coroutines/b2;)V

    .line 52
    return-object p0
.end method

.method private static final b(Lkotlinx/coroutines/e3;Le8/p;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "T::TU;>(",
            "Lkotlinx/coroutines/e3<",
            "TU;-TT;>;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/e0;->uCont:Lkotlin/coroutines/d;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlinx/coroutines/y0;->b(Lkotlin/coroutines/g;)Lkotlinx/coroutines/x0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-wide v1, p0, Lkotlinx/coroutines/e3;->time:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/g;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1, v2, p0, v3}, Lkotlinx/coroutines/x0;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lkotlinx/coroutines/f2;->i(Lkotlinx/coroutines/b2;Lkotlinx/coroutines/g1;)Lkotlinx/coroutines/g1;

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p0, p1}, Ll8/b;->c(Lkotlinx/coroutines/internal/e0;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final c(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Lkotlinx/coroutines/e3;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p3}, Lkotlinx/coroutines/e3;-><init>(JLkotlin/coroutines/d;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p2}, Lkotlinx/coroutines/f3;->b(Lkotlinx/coroutines/e3;Le8/p;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 25
    :cond_0
    return-object p0

    .line 26
    .line 27
    :cond_1
    new-instance p0, Lkotlinx/coroutines/d3;

    .line 28
    .line 29
    const-string p1, "Timed out immediately"

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lkotlinx/coroutines/d3;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method public static final d(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/y0;->c(J)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/f3;->c(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final e(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lkotlinx/coroutines/f3$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/f3$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/f3$a;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/f3$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/f3$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p3}, Lkotlinx/coroutines/f3$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/f3$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/f3$a;->label:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p0, v0, Lkotlinx/coroutines/f3$a;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlin/jvm/internal/p0;

    .line 43
    .line 44
    iget-object p1, v0, Lkotlinx/coroutines/f3$a;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Le8/p;

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/d3; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_3

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
    invoke-static {p3}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    const-wide/16 v5, 0x0

    .line 66
    .line 67
    cmp-long p3, p0, v5

    .line 68
    .line 69
    if-gtz p3, :cond_3

    .line 70
    return-object v3

    .line 71
    .line 72
    :cond_3
    new-instance p3, Lkotlin/jvm/internal/p0;

    .line 73
    .line 74
    .line 75
    invoke-direct {p3}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 76
    .line 77
    :try_start_1
    iput-object p2, v0, Lkotlinx/coroutines/f3$a;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p3, v0, Lkotlinx/coroutines/f3$a;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    iput-wide p0, v0, Lkotlinx/coroutines/f3$a;->J$0:J

    .line 82
    .line 83
    iput v4, v0, Lkotlinx/coroutines/f3$a;->label:I

    .line 84
    .line 85
    new-instance v2, Lkotlinx/coroutines/e3;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2, p0, p1, v0}, Lkotlinx/coroutines/e3;-><init>(JLkotlin/coroutines/d;)V

    .line 89
    .line 90
    iput-object v2, p3, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-static {v2, p2}, Lkotlinx/coroutines/f3;->b(Lkotlinx/coroutines/e3;Le8/p;)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    if-ne p0, p1, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V
    :try_end_1
    .catch Lkotlinx/coroutines/d3; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    goto :goto_1

    .line 105
    :catch_1
    move-exception p1

    .line 106
    move-object p0, p3

    .line 107
    goto :goto_3

    .line 108
    .line 109
    :cond_4
    :goto_1
    if-ne p0, v1, :cond_5

    .line 110
    return-object v1

    .line 111
    :cond_5
    move-object p3, p0

    .line 112
    :goto_2
    return-object p3

    .line 113
    .line 114
    :goto_3
    iget-object p2, p1, Lkotlinx/coroutines/d3;->coroutine:Lkotlinx/coroutines/b2;

    .line 115
    .line 116
    iget-object p0, p0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 117
    .line 118
    if-ne p2, p0, :cond_6

    .line 119
    return-object v3

    .line 120
    :cond_6
    throw p1
.end method

.method public static final f(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/o0;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/y0;->c(J)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/f3;->e(JLe8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
