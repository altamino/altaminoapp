.class public final Lio/ktor/client/call/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/ktor/client/call/b;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .param p0    # Lio/ktor/client/call/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/call/b;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lio/ktor/client/call/d$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lio/ktor/client/call/d$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/client/call/d$a;->label:I

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
    iput v1, v0, Lio/ktor/client/call/d$a;->label:I

    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    new-instance v0, Lio/ktor/client/call/d$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Lio/ktor/client/call/d$a;-><init>(Lkotlin/coroutines/d;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :goto_1
    iget-object p1, v4, Lio/ktor/client/call/d$a;->result:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget v1, v4, Lio/ktor/client/call/d$a;->label:I

    .line 35
    const/4 v7, 0x1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    if-ne v1, v7, :cond_1

    .line 40
    .line 41
    iget-object p0, v4, Lio/ktor/client/call/d$a;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lio/ktor/client/call/b;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

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
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lio/ktor/client/statement/c;->a()Lio/ktor/utils/io/g;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const-wide/16 v2, 0x0

    .line 69
    const/4 v5, 0x1

    .line 70
    const/4 v6, 0x0

    .line 71
    .line 72
    iput-object p0, v4, Lio/ktor/client/call/d$a;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    iput v7, v4, Lio/ktor/client/call/d$a;->label:I

    .line 75
    .line 76
    .line 77
    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/g$b;->a(Lio/ktor/utils/io/g;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    if-ne p1, v0, :cond_3

    .line 81
    return-object v0

    .line 82
    .line 83
    :cond_3
    :goto_2
    check-cast p1, Lr7/j;

    .line 84
    const/4 v0, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0, v7, v1}, Lr7/s;->c(Lr7/j;IILjava/lang/Object;)[B

    .line 89
    move-result-object p1

    .line 90
    .line 91
    new-instance v0, Lio/ktor/client/call/e;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lio/ktor/client/call/b;->c()Lio/ktor/client/a;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v1, v2, p0, p1}, Lio/ktor/client/call/e;-><init>(Lio/ktor/client/a;Li7/c;Lio/ktor/client/statement/c;[B)V

    .line 107
    return-object v0
.end method
