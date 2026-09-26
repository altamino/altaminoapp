.class final Lkotlinx/coroutines/flow/m0;
.super Lkotlinx/coroutines/flow/internal/b;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/x;
.implements Lkotlinx/coroutines/flow/c;
.implements Lkotlinx/coroutines/flow/internal/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/flow/internal/b<",
        "Lkotlinx/coroutines/flow/o0;",
        ">;",
        "Lkotlinx/coroutines/flow/x<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/c<",
        "TT;>;",
        "Lkotlinx/coroutines/flow/internal/p<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,428:1\n18#2:429\n18#2:443\n28#3,4:430\n28#3,4:437\n20#4:434\n20#4:441\n13579#5,2:435\n329#6:442\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n315#1:429\n396#1:443\n324#1:430,4\n352#1:437,4\n324#1:434\n352#1:441\n348#1:435,2\n385#1:442\n*E\n"
.end annotation


# static fields
.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lkotlinx/coroutines/flow/m0;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/flow/m0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/b;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lkotlinx/coroutines/flow/m0;->_state:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method private final p(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/flow/m0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    monitor-exit p0

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_3

    .line 21
    .line 22
    .line 23
    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    monitor-exit p0

    .line 29
    return v1

    .line 30
    .line 31
    .line 32
    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    iget p1, p0, Lkotlinx/coroutines/flow/m0;->sequence:I

    .line 35
    .line 36
    and-int/lit8 p2, p1, 0x1

    .line 37
    .line 38
    if-nez p2, :cond_5

    .line 39
    add-int/2addr p1, v1

    .line 40
    .line 41
    iput p1, p0, Lkotlinx/coroutines/flow/m0;->sequence:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/b;->m()[Lkotlinx/coroutines/flow/internal/d;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    .line 50
    :goto_0
    check-cast p2, [Lkotlinx/coroutines/flow/o0;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    array-length v0, p2

    .line 54
    move v3, v2

    .line 55
    .line 56
    :goto_1
    if-ge v3, v0, :cond_3

    .line 57
    .line 58
    aget-object v4, p2, v3

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/o0;->g()V

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    monitor-enter p0

    .line 68
    .line 69
    :try_start_3
    iget p2, p0, Lkotlinx/coroutines/flow/m0;->sequence:I

    .line 70
    .line 71
    if-ne p2, p1, :cond_4

    .line 72
    add-int/2addr p1, v1

    .line 73
    .line 74
    iput p1, p0, Lkotlinx/coroutines/flow/m0;->sequence:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    monitor-exit p0

    .line 76
    return v1

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/b;->m()[Lkotlinx/coroutines/flow/internal/d;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    monitor-exit p0

    .line 86
    move v5, p2

    .line 87
    move-object p2, p1

    .line 88
    move p1, v5

    .line 89
    goto :goto_0

    .line 90
    :goto_2
    monitor-exit p0

    .line 91
    throw p1

    .line 92
    .line 93
    :cond_5
    add-int/lit8 p1, p1, 0x2

    .line 94
    .line 95
    :try_start_5
    iput p1, p0, Lkotlinx/coroutines/flow/m0;->sequence:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    monitor-exit p0

    .line 97
    return v1

    .line 98
    :goto_3
    monitor-exit p0

    .line 99
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 5
    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    sget-object p2, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/flow/m0;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    const-string v1, "MutableStateFlow.resetReplayCache is not supported"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/m0;->setValue(Ljava/lang/Object;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public collect(Lkotlinx/coroutines/flow/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
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
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/flow/m0$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/m0$a;

    .line 8
    .line 9
    iget v1, v0, Lkotlinx/coroutines/flow/m0$a;->label:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/m0$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/m0$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/m0$a;-><init>(Lkotlinx/coroutines/flow/m0;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/m0$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/m0$a;->label:I

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    if-eq v2, v6, :cond_3

    .line 41
    .line 42
    if-eq v2, v5, :cond_2

    .line 43
    .line 44
    if-ne v2, v4, :cond_1

    .line 45
    .line 46
    iget-object p1, v0, Lkotlinx/coroutines/flow/m0$a;->L$4:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v2, v0, Lkotlinx/coroutines/flow/m0$a;->L$3:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lkotlinx/coroutines/b2;

    .line 51
    .line 52
    iget-object v6, v0, Lkotlinx/coroutines/flow/m0$a;->L$2:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v6, Lkotlinx/coroutines/flow/o0;

    .line 55
    .line 56
    iget-object v7, v0, Lkotlinx/coroutines/flow/m0$a;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, Lkotlinx/coroutines/flow/h;

    .line 59
    .line 60
    iget-object v8, v0, Lkotlinx/coroutines/flow/m0$a;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v8, Lkotlinx/coroutines/flow/m0;

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p1

    .line 79
    .line 80
    :cond_2
    iget-object p1, v0, Lkotlinx/coroutines/flow/m0$a;->L$4:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v2, v0, Lkotlinx/coroutines/flow/m0$a;->L$3:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lkotlinx/coroutines/b2;

    .line 85
    .line 86
    iget-object v6, v0, Lkotlinx/coroutines/flow/m0$a;->L$2:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v6, Lkotlinx/coroutines/flow/o0;

    .line 89
    .line 90
    iget-object v7, v0, Lkotlinx/coroutines/flow/m0$a;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v7, Lkotlinx/coroutines/flow/h;

    .line 93
    .line 94
    iget-object v8, v0, Lkotlinx/coroutines/flow/m0$a;->L$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v8, Lkotlinx/coroutines/flow/m0;

    .line 97
    .line 98
    .line 99
    :try_start_1
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    goto/16 :goto_4

    .line 102
    .line 103
    :cond_3
    iget-object p1, v0, Lkotlinx/coroutines/flow/m0$a;->L$2:Ljava/lang/Object;

    .line 104
    move-object v6, p1

    .line 105
    .line 106
    check-cast v6, Lkotlinx/coroutines/flow/o0;

    .line 107
    .line 108
    iget-object p1, v0, Lkotlinx/coroutines/flow/m0$a;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lkotlinx/coroutines/flow/h;

    .line 111
    .line 112
    iget-object v2, v0, Lkotlinx/coroutines/flow/m0$a;->L$0:Ljava/lang/Object;

    .line 113
    move-object v8, v2

    .line 114
    .line 115
    check-cast v8, Lkotlinx/coroutines/flow/m0;

    .line 116
    .line 117
    .line 118
    :try_start_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    goto :goto_1

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/b;->h()Lkotlinx/coroutines/flow/internal/d;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    check-cast p2, Lkotlinx/coroutines/flow/o0;

    .line 129
    .line 130
    :try_start_3
    instance-of v2, p1, Lkotlinx/coroutines/flow/p0;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    move-object v2, p1

    .line 134
    .line 135
    check-cast v2, Lkotlinx/coroutines/flow/p0;

    .line 136
    .line 137
    iput-object p0, v0, Lkotlinx/coroutines/flow/m0$a;->L$0:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object p1, v0, Lkotlinx/coroutines/flow/m0$a;->L$1:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object p2, v0, Lkotlinx/coroutines/flow/m0$a;->L$2:Ljava/lang/Object;

    .line 142
    .line 143
    iput v6, v0, Lkotlinx/coroutines/flow/m0$a;->label:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/flow/p0;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 147
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 148
    .line 149
    if-ne v2, v1, :cond_5

    .line 150
    return-object v1

    .line 151
    :catchall_1
    move-exception p1

    .line 152
    move-object v8, p0

    .line 153
    move-object v6, p2

    .line 154
    goto :goto_5

    .line 155
    :cond_5
    move-object v8, p0

    .line 156
    move-object v6, p2

    .line 157
    .line 158
    .line 159
    :goto_1
    :try_start_4
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 160
    move-result-object p2

    .line 161
    .line 162
    sget-object v2, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 163
    .line 164
    .line 165
    invoke-interface {p2, v2}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 166
    move-result-object p2

    .line 167
    .line 168
    check-cast p2, Lkotlinx/coroutines/b2;

    .line 169
    move-object v7, p1

    .line 170
    move-object v2, p2

    .line 171
    move-object p1, v3

    .line 172
    .line 173
    :cond_6
    :goto_2
    sget-object p2, Lkotlinx/coroutines/flow/m0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    move-result-object p2

    .line 178
    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    .line 182
    invoke-static {v2}, Lkotlinx/coroutines/f2;->k(Lkotlinx/coroutines/b2;)V

    .line 183
    .line 184
    :cond_7
    if-eqz p1, :cond_8

    .line 185
    .line 186
    .line 187
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    move-result v9

    .line 189
    .line 190
    if-nez v9, :cond_b

    .line 191
    .line 192
    :cond_8
    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 193
    .line 194
    if-ne p2, p1, :cond_9

    .line 195
    move-object p1, v3

    .line 196
    goto :goto_3

    .line 197
    :cond_9
    move-object p1, p2

    .line 198
    .line 199
    :goto_3
    iput-object v8, v0, Lkotlinx/coroutines/flow/m0$a;->L$0:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v7, v0, Lkotlinx/coroutines/flow/m0$a;->L$1:Ljava/lang/Object;

    .line 202
    .line 203
    iput-object v6, v0, Lkotlinx/coroutines/flow/m0$a;->L$2:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object v2, v0, Lkotlinx/coroutines/flow/m0$a;->L$3:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object p2, v0, Lkotlinx/coroutines/flow/m0$a;->L$4:Ljava/lang/Object;

    .line 208
    .line 209
    iput v5, v0, Lkotlinx/coroutines/flow/m0$a;->label:I

    .line 210
    .line 211
    .line 212
    invoke-interface {v7, p1, v0}, Lkotlinx/coroutines/flow/h;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    if-ne p1, v1, :cond_a

    .line 216
    return-object v1

    .line 217
    :cond_a
    move-object p1, p2

    .line 218
    .line 219
    .line 220
    :cond_b
    :goto_4
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/o0;->h()Z

    .line 221
    move-result p2

    .line 222
    .line 223
    if-nez p2, :cond_6

    .line 224
    .line 225
    iput-object v8, v0, Lkotlinx/coroutines/flow/m0$a;->L$0:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v7, v0, Lkotlinx/coroutines/flow/m0$a;->L$1:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v6, v0, Lkotlinx/coroutines/flow/m0$a;->L$2:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v2, v0, Lkotlinx/coroutines/flow/m0$a;->L$3:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object p1, v0, Lkotlinx/coroutines/flow/m0$a;->L$4:Ljava/lang/Object;

    .line 234
    .line 235
    iput v4, v0, Lkotlinx/coroutines/flow/m0$a;->label:I

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v0}, Lkotlinx/coroutines/flow/o0;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 239
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 240
    .line 241
    if-ne p2, v1, :cond_6

    .line 242
    return-object v1

    .line 243
    .line 244
    .line 245
    :goto_5
    invoke-virtual {v8, v6}, Lkotlinx/coroutines/flow/internal/b;->k(Lkotlinx/coroutines/flow/internal/d;)V

    .line 246
    throw p1
.end method

.method public e(Lkotlin/coroutines/g;ILkotlinx/coroutines/channels/a;)Lkotlinx/coroutines/flow/g;
    .locals 0
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/channels/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g;",
            "I",
            "Lkotlinx/coroutines/channels/a;",
            ")",
            "Lkotlinx/coroutines/flow/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/n0;->d(Lkotlinx/coroutines/flow/l0;Lkotlin/coroutines/g;ILkotlinx/coroutines/channels/a;)Lkotlinx/coroutines/flow/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/m0;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 6
    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 3
    .line 4
    sget-object v1, Lkotlinx/coroutines/flow/m0;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-ne v1, v0, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    :cond_0
    return-object v1
.end method

.method public bridge synthetic i()Lkotlinx/coroutines/flow/internal/d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/m0;->n()Lkotlinx/coroutines/flow/o0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic j(I)[Lkotlinx/coroutines/flow/internal/d;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/m0;->o(I)[Lkotlinx/coroutines/flow/o0;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected n()Lkotlinx/coroutines/flow/o0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/o0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/flow/o0;-><init>()V

    .line 6
    return-object v0
.end method

.method protected o(I)[Lkotlinx/coroutines/flow/o0;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-array p1, p1, [Lkotlinx/coroutines/flow/o0;

    .line 3
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lkotlinx/coroutines/flow/internal/s;->NULL:Lkotlinx/coroutines/internal/i0;

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/flow/m0;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    return-void
.end method
