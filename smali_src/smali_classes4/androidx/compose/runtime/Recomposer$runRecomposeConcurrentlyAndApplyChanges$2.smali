.class final Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lkotlinx/coroutines/o0;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecomposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n+ 3 Recomposer.kt\nandroidx/compose/runtime/Recomposer\n+ 4 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,1200:1\n66#2:1201\n384#3,2:1202\n386#3,3:1208\n389#3,9:1212\n32#4,4:1204\n37#4:1211\n*S KotlinDebug\n*F\n+ 1 Recomposer.kt\nandroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2\n*L\n595#1:1201\n596#1:1202,2\n596#1:1208,3\n596#1:1212,9\n596#1:1204,4\n596#1:1211\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2"
    f = "Recomposer.kt"
    l = {
        0x250,
        0x264,
        0x265
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $recomposeCoroutineContext:Lkotlin/coroutines/g;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Lkotlin/coroutines/g;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g;",
            "Landroidx/compose/runtime/Recomposer;",
            "Lkotlin/coroutines/d<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/g;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/coroutines/o0;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/o0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/MonotonicFrameClock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o0;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
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
    new-instance v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/g;

    iget-object v2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-direct {v0, v1, v2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;-><init>(Lkotlin/coroutines/g;Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/o0;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->f(Lkotlinx/coroutines/o0;Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-eq v2, v7, :cond_2

    .line 17
    .line 18
    if-eq v2, v4, :cond_1

    .line 19
    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    goto/16 :goto_9

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0

    .line 34
    .line 35
    :cond_1
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lkotlinx/coroutines/b2;

    .line 38
    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 41
    move-object v10, v1

    .line 42
    move-object v4, v6

    .line 43
    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_2
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lkotlinx/coroutines/b2;

    .line 49
    .line 50
    iget-object v8, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v8, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 53
    .line 54
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v9, Lkotlinx/coroutines/o0;

    .line 57
    .line 58
    .line 59
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 60
    move-object v14, v1

    .line 61
    move-object v15, v9

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 69
    move-object v8, v2

    .line 70
    .line 71
    check-cast v8, Lkotlinx/coroutines/o0;

    .line 72
    .line 73
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 76
    .line 77
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/g;

    .line 78
    .line 79
    sget-object v10, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 80
    .line 81
    .line 82
    invoke-interface {v9, v10}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    if-nez v9, :cond_4

    .line 86
    move v9, v7

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const/4 v9, 0x0

    .line 89
    .line 90
    :goto_0
    iget-object v11, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/g;

    .line 91
    .line 92
    if-eqz v9, :cond_10

    .line 93
    .line 94
    .line 95
    invoke-interface {v8}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 96
    move-result-object v9

    .line 97
    .line 98
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->$recomposeCoroutineContext:Lkotlin/coroutines/g;

    .line 99
    .line 100
    .line 101
    invoke-interface {v9, v10}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 102
    move-result-object v9

    .line 103
    .line 104
    .line 105
    invoke-interface {v8}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 106
    move-result-object v10

    .line 107
    .line 108
    .line 109
    invoke-static {v10}, Lkotlinx/coroutines/f2;->l(Lkotlin/coroutines/g;)Lkotlinx/coroutines/b2;

    .line 110
    move-result-object v10

    .line 111
    .line 112
    .line 113
    invoke-static {v10}, Lkotlinx/coroutines/f2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 114
    move-result-object v10

    .line 115
    .line 116
    .line 117
    invoke-interface {v9, v10}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 118
    move-result-object v9

    .line 119
    .line 120
    .line 121
    invoke-static {v9}, Lkotlinx/coroutines/p0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/o0;

    .line 122
    move-result-object v14

    .line 123
    .line 124
    new-instance v15, Landroidx/compose/runtime/ProduceFrameSignal;

    .line 125
    .line 126
    .line 127
    invoke-direct {v15}, Landroidx/compose/runtime/ProduceFrameSignal;-><init>()V

    .line 128
    const/4 v9, 0x0

    .line 129
    const/4 v10, 0x0

    .line 130
    .line 131
    new-instance v11, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;

    .line 132
    .line 133
    iget-object v12, v1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 134
    .line 135
    .line 136
    invoke-direct {v11, v12, v2, v15, v6}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/d;)V

    .line 137
    const/4 v12, 0x3

    .line 138
    const/4 v13, 0x0

    .line 139
    .line 140
    .line 141
    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 142
    move-result-object v2

    .line 143
    move-object v10, v1

    .line 144
    move-object v9, v14

    .line 145
    move-object v8, v15

    .line 146
    .line 147
    :goto_1
    iget-object v11, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 148
    .line 149
    .line 150
    invoke-static {v11}, Landroidx/compose/runtime/Recomposer;->G(Landroidx/compose/runtime/Recomposer;)Z

    .line 151
    move-result v11

    .line 152
    .line 153
    if-eqz v11, :cond_d

    .line 154
    .line 155
    iget-object v11, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 156
    .line 157
    iput-object v9, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v8, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v2, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput v7, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 164
    .line 165
    .line 166
    invoke-static {v11, v10}, Landroidx/compose/runtime/Recomposer;->r(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 167
    move-result-object v11

    .line 168
    .line 169
    if-ne v11, v0, :cond_5

    .line 170
    return-object v0

    .line 171
    :cond_5
    move-object v15, v9

    .line 172
    move-object v14, v10

    .line 173
    .line 174
    :goto_2
    iget-object v9, v14, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 175
    .line 176
    .line 177
    invoke-static {v9}, Landroidx/compose/runtime/Recomposer;->I(Landroidx/compose/runtime/Recomposer;)Ljava/lang/Object;

    .line 178
    move-result-object v16

    .line 179
    .line 180
    iget-object v13, v14, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->this$0:Landroidx/compose/runtime/Recomposer;

    .line 181
    monitor-enter v16

    .line 182
    .line 183
    .line 184
    :try_start_0
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->H(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 185
    move-result-object v9

    .line 186
    .line 187
    check-cast v9, Ljava/util/Collection;

    .line 188
    .line 189
    .line 190
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 191
    move-result v9

    .line 192
    xor-int/2addr v9, v7

    .line 193
    .line 194
    if-eqz v9, :cond_8

    .line 195
    .line 196
    .line 197
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->H(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 198
    move-result-object v9

    .line 199
    .line 200
    .line 201
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 202
    move-result v10

    .line 203
    const/4 v11, 0x0

    .line 204
    .line 205
    :goto_3
    if-ge v11, v10, :cond_7

    .line 206
    .line 207
    .line 208
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v12

    .line 210
    .line 211
    check-cast v12, Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->D(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 215
    move-result-object v5

    .line 216
    .line 217
    .line 218
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 219
    move-result v3

    .line 220
    const/4 v4, 0x0

    .line 221
    .line 222
    :goto_4
    if-ge v4, v3, :cond_6

    .line 223
    .line 224
    .line 225
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v17

    .line 227
    .line 228
    move-object/from16 v6, v17

    .line 229
    .line 230
    check-cast v6, Landroidx/compose/runtime/ControlledComposition;

    .line 231
    .line 232
    .line 233
    invoke-interface {v6, v12}, Landroidx/compose/runtime/ControlledComposition;->k(Ljava/util/Set;)V

    .line 234
    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 236
    const/4 v6, 0x0

    .line 237
    goto :goto_4

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 243
    const/4 v3, 0x3

    .line 244
    const/4 v4, 0x2

    .line 245
    const/4 v6, 0x0

    .line 246
    goto :goto_3

    .line 247
    .line 248
    .line 249
    :cond_7
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->H(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 250
    move-result-object v3

    .line 251
    .line 252
    .line 253
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 254
    .line 255
    .line 256
    :cond_8
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    .line 260
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 261
    move-result v4

    .line 262
    const/4 v5, 0x0

    .line 263
    .line 264
    :goto_5
    if-ge v5, v4, :cond_9

    .line 265
    .line 266
    .line 267
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    move-result-object v6

    .line 269
    .line 270
    check-cast v6, Landroidx/compose/runtime/ControlledComposition;

    .line 271
    .line 272
    .line 273
    invoke-static {v13}, Landroidx/compose/runtime/Recomposer;->z(Landroidx/compose/runtime/Recomposer;)I

    .line 274
    move-result v9

    .line 275
    add-int/2addr v9, v7

    .line 276
    .line 277
    .line 278
    invoke-static {v13, v9}, Landroidx/compose/runtime/Recomposer;->U(Landroidx/compose/runtime/Recomposer;I)V

    .line 279
    .line 280
    .line 281
    invoke-static {v6}, Landroidx/compose/runtime/CompositionKt;->e(Landroidx/compose/runtime/ControlledComposition;)Lkotlin/coroutines/g;

    .line 282
    move-result-object v10

    .line 283
    const/4 v11, 0x0

    .line 284
    .line 285
    new-instance v12, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1;

    .line 286
    const/4 v9, 0x0

    .line 287
    .line 288
    .line 289
    invoke-direct {v12, v13, v6, v9}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$2$1$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Lkotlin/coroutines/d;)V

    .line 290
    const/4 v6, 0x2

    .line 291
    .line 292
    const/16 v17, 0x0

    .line 293
    move-object v9, v15

    .line 294
    .line 295
    move-object/from16 v18, v13

    .line 296
    move v13, v6

    .line 297
    move-object v6, v14

    .line 298
    .line 299
    move-object/from16 v14, v17

    .line 300
    .line 301
    .line 302
    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 303
    .line 304
    add-int/lit8 v5, v5, 0x1

    .line 305
    move-object v14, v6

    .line 306
    .line 307
    move-object/from16 v13, v18

    .line 308
    goto :goto_5

    .line 309
    .line 310
    :cond_9
    move-object/from16 v18, v13

    .line 311
    move-object v6, v14

    .line 312
    .line 313
    .line 314
    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/Recomposer;->w(Landroidx/compose/runtime/Recomposer;)Ljava/util/List;

    .line 315
    move-result-object v3

    .line 316
    .line 317
    .line 318
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 319
    .line 320
    .line 321
    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/Recomposer;->s(Landroidx/compose/runtime/Recomposer;)Lkotlinx/coroutines/o;

    .line 322
    move-result-object v3

    .line 323
    .line 324
    if-nez v3, :cond_c

    .line 325
    .line 326
    .line 327
    invoke-static/range {v18 .. v18}, Landroidx/compose/runtime/Recomposer;->A(Landroidx/compose/runtime/Recomposer;)Z

    .line 328
    move-result v3

    .line 329
    .line 330
    if-eqz v3, :cond_a

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8}, Landroidx/compose/runtime/ProduceFrameSignal;->d()Lkotlin/coroutines/d;

    .line 334
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    goto :goto_6

    .line 336
    :cond_a
    const/4 v9, 0x0

    .line 337
    :goto_6
    monitor-exit v16

    .line 338
    .line 339
    if-eqz v9, :cond_b

    .line 340
    .line 341
    sget-object v3, Lw7/v;->Companion:Lw7/v$a;

    .line 342
    .line 343
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 344
    .line 345
    .line 346
    invoke-static {v3}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    move-result-object v3

    .line 348
    .line 349
    .line 350
    invoke-interface {v9, v3}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    .line 351
    :cond_b
    move-object v10, v6

    .line 352
    move-object v9, v15

    .line 353
    const/4 v3, 0x3

    .line 354
    const/4 v4, 0x2

    .line 355
    const/4 v6, 0x0

    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :cond_c
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 360
    .line 361
    const-string v2, "called outside of runRecomposeAndApplyChanges"

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 365
    move-result-object v2

    .line 366
    .line 367
    .line 368
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 369
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :goto_7
    monitor-exit v16

    .line 371
    throw v0

    .line 372
    .line 373
    .line 374
    :cond_d
    invoke-interface {v9}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 375
    move-result-object v3

    .line 376
    .line 377
    .line 378
    invoke-static {v3}, Lkotlinx/coroutines/f2;->l(Lkotlin/coroutines/g;)Lkotlinx/coroutines/b2;

    .line 379
    move-result-object v3

    .line 380
    .line 381
    iput-object v2, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 382
    const/4 v4, 0x0

    .line 383
    .line 384
    iput-object v4, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$1:Ljava/lang/Object;

    .line 385
    .line 386
    iput-object v4, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$2:Ljava/lang/Object;

    .line 387
    const/4 v5, 0x2

    .line 388
    .line 389
    iput v5, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 390
    .line 391
    .line 392
    invoke-static {v3, v10}, Lkotlinx/coroutines/f2;->g(Lkotlinx/coroutines/b2;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 393
    move-result-object v3

    .line 394
    .line 395
    if-ne v3, v0, :cond_e

    .line 396
    return-object v0

    .line 397
    .line 398
    :cond_e
    :goto_8
    iput-object v4, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->L$0:Ljava/lang/Object;

    .line 399
    const/4 v3, 0x3

    .line 400
    .line 401
    iput v3, v10, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->label:I

    .line 402
    .line 403
    .line 404
    invoke-static {v2, v10}, Lkotlinx/coroutines/f2;->g(Lkotlinx/coroutines/b2;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 405
    move-result-object v2

    .line 406
    .line 407
    if-ne v2, v0, :cond_f

    .line 408
    return-object v0

    .line 409
    .line 410
    :cond_f
    :goto_9
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 411
    return-object v0

    .line 412
    .line 413
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    const-string v2, "recomposeCoroutineContext may not contain a Job; found "

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-interface {v11, v10}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 425
    move-result-object v2

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v0

    .line 433
    .line 434
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 438
    move-result-object v0

    .line 439
    .line 440
    .line 441
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 442
    throw v2
.end method
