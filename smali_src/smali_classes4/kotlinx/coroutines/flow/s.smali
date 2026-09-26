.class final synthetic Lkotlinx/coroutines/flow/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReduce.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n+ 2 Limit.kt\nkotlinx/coroutines/flow/FlowKt__LimitKt\n*L\n1#1,172:1\n126#2,15:173\n126#2,15:188\n126#2,15:203\n126#2,15:218\n126#2,15:233\n*S KotlinDebug\n*F\n+ 1 Reduce.kt\nkotlinx/coroutines/flow/FlowKt__ReduceKt\n*L\n72#1:173,15\n92#1:188,15\n106#1:203,15\n124#1:218,15\n137#1:233,15\n*E\n"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
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
            "Le8/p<",
            "-TT;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
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
    instance-of v0, p2, Lkotlinx/coroutines/flow/s$d;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/s$d;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/s$d;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/s$d;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/s$d;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/s$d;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/s$d;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/s$d;->label:I

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
    iget-object p0, v0, Lkotlinx/coroutines/flow/s$d;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlinx/coroutines/flow/s$b;

    .line 42
    .line 43
    iget-object p1, v0, Lkotlinx/coroutines/flow/s$d;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lkotlin/jvm/internal/p0;

    .line 46
    .line 47
    iget-object v0, v0, Lkotlinx/coroutines/flow/s$d;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Le8/p;

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p2

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    new-instance p2, Lkotlin/jvm/internal/p0;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 72
    .line 73
    sget-object v2, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 74
    .line 75
    iput-object v2, p2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 76
    .line 77
    new-instance v2, Lkotlinx/coroutines/flow/s$b;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/s$b;-><init>(Le8/p;Lkotlin/jvm/internal/p0;)V

    .line 81
    .line 82
    :try_start_1
    iput-object p1, v0, Lkotlinx/coroutines/flow/s$d;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p2, v0, Lkotlinx/coroutines/flow/s$d;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v2, v0, Lkotlinx/coroutines/flow/s$d;->L$2:Ljava/lang/Object;

    .line 87
    .line 88
    iput v3, v0, Lkotlinx/coroutines/flow/s$d;->label:I

    .line 89
    .line 90
    .line 91
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 92
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    if-ne p0, v1, :cond_3

    .line 95
    return-object v1

    .line 96
    :cond_3
    move-object v0, p1

    .line 97
    move-object p1, p2

    .line 98
    goto :goto_2

    .line 99
    :catch_1
    move-exception p0

    .line 100
    move-object v0, p1

    .line 101
    move-object p1, p2

    .line 102
    move-object p2, p0

    .line 103
    move-object p0, v2

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-static {p2, p0}, Lkotlinx/coroutines/flow/internal/o;->a(Lkotlinx/coroutines/flow/internal/a;Lkotlinx/coroutines/flow/h;)V

    .line 107
    .line 108
    :goto_2
    iget-object p0, p1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 109
    .line 110
    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 111
    .line 112
    if-eq p0, p1, :cond_4

    .line 113
    return-object p0

    .line 114
    .line 115
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    const-string p2, "Expected at least one element matching the predicate "

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p0
.end method

.method public static final b(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
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
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/flow/s$c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/s$c;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/s$c;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/s$c;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/s$c;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/s$c;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/s$c;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/s$c;->label:I

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
    iget-object p0, v0, Lkotlinx/coroutines/flow/s$c;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlinx/coroutines/flow/s$a;

    .line 42
    .line 43
    iget-object v0, v0, Lkotlinx/coroutines/flow/s$c;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/p0;

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    new-instance p1, Lkotlin/jvm/internal/p0;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 68
    .line 69
    sget-object v2, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 70
    .line 71
    iput-object v2, p1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 72
    .line 73
    new-instance v2, Lkotlinx/coroutines/flow/s$a;

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, p1}, Lkotlinx/coroutines/flow/s$a;-><init>(Lkotlin/jvm/internal/p0;)V

    .line 77
    .line 78
    :try_start_1
    iput-object p1, v0, Lkotlinx/coroutines/flow/s$c;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object v2, v0, Lkotlinx/coroutines/flow/s$c;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    iput v3, v0, Lkotlinx/coroutines/flow/s$c;->label:I

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 86
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    if-ne p0, v1, :cond_3

    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    goto :goto_2

    .line 92
    :catch_1
    move-exception p0

    .line 93
    move-object v0, p1

    .line 94
    move-object p1, p0

    .line 95
    move-object p0, v2

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/internal/o;->a(Lkotlinx/coroutines/flow/internal/a;Lkotlinx/coroutines/flow/h;)V

    .line 99
    .line 100
    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 101
    .line 102
    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 103
    .line 104
    if-eq p0, p1, :cond_4

    .line 105
    return-object p0

    .line 106
    .line 107
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 108
    .line 109
    const-string p1, "Expected at least one element"

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0
.end method

