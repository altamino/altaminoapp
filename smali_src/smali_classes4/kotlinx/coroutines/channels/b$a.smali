.class final Lkotlinx/coroutines/channels/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/f;
.implements Lkotlinx/coroutines/j3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/f<",
        "TE;>;",
        "Lkotlinx/coroutines/j3;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"
.end annotation


# instance fields
.field private continuation:Lkotlinx/coroutines/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/p<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private receiveResult:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/channels/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/channels/c;->m()Lkotlinx/coroutines/internal/i0;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public static final synthetic c(Lkotlinx/coroutines/channels/b$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/channels/b$a;->h()V

    .line 4
    return-void
.end method

.method public static final synthetic d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/p;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 3
    return-void
.end method

.method public static final synthetic e(Lkotlinx/coroutines/channels/b$a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method private final f(Lkotlinx/coroutines/channels/i;IJLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;IJ",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v6, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 3
    .line 4
    .line 5
    invoke-static {p5}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlinx/coroutines/r;->b(Lkotlin/coroutines/d;)Lkotlinx/coroutines/p;

    .line 10
    move-result-object v7

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p0, v7}, Lkotlinx/coroutines/channels/b$a;->d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/p;)V

    .line 14
    move-object v0, v6

    .line 15
    move-object v1, p1

    .line 16
    move v2, p2

    .line 17
    move-wide v3, p3

    .line 18
    move-object v5, p0

    .line 19
    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/b;->x(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/channels/i;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/i0;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-ne v0, v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-static {v6, p0, p1, p2}, Lkotlinx/coroutines/channels/b;->n(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/j3;Lkotlinx/coroutines/channels/i;I)V

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/c;->h()Lkotlinx/coroutines/internal/i0;

    .line 40
    move-result-object p2

    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    .line 44
    if-ne v0, p2, :cond_a

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->R()J

    .line 48
    move-result-wide v0

    .line 49
    .line 50
    cmp-long p2, p3, v0

    .line 51
    .line 52
    if-gez p2, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->b()V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/channels/b;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Lkotlinx/coroutines/channels/i;

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->Y()Z

    .line 69
    move-result p2

    .line 70
    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lkotlinx/coroutines/channels/b$a;->c(Lkotlinx/coroutines/channels/b$a;)V

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/b;->g()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 84
    move-result-wide p2

    .line 85
    .line 86
    sget p4, Lkotlinx/coroutines/channels/c;->SEGMENT_SIZE:I

    .line 87
    int-to-long v0, p4

    .line 88
    .line 89
    div-long v0, p2, v0

    .line 90
    int-to-long v2, p4

    .line 91
    .line 92
    rem-long v2, p2, v2

    .line 93
    long-to-int p4, v2

    .line 94
    .line 95
    iget-wide v2, p1, Lkotlinx/coroutines/internal/f0;->id:J

    .line 96
    .line 97
    cmp-long v2, v2, v0

    .line 98
    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v0, v1, p1}, Lkotlinx/coroutines/channels/b;->a(Lkotlinx/coroutines/channels/b;JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    move-object p1, v0

    .line 108
    :cond_5
    move-object v0, v6

    .line 109
    move-object v1, p1

    .line 110
    move v2, p4

    .line 111
    move-wide v3, p2

    .line 112
    move-object v5, p0

    .line 113
    .line 114
    .line 115
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/b;->x(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/channels/i;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/i0;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    if-ne v0, v1, :cond_6

    .line 123
    .line 124
    .line 125
    invoke-static {v6, p0, p1, p4}, Lkotlinx/coroutines/channels/b;->n(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/j3;Lkotlinx/coroutines/channels/i;I)V

    .line 126
    goto :goto_2

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/c;->h()Lkotlinx/coroutines/internal/i0;

    .line 130
    move-result-object p4

    .line 131
    .line 132
    if-ne v0, p4, :cond_7

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->R()J

    .line 136
    move-result-wide v0

    .line 137
    .line 138
    cmp-long p2, p2, v0

    .line 139
    .line 140
    if-gez p2, :cond_2

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->b()V

    .line 144
    goto :goto_0

    .line 145
    .line 146
    .line 147
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/c;->s()Lkotlinx/coroutines/internal/i0;

    .line 148
    move-result-object p2

    .line 149
    .line 150
    if-eq v0, p2, :cond_9

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->b()V

    .line 154
    .line 155
    .line 156
    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/b$a;->e(Lkotlinx/coroutines/channels/b$a;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p0, v9}, Lkotlinx/coroutines/channels/b$a;->d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/p;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    iget-object p2, v6, Lkotlinx/coroutines/channels/b;->onUndeliveredElement:Le8/l;

    .line 166
    .line 167
    if-eqz p2, :cond_8

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Lkotlinx/coroutines/p;->getContext()Lkotlin/coroutines/g;

    .line 171
    move-result-object p3

    .line 172
    .line 173
    .line 174
    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/internal/a0;->a(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Le8/l;

    .line 175
    move-result-object v9

    .line 176
    .line 177
    .line 178
    :cond_8
    :goto_1
    invoke-virtual {v7, p1, v9}, Lkotlinx/coroutines/p;->B(Ljava/lang/Object;Le8/l;)V

    .line 179
    goto :goto_2

    .line 180
    .line 181
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    const-string p2, "unexpected"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    move-result-object p2

    .line 188
    .line 189
    .line 190
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 191
    throw p1

    .line 192
    .line 193
    .line 194
    :cond_a
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/e;->b()V

    .line 195
    .line 196
    .line 197
    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/b$a;->e(Lkotlinx/coroutines/channels/b$a;Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-static {p0, v9}, Lkotlinx/coroutines/channels/b$a;->d(Lkotlinx/coroutines/channels/b$a;Lkotlinx/coroutines/p;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 204
    move-result-object p1

    .line 205
    .line 206
    iget-object p2, v6, Lkotlinx/coroutines/channels/b;->onUndeliveredElement:Le8/l;

    .line 207
    .line 208
    if-eqz p2, :cond_8

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7}, Lkotlinx/coroutines/p;->getContext()Lkotlin/coroutines/g;

    .line 212
    move-result-object p3

    .line 213
    .line 214
    .line 215
    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/internal/a0;->a(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Le8/l;

    .line 216
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    goto :goto_1

    .line 218
    .line 219
    .line 220
    :goto_2
    invoke-virtual {v7}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    .line 224
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 225
    move-result-object p2

    .line 226
    .line 227
    if-ne p1, p2, :cond_b

    .line 228
    .line 229
    .line 230
    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 231
    :cond_b
    return-object p1

    .line 232
    .line 233
    .line 234
    :goto_3
    invoke-virtual {v7}, Lkotlinx/coroutines/p;->G()V

    .line 235
    throw p1
.end method

.method private final g()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/channels/c;->z()Lkotlinx/coroutines/internal/i0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object v0, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/b;->N()Ljava/lang/Throwable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/internal/h0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 20
    move-result-object v0

    .line 21
    throw v0
.end method

.method private final h()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/channels/c;->z()Lkotlinx/coroutines/internal/i0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/b;->N()Ljava/lang/Throwable;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 25
    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 48
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/internal/f0;I)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/f0<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/p;->a(Lkotlinx/coroutines/internal/f0;I)V

    .line 8
    :cond_0
    return-void
.end method

.method public b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 14
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v6, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 3
    const/4 v7, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/channels/b;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lkotlinx/coroutines/channels/i;

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->Y()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/channels/b$a;->g()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_2

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/b;->g()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 36
    move-result-wide v11

    .line 37
    .line 38
    sget v1, Lkotlinx/coroutines/channels/c;->SEGMENT_SIZE:I

    .line 39
    int-to-long v2, v1

    .line 40
    .line 41
    div-long v2, v11, v2

    .line 42
    int-to-long v4, v1

    .line 43
    .line 44
    rem-long v4, v11, v4

    .line 45
    long-to-int v10, v4

    .line 46
    .line 47
    iget-wide v4, v0, Lkotlinx/coroutines/internal/f0;->id:J

    .line 48
    .line 49
    cmp-long v1, v4, v2

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-static {v6, v2, v3, v0}, Lkotlinx/coroutines/channels/b;->a(Lkotlinx/coroutines/channels/b;JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v9, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v9, v0

    .line 62
    :goto_1
    move-object v0, v6

    .line 63
    move-object v1, v9

    .line 64
    move v2, v10

    .line 65
    move-wide v3, v11

    .line 66
    move-object v5, v7

    .line 67
    .line 68
    .line 69
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/b;->x(Lkotlinx/coroutines/channels/b;Lkotlinx/coroutines/channels/i;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lkotlinx/coroutines/channels/c;->r()Lkotlinx/coroutines/internal/i0;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    if-eq v0, v1, :cond_6

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lkotlinx/coroutines/channels/c;->h()Lkotlinx/coroutines/internal/i0;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    if-ne v0, v1, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lkotlinx/coroutines/channels/b;->R()J

    .line 86
    move-result-wide v0

    .line 87
    .line 88
    cmp-long v0, v11, v0

    .line 89
    .line 90
    if-gez v0, :cond_3

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/e;->b()V

    .line 94
    :cond_3
    move-object v0, v9

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/c;->s()Lkotlinx/coroutines/internal/i0;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    if-ne v0, v1, :cond_5

    .line 102
    move-object v8, p0

    .line 103
    move-object v13, p1

    .line 104
    .line 105
    .line 106
    invoke-direct/range {v8 .. v13}, Lkotlinx/coroutines/channels/b$a;->f(Lkotlinx/coroutines/channels/i;IJLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/e;->b()V

    .line 112
    .line 113
    iput-object v0, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 114
    const/4 p1, 0x1

    .line 115
    .line 116
    .line 117
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 118
    move-result-object p1

    .line 119
    :goto_2
    return-object p1

    .line 120
    .line 121
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string v0, "unreachable"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p1
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iget-object v3, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 15
    .line 16
    iget-object v3, v3, Lkotlinx/coroutines/channels/b;->onUndeliveredElement:Le8/l;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->getContext()Lkotlin/coroutines/g;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v3, p1, v1}, Lkotlinx/coroutines/internal/a0;->a(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)Le8/l;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/channels/c;->u(Lkotlinx/coroutines/o;Ljava/lang/Object;Le8/l;)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final j()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->continuation:Lkotlinx/coroutines/p;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/channels/c;->z()Lkotlinx/coroutines/internal/i0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/b;->N()Ljava/lang/Throwable;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 25
    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    sget-object v2, Lw7/v;->Companion:Lw7/v$a;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 48
    :goto_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlinx/coroutines/channels/c;->m()Lkotlinx/coroutines/internal/i0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/channels/c;->m()Lkotlinx/coroutines/internal/i0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    iput-object v1, p0, Lkotlinx/coroutines/channels/b$a;->receiveResult:Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/channels/c;->z()Lkotlinx/coroutines/internal/i0;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/channels/b$a;->this$0:Lkotlinx/coroutines/channels/b;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/channels/b;->e(Lkotlinx/coroutines/channels/b;)Ljava/lang/Throwable;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlinx/coroutines/internal/h0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 31
    move-result-object v0

    .line 32
    throw v0

    .line 33
    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "`hasNext()` has not been invoked"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0
.end method
