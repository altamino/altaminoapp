.class public final Landroidx/activity/FullyDrawnReporterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/activity/FullyDrawnReporter;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p0    # Landroidx/activity/FullyDrawnReporter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
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
            "Landroidx/activity/FullyDrawnReporter;",
            "Le8/l<",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
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
    instance-of v0, p2, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

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
    iput v1, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p2}, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

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
    iget-object p0, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroidx/activity/FullyDrawnReporter;

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
    .line 61
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->c()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->e()Z

    .line 65
    move-result p2

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 70
    return-object p0

    .line 71
    .line 72
    :cond_3
    :try_start_1
    iput-object p0, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    iput v3, v0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    if-ne p1, v1, :cond_4

    .line 81
    return-object v1

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->g()V

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lkotlin/jvm/internal/r;->a(I)V

    .line 91
    .line 92
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 93
    return-object p0

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-static {v3}, Lkotlin/jvm/internal/r;->b(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/activity/FullyDrawnReporter;->g()V

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Lkotlin/jvm/internal/r;->a(I)V

    .line 103
    throw p1
.end method
