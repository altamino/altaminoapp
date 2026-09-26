.class public final Lkotlinx/coroutines/flow/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/o;->d(Lkotlinx/coroutines/flow/g;Le8/q;)Lkotlinx/coroutines/flow/g;
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
    value = "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,113:1\n147#2,13:114\n160#2,6:128\n329#3:127\n*S KotlinDebug\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n159#1:127\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Le8/q;

.field final synthetic $this_onCompletion$inlined:Lkotlinx/coroutines/flow/g;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Le8/q;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/o$b;->$this_onCompletion$inlined:Lkotlinx/coroutines/flow/g;

    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/flow/o$b;->$action$inlined:Le8/q;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
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
    instance-of v0, p2, Lkotlinx/coroutines/flow/o$b$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/o$b$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/o$b$a;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/o$b$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/o$b$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/o$b$a;-><init>(Lkotlinx/coroutines/flow/o$b;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/o$b$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/o$b$a;->label:I

    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    if-eq v2, v5, :cond_3

    .line 41
    .line 42
    if-eq v2, v4, :cond_2

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    iget-object p1, v0, Lkotlinx/coroutines/flow/o$b$a;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lkotlinx/coroutines/flow/internal/t;

    .line 49
    .line 50
    .line 51
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception p2

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    .line 64
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/o$b$a;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 70
    goto :goto_5

    .line 71
    .line 72
    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/flow/o$b$a;->L$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lkotlinx/coroutines/flow/h;

    .line 75
    .line 76
    iget-object v2, v0, Lkotlinx/coroutines/flow/o$b$a;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lkotlinx/coroutines/flow/o$b;

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    goto :goto_4

    .line 85
    .line 86
    .line 87
    :cond_4
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    :try_start_2
    iget-object p2, p0, Lkotlinx/coroutines/flow/o$b;->$this_onCompletion$inlined:Lkotlinx/coroutines/flow/g;

    .line 90
    .line 91
    iput-object p0, v0, Lkotlinx/coroutines/flow/o$b$a;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object p1, v0, Lkotlinx/coroutines/flow/o$b$a;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v5, v0, Lkotlinx/coroutines/flow/o$b$a;->label:I

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/g;->collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 99
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 100
    .line 101
    if-ne p2, v1, :cond_5

    .line 102
    return-object v1

    .line 103
    :cond_5
    move-object v2, p0

    .line 104
    .line 105
    :goto_1
    new-instance p2, Lkotlinx/coroutines/flow/internal/t;

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    .line 112
    invoke-direct {p2, p1, v4}, Lkotlinx/coroutines/flow/internal/t;-><init>(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/g;)V

    .line 113
    .line 114
    :try_start_3
    iget-object p1, v2, Lkotlinx/coroutines/flow/o$b;->$action$inlined:Le8/q;

    .line 115
    .line 116
    iput-object p2, v0, Lkotlinx/coroutines/flow/o$b$a;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v6, v0, Lkotlinx/coroutines/flow/o$b$a;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput v3, v0, Lkotlinx/coroutines/flow/o$b$a;->label:I

    .line 121
    const/4 v2, 0x6

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, p2, v6, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-result-object p1

    .line 129
    const/4 v0, 0x7

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 133
    .line 134
    if-ne p1, v1, :cond_6

    .line 135
    return-object v1

    .line 136
    :cond_6
    move-object p1, p2

    .line 137
    .line 138
    .line 139
    :goto_2
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/t;->releaseIntercepted()V

    .line 140
    .line 141
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 142
    return-object p1

    .line 143
    :catchall_2
    move-exception p1

    .line 144
    move-object v7, p2

    .line 145
    move-object p2, p1

    .line 146
    move-object p1, v7

    .line 147
    .line 148
    .line 149
    :goto_3
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/t;->releaseIntercepted()V

    .line 150
    throw p2

    .line 151
    :catchall_3
    move-exception p1

    .line 152
    move-object v2, p0

    .line 153
    .line 154
    :goto_4
    new-instance p2, Lkotlinx/coroutines/flow/r0;

    .line 155
    .line 156
    .line 157
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/r0;-><init>(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    iget-object v2, v2, Lkotlinx/coroutines/flow/o$b;->$action$inlined:Le8/q;

    .line 160
    .line 161
    iput-object p1, v0, Lkotlinx/coroutines/flow/o$b$a;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v6, v0, Lkotlinx/coroutines/flow/o$b$a;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput v4, v0, Lkotlinx/coroutines/flow/o$b$a;->label:I

    .line 166
    .line 167
    .line 168
    invoke-static {p2, v2, p1, v0}, Lkotlinx/coroutines/flow/o;->a(Lkotlinx/coroutines/flow/h;Le8/q;Ljava/lang/Throwable;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 169
    move-result-object p2

    .line 170
    .line 171
    if-ne p2, v1, :cond_7

    .line 172
    return-object v1

    .line 173
    :cond_7
    :goto_5
    throw p1
.end method
