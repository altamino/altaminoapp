.class public final Lkotlinx/coroutines/channels/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(ILkotlinx/coroutines/channels/a;Le8/l;)Lkotlinx/coroutines/channels/d;
    .locals 2
    .param p1    # Lkotlinx/coroutines/channels/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlinx/coroutines/channels/a;",
            "Le8/l<",
            "-TE;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/channels/d<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, -0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eq p0, v0, :cond_6

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    .line 12
    const v0, 0x7fffffff

    .line 13
    .line 14
    if-eq p0, v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    new-instance p1, Lkotlinx/coroutines/channels/b;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/channels/b;-><init>(ILe8/l;)V

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/o;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/channels/o;-><init>(ILkotlinx/coroutines/channels/a;Le8/l;)V

    .line 30
    move-object p1, v0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    new-instance p1, Lkotlinx/coroutines/channels/b;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, v0, p2}, Lkotlinx/coroutines/channels/b;-><init>(ILe8/l;)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    sget-object p0, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 40
    .line 41
    if-ne p1, p0, :cond_3

    .line 42
    .line 43
    new-instance p0, Lkotlinx/coroutines/channels/b;

    .line 44
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/b;-><init>(ILe8/l;)V

    .line 48
    :goto_0
    move-object p1, p0

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_3
    new-instance p0, Lkotlinx/coroutines/channels/o;

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v1, p1, p2}, Lkotlinx/coroutines/channels/o;-><init>(ILkotlinx/coroutines/channels/a;Le8/l;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    sget-object p0, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 58
    .line 59
    if-ne p1, p0, :cond_5

    .line 60
    .line 61
    new-instance p1, Lkotlinx/coroutines/channels/o;

    .line 62
    .line 63
    sget-object p0, Lkotlinx/coroutines/channels/a;->DROP_OLDEST:Lkotlinx/coroutines/channels/a;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v1, p0, p2}, Lkotlinx/coroutines/channels/o;-><init>(ILkotlinx/coroutines/channels/a;Le8/l;)V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p1, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0

    .line 80
    .line 81
    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 82
    .line 83
    if-ne p1, p0, :cond_7

    .line 84
    .line 85
    new-instance p0, Lkotlinx/coroutines/channels/b;

    .line 86
    .line 87
    sget-object p1, Lkotlinx/coroutines/channels/d;->Factory:Lkotlinx/coroutines/channels/d$a;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/d$a;->a()I

    .line 91
    move-result p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/b;-><init>(ILe8/l;)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_7
    new-instance p0, Lkotlinx/coroutines/channels/o;

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v1, p1, p2}, Lkotlinx/coroutines/channels/o;-><init>(ILkotlinx/coroutines/channels/a;Le8/l;)V

    .line 101
    goto :goto_0

    .line 102
    :goto_1
    return-object p1
.end method

.method public static synthetic b(ILkotlinx/coroutines/channels/a;Le8/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p3, 0x1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p3, 0x2

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    sget-object p1, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p3, p3, 0x4

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    :cond_2
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/g;->a(ILkotlinx/coroutines/channels/a;Le8/l;)Lkotlinx/coroutines/channels/d;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method
