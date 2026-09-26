.class public final Lkotlinx/coroutines/flow/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/o;->e(Lkotlinx/coroutines/flow/g;Le8/p;)Lkotlinx/coroutines/flow/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n77#2:114\n78#2,7:116\n329#3:115\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n77#1:115\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Le8/p;

.field final synthetic $this_onStart$inlined:Lkotlinx/coroutines/flow/g;


# direct methods
.method public constructor <init>(Le8/p;Lkotlinx/coroutines/flow/g;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/o$c;->$action$inlined:Le8/p;

    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/flow/o$c;->$this_onStart$inlined:Lkotlinx/coroutines/flow/g;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6
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
            "(",
            "Lkotlinx/coroutines/flow/h<",
            "-TT;>;",
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
    instance-of v0, p2, Lkotlinx/coroutines/flow/o$c$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/o$c$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/o$c$a;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/o$c$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/o$c$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/o$c$a;-><init>(Lkotlinx/coroutines/flow/o$c;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/o$c$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/o$c$a;->label:I

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
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/o$c$a;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Lkotlinx/coroutines/flow/internal/t;

    .line 57
    .line 58
    iget-object v2, v0, Lkotlinx/coroutines/flow/o$c$a;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Lkotlinx/coroutines/flow/h;

    .line 61
    .line 62
    iget-object v4, v0, Lkotlinx/coroutines/flow/o$c$a;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lkotlinx/coroutines/flow/o$c;

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p2

    .line 70
    goto :goto_3

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    new-instance p2, Lkotlinx/coroutines/flow/internal/t;

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, p1, v2}, Lkotlinx/coroutines/flow/internal/t;-><init>(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/g;)V

    .line 83
    .line 84
    :try_start_1
    iget-object v2, p0, Lkotlinx/coroutines/flow/o$c;->$action$inlined:Le8/p;

    .line 85
    .line 86
    iput-object p0, v0, Lkotlinx/coroutines/flow/o$c$a;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object p1, v0, Lkotlinx/coroutines/flow/o$c$a;->L$1:Ljava/lang/Object;

    .line 89
    .line 90
    iput-object p2, v0, Lkotlinx/coroutines/flow/o$c$a;->L$2:Ljava/lang/Object;

    .line 91
    .line 92
    iput v4, v0, Lkotlinx/coroutines/flow/o$c$a;->label:I

    .line 93
    const/4 v4, 0x6

    .line 94
    .line 95
    .line 96
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v2, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    const/4 v4, 0x7

    .line 102
    .line 103
    .line 104
    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    if-ne v2, v1, :cond_4

    .line 107
    return-object v1

    .line 108
    :cond_4
    move-object v4, p0

    .line 109
    move-object v2, p1

    .line 110
    move-object p1, p2

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/t;->releaseIntercepted()V

    .line 114
    .line 115
    iget-object p1, v4, Lkotlinx/coroutines/flow/o$c;->$this_onStart$inlined:Lkotlinx/coroutines/flow/g;

    .line 116
    const/4 p2, 0x0

    .line 117
    .line 118
    iput-object p2, v0, Lkotlinx/coroutines/flow/o$c$a;->L$0:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p2, v0, Lkotlinx/coroutines/flow/o$c$a;->L$1:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p2, v0, Lkotlinx/coroutines/flow/o$c$a;->L$2:Ljava/lang/Object;

    .line 123
    .line 124
    iput v3, v0, Lkotlinx/coroutines/flow/o$c$a;->label:I

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v2, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    if-ne p1, v1, :cond_5

    .line 131
    return-object v1

    .line 132
    .line 133
    :cond_5
    :goto_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 134
    return-object p1

    .line 135
    :catchall_1
    move-exception p1

    .line 136
    move-object v5, p2

    .line 137
    move-object p2, p1

    .line 138
    move-object p1, v5

    .line 139
    .line 140
    .line 141
    :goto_3
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/t;->releaseIntercepted()V

    .line 142
    throw p2
.end method
