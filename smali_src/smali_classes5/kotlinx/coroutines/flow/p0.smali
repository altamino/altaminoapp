.class public final Lkotlinx/coroutines/flow/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/h<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,426:1\n329#2:427\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n417#1:427\n*E\n"
.end annotation


# instance fields
.field private final action:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final collector:Lkotlinx/coroutines/flow/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/h<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/h;Le8/p;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/flow/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
            "Le8/p<",
            "-",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/flow/p0;->collector:Lkotlinx/coroutines/flow/h;

    .line 6
    .line 7
    iput-object p2, p0, Lkotlinx/coroutines/flow/p0;->action:Le8/p;

    .line 8
    return-void
.end method


# virtual methods
.method public final e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
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
    instance-of v0, p1, Lkotlinx/coroutines/flow/p0$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/p0$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/p0$a;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/p0$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/p0$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/p0$a;-><init>(Lkotlinx/coroutines/flow/p0;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/flow/p0$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/p0$a;->label:I

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
    .line 43
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/flow/p0$a;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v2, Lkotlinx/coroutines/flow/internal/t;

    .line 57
    .line 58
    iget-object v4, v0, Lkotlinx/coroutines/flow/p0$a;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v4, Lkotlinx/coroutines/flow/p0;

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    new-instance v2, Lkotlinx/coroutines/flow/internal/t;

    .line 72
    .line 73
    iget-object p1, p0, Lkotlinx/coroutines/flow/p0;->collector:Lkotlinx/coroutines/flow/h;

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p1, v5}, Lkotlinx/coroutines/flow/internal/t;-><init>(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/g;)V

    .line 81
    .line 82
    :try_start_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/p0;->action:Le8/p;

    .line 83
    .line 84
    iput-object p0, v0, Lkotlinx/coroutines/flow/p0$a;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v2, v0, Lkotlinx/coroutines/flow/p0$a;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    iput v4, v0, Lkotlinx/coroutines/flow/p0$a;->label:I

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    if-ne p1, v1, :cond_4

    .line 95
    return-object v1

    .line 96
    :cond_4
    move-object v4, p0

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/t;->releaseIntercepted()V

    .line 100
    .line 101
    iget-object p1, v4, Lkotlinx/coroutines/flow/p0;->collector:Lkotlinx/coroutines/flow/h;

    .line 102
    .line 103
    instance-of v2, p1, Lkotlinx/coroutines/flow/p0;

    .line 104
    .line 105
    if-eqz v2, :cond_6

    .line 106
    .line 107
    check-cast p1, Lkotlinx/coroutines/flow/p0;

    .line 108
    const/4 v2, 0x0

    .line 109
    .line 110
    iput-object v2, v0, Lkotlinx/coroutines/flow/p0$a;->L$0:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v2, v0, Lkotlinx/coroutines/flow/p0$a;->L$1:Ljava/lang/Object;

    .line 113
    .line 114
    iput v3, v0, Lkotlinx/coroutines/flow/p0$a;->label:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/p0;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    if-ne p1, v1, :cond_5

    .line 121
    return-object v1

    .line 122
    .line 123
    :cond_5
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 124
    return-object p1

    .line 125
    .line 126
    :cond_6
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 127
    return-object p1

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/t;->releaseIntercepted()V

    .line 131
    throw p1
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/p0;->collector:Lkotlinx/coroutines/flow/h;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/h;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
