.class final Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/p<",
        "Lkotlinx/coroutines/o0;",
        "Lkotlin/coroutines/d<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternalMutatorMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalMutatorMutex.kt\nandroidx/compose/animation/core/MutatorMutex$mutateWith$2\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,165:1\n107#2,10:166\n*S KotlinDebug\n*F\n+ 1 InternalMutatorMutex.kt\nandroidx/compose/animation/core/MutatorMutex$mutateWith$2\n*L\n156#1:166,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.animation.core.MutatorMutex$mutateWith$2"
    f = "InternalMutatorMutex.kt"
    l = {
        0xab,
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $priority:Landroidx/compose/animation/core/MutatePriority;

.field final synthetic $receiver:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/animation/core/MutatorMutex;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/MutatePriority;Landroidx/compose/animation/core/MutatorMutex;Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/MutatePriority;",
            "Landroidx/compose/animation/core/MutatorMutex;",
            "Le8/p<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$priority:Landroidx/compose/animation/core/MutatePriority;

    iput-object p2, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    iput-object p3, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$block:Le8/p;

    iput-object p4, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 7
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

    new-instance v6, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;

    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$priority:Landroidx/compose/animation/core/MutatePriority;

    iget-object v2, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    iget-object v3, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$block:Le8/p;

    iget-object v4, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;-><init>(Landroidx/compose/animation/core/MutatePriority;Landroidx/compose/animation/core/MutatorMutex;Le8/p;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    iput-object p1, v6, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->invoke(Lkotlinx/coroutines/o0;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;

    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {p1, p2}, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->label:I

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/animation/core/MutatorMutex;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lkotlinx/coroutines/sync/a;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroidx/compose/animation/core/MutatorMutex;

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v5, Le8/p;

    .line 54
    .line 55
    iget-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v6, Lkotlinx/coroutines/sync/a;

    .line 58
    .line 59
    iget-object v7, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 65
    move-object p1, v6

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lkotlinx/coroutines/o0;

    .line 74
    .line 75
    new-instance v1, Landroidx/compose/animation/core/MutatorMutex$Mutator;

    .line 76
    .line 77
    iget-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$priority:Landroidx/compose/animation/core/MutatePriority;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    sget-object v6, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v6}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 91
    .line 92
    check-cast p1, Lkotlinx/coroutines/b2;

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v5, p1}, Landroidx/compose/animation/core/MutatorMutex$Mutator;-><init>(Landroidx/compose/animation/core/MutatePriority;Lkotlinx/coroutines/b2;)V

    .line 96
    .line 97
    iget-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v1}, Landroidx/compose/animation/core/MutatorMutex;->c(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatorMutex$Mutator;)V

    .line 101
    .line 102
    iget-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Landroidx/compose/animation/core/MutatorMutex;->b(Landroidx/compose/animation/core/MutatorMutex;)Lkotlinx/coroutines/sync/a;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iget-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$block:Le8/p;

    .line 109
    .line 110
    iget-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->$receiver:Ljava/lang/Object;

    .line 111
    .line 112
    iget-object v7, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->this$0:Landroidx/compose/animation/core/MutatorMutex;

    .line 113
    .line 114
    iput-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v5, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v6, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v7, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 123
    .line 124
    iput v3, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->label:I

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/sync/a;->d(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    if-ne v3, v0, :cond_3

    .line 131
    return-object v0

    .line 132
    :cond_3
    move-object v3, v6

    .line 133
    move-object v8, v7

    .line 134
    move-object v7, v1

    .line 135
    move-object v1, v8

    .line 136
    .line 137
    :goto_0
    :try_start_1
    iput-object v7, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$0:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$1:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v1, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$2:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v4, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$3:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v4, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->L$4:Ljava/lang/Object;

    .line 146
    .line 147
    iput v2, p0, Landroidx/compose/animation/core/MutatorMutex$mutateWith$2;->label:I

    .line 148
    .line 149
    .line 150
    invoke-interface {v5, v3, p0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 152
    .line 153
    if-ne v2, v0, :cond_4

    .line 154
    return-object v0

    .line 155
    :cond_4
    move-object v0, v1

    .line 156
    move-object v1, p1

    .line 157
    move-object p1, v2

    .line 158
    move-object v2, v7

    .line 159
    .line 160
    .line 161
    :goto_1
    :try_start_2
    invoke-static {v0}, Landroidx/compose/animation/core/MutatorMutex;->a(Landroidx/compose/animation/core/MutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v2, v4}, Landroidx/compose/animation/core/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    .line 167
    .line 168
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 169
    return-object p1

    .line 170
    :catchall_1
    move-exception p1

    .line 171
    goto :goto_3

    .line 172
    :catchall_2
    move-exception v0

    .line 173
    move-object v2, v7

    .line 174
    move-object v8, v1

    .line 175
    move-object v1, p1

    .line 176
    move-object p1, v0

    .line 177
    move-object v0, v8

    .line 178
    .line 179
    .line 180
    :goto_2
    :try_start_3
    invoke-static {v0}, Landroidx/compose/animation/core/MutatorMutex;->a(Landroidx/compose/animation/core/MutatorMutex;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v2, v4}, Landroidx/compose/animation/core/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    .line 188
    :goto_3
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/a;->e(Ljava/lang/Object;)V

    .line 189
    throw p1
.end method
