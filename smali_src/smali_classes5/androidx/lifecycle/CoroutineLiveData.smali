.class public final Landroidx/lifecycle/CoroutineLiveData;
.super Landroidx/lifecycle/MediatorLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MediatorLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blockRunner:Landroidx/lifecycle/BlockRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/BlockRunner<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private emittedSource:Landroidx/lifecycle/EmittedSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/g;JLe8/p;)V
    .locals 7
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g;",
            "J",
            "Le8/p<",
            "-",
            "Landroidx/lifecycle/LiveDataScope<",
            "TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 4
    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/b2;

    invoke-static {v0}, Lkotlinx/coroutines/y2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/e1;->c()Lkotlinx/coroutines/n2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/n2;->getImmediate()Lkotlinx/coroutines/n2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    move-result-object v5

    .line 6
    new-instance p1, Landroidx/lifecycle/BlockRunner;

    new-instance v6, Landroidx/lifecycle/CoroutineLiveData$1;

    invoke-direct {v6, p0}, Landroidx/lifecycle/CoroutineLiveData$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;)V

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/BlockRunner;-><init>(Landroidx/lifecycle/CoroutineLiveData;Le8/p;JLkotlinx/coroutines/o0;Le8/a;)V

    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/g;JLe8/p;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide/16 p2, 0x1388

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/lifecycle/CoroutineLiveData;-><init>(Lkotlin/coroutines/g;JLe8/p;)V

    return-void
.end method

.method public static final synthetic s(Landroidx/lifecycle/CoroutineLiveData;Landroidx/lifecycle/BlockRunner;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    .line 3
    return-void
.end method


# virtual methods
.method protected k()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/lifecycle/MediatorLiveData;->k()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/BlockRunner;->h()V

    .line 11
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/lifecycle/MediatorLiveData;->l()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Landroidx/lifecycle/BlockRunner;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/lifecycle/BlockRunner;->g()V

    .line 11
    :cond_0
    return-void
.end method

.method public final t(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    instance-of v0, p1, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

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
    iput v1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

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
    iget-object v0, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Landroidx/lifecycle/CoroutineLiveData;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    iget-object p1, p0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    iput-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput v3, v0, Landroidx/lifecycle/CoroutineLiveData$clearSource$1;->label:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/lifecycle/EmittedSource;->c(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    if-ne p1, v1, :cond_3

    .line 71
    return-object v1

    .line 72
    :cond_3
    move-object v0, p0

    .line 73
    :goto_1
    const/4 p1, 0x0

    .line 74
    .line 75
    iput-object p1, v0, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    .line 76
    .line 77
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 78
    return-object p1
.end method

.method public final u(Landroidx/lifecycle/LiveData;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroidx/lifecycle/LiveData;
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
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/coroutines/g1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

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
    iput v1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;-><init>(Landroidx/lifecycle/CoroutineLiveData;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Landroidx/lifecycle/CoroutineLiveData;

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    .line 58
    :cond_2
    iget-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 61
    .line 62
    iget-object v2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Landroidx/lifecycle/CoroutineLiveData;

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    move-object p2, p1

    .line 69
    move-object p1, v2

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    iput-object p0, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput v4, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Landroidx/lifecycle/CoroutineLiveData;->t(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    if-ne p2, v1, :cond_4

    .line 86
    return-object v1

    .line 87
    :cond_4
    move-object p2, p1

    .line 88
    move-object p1, p0

    .line 89
    .line 90
    :goto_1
    iput-object p1, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$0:Ljava/lang/Object;

    .line 91
    const/4 v2, 0x0

    .line 92
    .line 93
    iput-object v2, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v3, v0, Landroidx/lifecycle/CoroutineLiveData$emitSource$1;->label:I

    .line 96
    .line 97
    .line 98
    invoke-static {p1, p2, v0}, Landroidx/lifecycle/CoroutineLiveDataKt;->a(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    if-ne p2, v1, :cond_5

    .line 102
    return-object v1

    .line 103
    .line 104
    :cond_5
    :goto_2
    check-cast p2, Landroidx/lifecycle/EmittedSource;

    .line 105
    .line 106
    iput-object p2, p1, Landroidx/lifecycle/CoroutineLiveData;->emittedSource:Landroidx/lifecycle/EmittedSource;

    .line 107
    return-object p2
.end method