.method public static final c(Lkotlinx/coroutines/flow/g;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
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
            "Le8/p<",
            "-TT;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
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
    instance-of v0, p2, Lkotlinx/coroutines/flow/s$h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/s$h;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/s$h;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/s$h;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/s$h;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Lkotlinx/coroutines/flow/s$h;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/s$h;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/s$h;->label:I

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
    iget-object p0, v0, Lkotlinx/coroutines/flow/s$h;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlinx/coroutines/flow/s$f;

    .line 42
    .line 43
    iget-object p1, v0, Lkotlinx/coroutines/flow/s$h;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lkotlin/jvm/internal/p0;

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception p2

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    new-instance p2, Lkotlin/jvm/internal/p0;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 68
    .line 69
    new-instance v2, Lkotlinx/coroutines/flow/s$f;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/s$f;-><init>(Le8/p;Lkotlin/jvm/internal/p0;)V

    .line 73
    .line 74
    :try_start_1
    iput-object p2, v0, Lkotlinx/coroutines/flow/s$h;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v2, v0, Lkotlinx/coroutines/flow/s$h;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    iput v3, v0, Lkotlinx/coroutines/flow/s$h;->label:I

    .line 79
    .line 80
    .line 81
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 82
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    if-ne p0, v1, :cond_3

    .line 85
    return-object v1

    .line 86
    :cond_3
    move-object p1, p2

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception p0

    .line 89
    move-object p1, p2

    .line 90
    move-object p2, p0

    .line 91
    move-object p0, v2

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-static {p2, p0}, Lkotlinx/coroutines/flow/internal/o;->a(Lkotlinx/coroutines/flow/internal/a;Lkotlinx/coroutines/flow/h;)V

    .line 95
    .line 96
    :goto_2
    iget-object p0, p1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 97
    return-object p0
.end method

.method public static final d(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
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
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/flow/s$g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/s$g;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/s$g;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/s$g;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/s$g;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/s$g;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/s$g;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/s$g;->label:I

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
    iget-object p0, v0, Lkotlinx/coroutines/flow/s$g;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlinx/coroutines/flow/s$e;

    .line 42
    .line 43
    iget-object v0, v0, Lkotlinx/coroutines/flow/s$g;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/p0;

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    new-instance p1, Lkotlin/jvm/internal/p0;

    .line 65
    .line 66
    .line 67
    invoke-direct {p1}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 68
    .line 69
    new-instance v2, Lkotlinx/coroutines/flow/s$e;

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, p1}, Lkotlinx/coroutines/flow/s$e;-><init>(Lkotlin/jvm/internal/p0;)V

    .line 73
    .line 74
    :try_start_1
    iput-object p1, v0, Lkotlinx/coroutines/flow/s$g;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput-object v2, v0, Lkotlinx/coroutines/flow/s$g;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    iput v3, v0, Lkotlinx/coroutines/flow/s$g;->label:I

    .line 79
    .line 80
    .line 81
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 82
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/a; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    if-ne p0, v1, :cond_3

    .line 85
    return-object v1

    .line 86
    :cond_3
    move-object v0, p1

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception p0

    .line 89
    move-object v0, p1

    .line 90
    move-object p1, p0

    .line 91
    move-object p0, v2

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/internal/o;->a(Lkotlinx/coroutines/flow/internal/a;Lkotlinx/coroutines/flow/h;)V

    .line 95
    .line 96
    :goto_2
    iget-object p0, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 97
    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lkotlinx/coroutines/flow/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
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
            "Lkotlin/coroutines/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/flow/s$i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/s$i;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/s$i;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/s$i;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/s$i;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/s$i;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/s$i;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/s$i;->label:I

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
    iget-object p0, v0, Lkotlinx/coroutines/flow/s$i;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/p0;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    new-instance p1, Lkotlin/jvm/internal/p0;

    .line 59
    .line 60
    .line 61
    invoke-direct {p1}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 62
    .line 63
    sget-object v2, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 64
    .line 65
    iput-object v2, p1, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v2, Lkotlinx/coroutines/flow/s$j;

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, p1}, Lkotlinx/coroutines/flow/s$j;-><init>(Lkotlin/jvm/internal/p0;)V

    .line 71
    .line 72
    iput-object p1, v0, Lkotlinx/coroutines/flow/s$i;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    iput v3, v0, Lkotlinx/coroutines/flow/s$i;->label:I

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    if-ne p0, v1, :cond_3

    .line 81
    return-object v1

    .line 82
    :cond_3
    move-object p0, p1

    .line 83
    .line 84
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 85
    .line 86
    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 87
    .line 88
    if-eq p0, p1, :cond_4

    .line 89
    return-object p0

    .line 90
    .line 91
    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 92
    .line 93
    const-string p1, "Flow is empty"

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
.end method
