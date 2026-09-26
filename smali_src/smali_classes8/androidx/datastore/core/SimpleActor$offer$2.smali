.class final Landroidx/datastore/core/SimpleActor$offer$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/SimpleActor;->e(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.datastore.core.SimpleActor$offer$2"
    f = "SimpleActor.kt"
    l = {
        0x7a,
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/datastore/core/SimpleActor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/SimpleActor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/datastore/core/SimpleActor;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/SimpleActor<",
            "TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/datastore/core/SimpleActor$offer$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Landroidx/datastore/core/SimpleActor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    iget-object v0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Landroidx/datastore/core/SimpleActor;

    invoke-direct {p1, v0, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Landroidx/datastore/core/SimpleActor;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/SimpleActor$offer$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 18
    move-object p1, p0

    .line 19
    goto :goto_2

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Le8/p;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 35
    move-object v4, v1

    .line 36
    move-object v1, v0

    .line 37
    move-object v0, p0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    iget-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Landroidx/datastore/core/SimpleActor;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroidx/datastore/core/SimpleActor;->c(Landroidx/datastore/core/SimpleActor;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 51
    move-result p1

    .line 52
    .line 53
    if-lez p1, :cond_3

    .line 54
    move p1, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p1, 0x0

    .line 57
    .line 58
    :goto_0
    if-eqz p1, :cond_7

    .line 59
    move-object p1, p0

    .line 60
    .line 61
    :cond_4
    iget-object v1, p1, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Landroidx/datastore/core/SimpleActor;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Landroidx/datastore/core/SimpleActor;->d(Landroidx/datastore/core/SimpleActor;)Lkotlinx/coroutines/o0;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lkotlinx/coroutines/p0;->g(Lkotlinx/coroutines/o0;)V

    .line 69
    .line 70
    iget-object v1, p1, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Landroidx/datastore/core/SimpleActor;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroidx/datastore/core/SimpleActor;->a(Landroidx/datastore/core/SimpleActor;)Le8/p;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    iget-object v4, p1, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Landroidx/datastore/core/SimpleActor;

    .line 77
    .line 78
    .line 79
    invoke-static {v4}, Landroidx/datastore/core/SimpleActor;->b(Landroidx/datastore/core/SimpleActor;)Lkotlinx/coroutines/channels/d;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    iput-object v1, p1, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput v3, p1, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 85
    .line 86
    .line 87
    invoke-interface {v4, p1}, Lkotlinx/coroutines/channels/t;->v(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    if-ne v4, v0, :cond_5

    .line 91
    return-object v0

    .line 92
    :cond_5
    move-object v6, v0

    .line 93
    move-object v0, p1

    .line 94
    move-object p1, v4

    .line 95
    move-object v4, v1

    .line 96
    move-object v1, v6

    .line 97
    :goto_1
    const/4 v5, 0x0

    .line 98
    .line 99
    iput-object v5, v0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    iput v2, v0, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 102
    .line 103
    .line 104
    invoke-interface {v4, p1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    if-ne p1, v1, :cond_6

    .line 108
    return-object v1

    .line 109
    :cond_6
    move-object p1, v0

    .line 110
    move-object v0, v1

    .line 111
    .line 112
    :goto_2
    iget-object v1, p1, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Landroidx/datastore/core/SimpleActor;

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Landroidx/datastore/core/SimpleActor;->c(Landroidx/datastore/core/SimpleActor;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 120
    move-result v1

    .line 121
    .line 122
    if-nez v1, :cond_4

    .line 123
    .line 124
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 125
    return-object p1

    .line 126
    .line 127
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    const-string v0, "Check failed."

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p1
.end method
