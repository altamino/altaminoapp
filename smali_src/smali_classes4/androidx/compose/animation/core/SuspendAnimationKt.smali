.class public final Landroidx/compose/animation/core/SuspendAnimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuspendAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuspendAnimation.kt\nandroidx/compose/animation/core/SuspendAnimationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,357:1\n1#2:358\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Le8/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/animation/core/SuspendAnimationKt;->n(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Le8/l;)V

    .line 4
    return-void
.end method

.method public static final b(FFFLandroidx/compose/animation/core/AnimationSpec;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .param p3    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/p<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
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
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/b;->c(F)Ljava/lang/Float;

    .line 18
    move-result-object v4

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    move-object v7, p5

    .line 22
    .line 23
    .line 24
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->d(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-ne p0, p1, :cond_0

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 35
    return-object p0
.end method

.method public static final c(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 25
    .param p0    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/Animation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;J",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Lw7/l0;",
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
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    instance-of v2, v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    move-object v2, v1

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    .line 14
    .line 15
    iget v3, v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    .line 16
    .line 17
    const/high16 v4, -0x80000000

    .line 18
    .line 19
    and-int v5, v3, v4

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    sub-int/2addr v3, v4

    .line 23
    .line 24
    iput v3, v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    .line 25
    :goto_0
    move-object v10, v2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance v2, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, v1}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;-><init>(Lkotlin/coroutines/d;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :goto_1
    iget-object v1, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->result:Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 38
    move-result-object v11

    .line 39
    .line 40
    iget v2, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    .line 41
    const/4 v12, 0x2

    .line 42
    const/4 v13, 0x1

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    if-eq v2, v13, :cond_2

    .line 47
    .line 48
    if-ne v2, v12, :cond_1

    .line 49
    .line 50
    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    .line 51
    move-object v2, v0

    .line 52
    .line 53
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 54
    .line 55
    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Le8/l;

    .line 58
    .line 59
    iget-object v3, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Landroidx/compose/animation/core/Animation;

    .line 62
    .line 63
    iget-object v4, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    .line 66
    .line 67
    .line 68
    :goto_2
    :try_start_0
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_3

    .line 70
    :catch_0
    move-exception v0

    .line 71
    move-object v9, v4

    .line 72
    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    throw v0

    .line 82
    .line 83
    :cond_2
    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    .line 84
    move-object v2, v0

    .line 85
    .line 86
    check-cast v2, Lkotlin/jvm/internal/p0;

    .line 87
    .line 88
    iget-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Le8/l;

    .line 91
    .line 92
    iget-object v3, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Landroidx/compose/animation/core/Animation;

    .line 95
    .line 96
    iget-object v4, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    move-object v8, v0

    .line 101
    move-object v0, v3

    .line 102
    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    const-wide/16 v1, 0x0

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/Animation;->e(J)Ljava/lang/Object;

    .line 112
    move-result-object v15

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/Animation;->g(J)Landroidx/compose/animation/core/AnimationVector;

    .line 116
    move-result-object v17

    .line 117
    .line 118
    new-instance v14, Lkotlin/jvm/internal/p0;

    .line 119
    .line 120
    .line 121
    invoke-direct {v14}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 122
    .line 123
    const-wide/high16 v1, -0x8000000000000000L

    .line 124
    .line 125
    cmp-long v1, p2, v1

    .line 126
    .line 127
    if-nez v1, :cond_4

    .line 128
    .line 129
    .line 130
    :try_start_1
    invoke-interface {v10}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-static {v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->o(Lkotlin/coroutines/g;)F

    .line 135
    move-result v7

    .line 136
    .line 137
    new-instance v8, Landroidx/compose/animation/core/SuspendAnimationKt$animate$6;

    .line 138
    move-object v1, v8

    .line 139
    move-object v2, v14

    .line 140
    move-object v3, v15

    .line 141
    .line 142
    move-object/from16 v4, p1

    .line 143
    .line 144
    move-object/from16 v5, v17

    .line 145
    .line 146
    move-object/from16 v6, p0

    .line 147
    move-object v15, v8

    .line 148
    .line 149
    move-object/from16 v8, p4

    .line 150
    .line 151
    .line 152
    invoke-direct/range {v1 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$6;-><init>(Lkotlin/jvm/internal/p0;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationState;FLe8/l;)V

    .line 153
    .line 154
    iput-object v9, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    .line 157
    .line 158
    move-object/from16 v8, p4

    .line 159
    .line 160
    iput-object v8, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v14, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    .line 163
    .line 164
    iput v13, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v15, v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->l(Landroidx/compose/animation/core/Animation;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    if-ne v1, v11, :cond_5

    .line 171
    return-object v11

    .line 172
    :catch_1
    move-exception v0

    .line 173
    :goto_4
    move-object v2, v14

    .line 174
    .line 175
    goto/16 :goto_6

    .line 176
    .line 177
    :cond_4
    move-object/from16 v8, p4

    .line 178
    .line 179
    new-instance v13, Landroidx/compose/animation/core/AnimationScope;

    .line 180
    .line 181
    .line 182
    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/Animation;->d()Landroidx/compose/animation/core/TwoWayConverter;

    .line 183
    move-result-object v16

    .line 184
    .line 185
    .line 186
    invoke-interface/range {p1 .. p1}, Landroidx/compose/animation/core/Animation;->f()Ljava/lang/Object;

    .line 187
    move-result-object v20

    .line 188
    .line 189
    const/16 v23, 0x1

    .line 190
    .line 191
    new-instance v1, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v9}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$7;-><init>(Landroidx/compose/animation/core/AnimationState;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    move-object v7, v14

    .line 196
    move-object v14, v13

    .line 197
    .line 198
    move-wide/from16 v18, p2

    .line 199
    .line 200
    move-wide/from16 v21, p2

    .line 201
    .line 202
    move-object/from16 v24, v1

    .line 203
    .line 204
    .line 205
    :try_start_2
    invoke-direct/range {v14 .. v24}, Landroidx/compose/animation/core/AnimationScope;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JZLe8/a;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v10}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 209
    move-result-object v1

    .line 210
    .line 211
    .line 212
    invoke-static {v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->o(Lkotlin/coroutines/g;)F

    .line 213
    move-result v4
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 214
    move-object v1, v13

    .line 215
    .line 216
    move-wide/from16 v2, p2

    .line 217
    .line 218
    move-object/from16 v5, p1

    .line 219
    .line 220
    move-object/from16 v6, p0

    .line 221
    move-object v14, v7

    .line 222
    .line 223
    move-object/from16 v7, p4

    .line 224
    .line 225
    .line 226
    :try_start_3
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->n(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Le8/l;)V

    .line 227
    .line 228
    iput-object v13, v14, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 229
    :cond_5
    move-object v4, v9

    .line 230
    move-object v2, v14

    .line 231
    .line 232
    :cond_6
    :goto_5
    :try_start_4
    iget-object v1, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 236
    .line 237
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->h()Z

    .line 241
    move-result v1

    .line 242
    .line 243
    if-eqz v1, :cond_7

    .line 244
    .line 245
    .line 246
    invoke-interface {v10}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    .line 250
    invoke-static {v1}, Landroidx/compose/animation/core/SuspendAnimationKt;->o(Lkotlin/coroutines/g;)F

    .line 251
    move-result v1

    .line 252
    .line 253
    new-instance v3, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;

    .line 254
    .line 255
    move-object/from16 p0, v3

    .line 256
    .line 257
    move-object/from16 p1, v2

    .line 258
    .line 259
    move/from16 p2, v1

    .line 260
    .line 261
    move-object/from16 p3, v0

    .line 262
    .line 263
    move-object/from16 p4, v4

    .line 264
    .line 265
    move-object/from16 p5, v8

    .line 266
    .line 267
    .line 268
    invoke-direct/range {p0 .. p5}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$9;-><init>(Lkotlin/jvm/internal/p0;FLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Le8/l;)V

    .line 269
    .line 270
    iput-object v4, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$0:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v0, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$1:Ljava/lang/Object;

    .line 273
    .line 274
    iput-object v8, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$2:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v2, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->L$3:Ljava/lang/Object;

    .line 277
    .line 278
    iput v12, v10, Landroidx/compose/animation/core/SuspendAnimationKt$animate$4;->label:I

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v3, v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->l(Landroidx/compose/animation/core/Animation;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 282
    move-result-object v1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 283
    .line 284
    if-ne v1, v11, :cond_6

    .line 285
    return-object v11

    .line 286
    .line 287
    :cond_7
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 288
    return-object v0

    .line 289
    :catch_2
    move-exception v0

    .line 290
    move-object v14, v7

    .line 291
    goto :goto_4

    .line 292
    .line 293
    :goto_6
    iget-object v1, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 296
    const/4 v3, 0x0

    .line 297
    .line 298
    if-nez v1, :cond_8

    .line 299
    goto :goto_7

    .line 300
    .line 301
    .line 302
    :cond_8
    invoke-virtual {v1, v3}, Landroidx/compose/animation/core/AnimationScope;->k(Z)V

    .line 303
    .line 304
    :goto_7
    iget-object v1, v2, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    .line 307
    .line 308
    if-eqz v1, :cond_9

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->c()J

    .line 312
    move-result-wide v1

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9}, Landroidx/compose/animation/core/AnimationState;->b()J

    .line 316
    move-result-wide v4

    .line 317
    .line 318
    cmp-long v1, v1, v4

    .line 319
    .line 320
    if-nez v1, :cond_9

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9, v3}, Landroidx/compose/animation/core/AnimationState;->m(Z)V

    .line 324
    :cond_9
    throw v0
.end method

.method public static final d(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 15
    .param p0    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;TT;TT;TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;",
            "Le8/p<",
            "-TT;-TT;",
            "Lw7/l0;",
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
    move-object/from16 v0, p3

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/compose/animation/core/TwoWayConverter;->a()Le8/l;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    move-object/from16 v7, p1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroidx/compose/animation/core/TwoWayConverter;->a()Le8/l;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    move-object/from16 v7, p1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v7}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/compose/animation/core/AnimationVector;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/animation/core/AnimationVectorsKt;->d(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    :goto_1
    new-instance v12, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 39
    move-object v1, v12

    .line 40
    .line 41
    move-object/from16 v2, p4

    .line 42
    move-object v3, p0

    .line 43
    .line 44
    move-object/from16 v4, p1

    .line 45
    .line 46
    move-object/from16 v5, p2

    .line 47
    move-object v6, v0

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 51
    .line 52
    new-instance v13, Landroidx/compose/animation/core/AnimationState;

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    const-wide/16 v8, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    .line 59
    const/16 v11, 0x38

    .line 60
    const/4 v14, 0x0

    .line 61
    move-object v1, v13

    .line 62
    move-object v2, p0

    .line 63
    .line 64
    move-object/from16 v3, p1

    .line 65
    move-object v4, v0

    .line 66
    move-wide v7, v8

    .line 67
    move v9, v10

    .line 68
    move v10, v11

    .line 69
    move-object v11, v14

    .line 70
    .line 71
    .line 72
    invoke-direct/range {v1 .. v11}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZILkotlin/jvm/internal/k;)V

    .line 73
    .line 74
    const-wide/16 v3, 0x0

    .line 75
    .line 76
    new-instance v5, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;

    .line 77
    move-object v0, p0

    .line 78
    .line 79
    move-object/from16 v1, p5

    .line 80
    .line 81
    .line 82
    invoke-direct {v5, v1, p0}, Landroidx/compose/animation/core/SuspendAnimationKt$animate$3;-><init>(Le8/p;Landroidx/compose/animation/core/TwoWayConverter;)V

    .line 83
    const/4 v7, 0x2

    .line 84
    const/4 v8, 0x0

    .line 85
    move-object v1, v13

    .line 86
    move-object v2, v12

    .line 87
    .line 88
    move-object/from16 v6, p6

    .line 89
    .line 90
    .line 91
    invoke-static/range {v1 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->f(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    if-ne v0, v1, :cond_2

    .line 99
    return-object v0

    .line 100
    .line 101
    :cond_2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 102
    return-object v0
.end method

.method public static synthetic e(FFFLandroidx/compose/animation/core/AnimationSpec;Le8/p;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x4

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    move v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v3, p2

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p2, p6, 0x8

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    const/4 p2, 0x7

    .line 14
    const/4 p3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v0, p3, p2, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 18
    move-result-object p3

    .line 19
    :cond_1
    move-object v4, p3

    .line 20
    move v1, p0

    .line 21
    move v2, p1

    .line 22
    move-object v5, p4

    .line 23
    move-object v6, p5

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->b(FFFLandroidx/compose/animation/core/AnimationSpec;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x2

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    const-wide/high16 p2, -0x8000000000000000L

    .line 7
    :cond_0
    move-wide v2, p2

    .line 8
    .line 9
    and-int/lit8 p2, p6, 0x4

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    sget-object p4, Landroidx/compose/animation/core/SuspendAnimationKt$animate$5;->INSTANCE:Landroidx/compose/animation/core/SuspendAnimationKt$animate$5;

    .line 14
    :cond_1
    move-object v4, p4

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v5, p5

    .line 18
    .line 19
    .line 20
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static final g(FFLandroidx/compose/animation/core/FloatDecayAnimationSpec;Le8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 11
    .param p2    # Landroidx/compose/animation/core/FloatDecayAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Landroidx/compose/animation/core/FloatDecayAnimationSpec;",
            "Le8/p<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lw7/l0;",
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
    .line 3
    invoke-static {p2, p0, p1}, Landroidx/compose/animation/core/AnimationKt;->a(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/DecayAnimation;

    .line 4
    move-result-object v1

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    const-wide/16 v6, 0x0

    .line 9
    const/4 v8, 0x0

    .line 10
    .line 11
    const/16 v9, 0x1c

    .line 12
    const/4 v10, 0x0

    .line 13
    move v2, p0

    .line 14
    move v3, p1

    .line 15
    .line 16
    .line 17
    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFJJZILjava/lang/Object;)Landroidx/compose/animation/core/AnimationState;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    new-instance v4, Landroidx/compose/animation/core/SuspendAnimationKt$animateDecay$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v4, p3}, Landroidx/compose/animation/core/SuspendAnimationKt$animateDecay$2;-><init>(Le8/p;)V

    .line 26
    const/4 v6, 0x2

    .line 27
    const/4 v7, 0x0

    .line 28
    move-object v5, p4

    .line 29
    .line 30
    .line 31
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/SuspendAnimationKt;->f(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    if-ne p0, p1, :cond_0

    .line 39
    return-object p0

    .line 40
    .line 41
    :cond_0
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 42
    return-object p0
.end method

.method public static final h(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/DecayAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/DecayAnimationSpec<",
            "TT;>;Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Lw7/l0;",
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
    .line 3
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->f()Landroidx/compose/animation/core/AnimationVector;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->d()Landroidx/compose/animation/core/TwoWayConverter;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    new-instance v4, Landroidx/compose/animation/core/DecayAnimation;

    .line 15
    .line 16
    .line 17
    invoke-direct {v4, p1, v2, v0, v1}, Landroidx/compose/animation/core/DecayAnimation;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->b()J

    .line 23
    move-result-wide p1

    .line 24
    :goto_0
    move-wide v5, p1

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    move-object v3, p0

    .line 30
    move-object v7, p3

    .line 31
    move-object v8, p4

    .line 32
    .line 33
    .line 34
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-ne p0, p1, :cond_1

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_1
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 45
    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p6, p5, 0x2

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    sget-object p3, Landroidx/compose/animation/core/SuspendAnimationKt$animateDecay$4;->INSTANCE:Landroidx/compose/animation/core/SuspendAnimationKt$animateDecay$4;

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/DecayAnimationSpec;ZLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final j(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 12
    .param p0    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;TT;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "TT;>;Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Lw7/l0;",
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
    .line 3
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->d()Landroidx/compose/animation/core/TwoWayConverter;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->f()Landroidx/compose/animation/core/AnimationVector;

    .line 12
    move-result-object v5

    .line 13
    .line 14
    new-instance v7, Landroidx/compose/animation/core/TargetBasedAnimation;

    .line 15
    move-object v0, v7

    .line 16
    move-object v1, p2

    .line 17
    move-object v4, p1

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 21
    .line 22
    if-eqz p3, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationState;->b()J

    .line 26
    move-result-wide v0

    .line 27
    :goto_0
    move-wide v8, v0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    move-object v6, p0

    .line 33
    .line 34
    move-object/from16 v10, p4

    .line 35
    .line 36
    move-object/from16 v11, p5

    .line 37
    .line 38
    .line 39
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/SuspendAnimationKt;->c(Landroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/Animation;JLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_1
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 50
    return-object v0
.end method

.method public static synthetic k(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x2

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    const/4 p2, 0x7

    .line 6
    const/4 p7, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p7, p7, v0, p2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->i(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 11
    move-result-object p2

    .line 12
    :cond_0
    move-object v2, p2

    .line 13
    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    const/4 p3, 0x0

    .line 18
    :cond_1
    move v3, p3

    .line 19
    .line 20
    and-int/lit8 p2, p6, 0x8

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    sget-object p4, Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;->INSTANCE:Landroidx/compose/animation/core/SuspendAnimationKt$animateTo$2;

    .line 25
    :cond_2
    move-object v4, p4

    .line 26
    move-object v0, p0

    .line 27
    move-object v1, p1

    .line 28
    move-object v5, p5

    .line 29
    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/SuspendAnimationKt;->j(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static final l(Landroidx/compose/animation/core/Animation;Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;",
            "Le8/l<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Lkotlin/coroutines/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/animation/core/Animation;->a()Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroidx/compose/animation/core/InfiniteAnimationPolicyKt;->a(Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance p0, Landroidx/compose/animation/core/SuspendAnimationKt$callWithFrameNanos$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/animation/core/SuspendAnimationKt$callWithFrameNanos$2;-><init>(Le8/l;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p2}, Landroidx/compose/runtime/MonotonicFrameClockKt;->b(Le8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static final m(Landroidx/compose/animation/core/AnimationScope;JJLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Le8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;JJ",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/AnimationScope;->j(J)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p5, p3, p4}, Landroidx/compose/animation/core/Animation;->e(J)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/AnimationScope;->l(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p5, p3, p4}, Landroidx/compose/animation/core/Animation;->g(J)Landroidx/compose/animation/core/AnimationVector;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/AnimationScope;->m(Landroidx/compose/animation/core/AnimationVector;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p5, p3, p4}, Landroidx/compose/animation/core/Animation;->b(J)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->c()J

    .line 27
    move-result-wide p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/AnimationScope;->i(J)V

    .line 31
    const/4 p1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/AnimationScope;->k(Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {p0, p6}, Landroidx/compose/animation/core/SuspendAnimationKt;->p(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p7, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private static final n(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Le8/l;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;JF",
            "Landroidx/compose/animation/core/Animation<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v0, p3, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p4}, Landroidx/compose/animation/core/Animation;->c()J

    .line 9
    move-result-wide v0

    .line 10
    :goto_0
    move-wide v5, v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->d()J

    .line 15
    move-result-wide v0

    .line 16
    .line 17
    sub-long v0, p1, v0

    .line 18
    long-to-float v0, v0

    .line 19
    div-float/2addr v0, p3

    .line 20
    float-to-long v0, v0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    move-object v2, p0

    .line 23
    move-wide v3, p1

    .line 24
    move-object v7, p4

    .line 25
    move-object v8, p5

    .line 26
    .line 27
    move-object/from16 v9, p6

    .line 28
    .line 29
    .line 30
    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/core/SuspendAnimationKt;->m(Landroidx/compose/animation/core/AnimationScope;JJLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Le8/l;)V

    .line 31
    return-void
.end method

.method public static final o(Lkotlin/coroutines/g;)F
    .locals 1
    .param p0    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/MotionDurationScale;->Key:Landroidx/compose/ui/MotionDurationScale$Key;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    check-cast p0, Landroidx/compose/ui/MotionDurationScale;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Landroidx/compose/ui/MotionDurationScale;->g0()F

    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 23
    :goto_0
    const/4 v0, 0x0

    .line 24
    .line 25
    cmpl-float v0, p0, v0

    .line 26
    .line 27
    if-ltz v0, :cond_1

    .line 28
    return p0

    .line 29
    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "Check failed."

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
.end method

.method public static final p(Landroidx/compose/animation/core/AnimationScope;Landroidx/compose/animation/core/AnimationState;)V
    .locals 2
    .param p0    # Landroidx/compose/animation/core/AnimationScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/AnimationScope<",
            "TT;TV;>;",
            "Landroidx/compose/animation/core/AnimationState<",
            "TT;TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "state"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->e()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/compose/animation/core/AnimationState;->n(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationState;->f()Landroidx/compose/animation/core/AnimationVector;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->g()Landroidx/compose/animation/core/AnimationVector;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroidx/compose/animation/core/AnimationVectorsKt;->c(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->b()J

    .line 32
    move-result-wide v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroidx/compose/animation/core/AnimationState;->k(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->c()J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroidx/compose/animation/core/AnimationState;->l(J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/animation/core/AnimationScope;->h()Z

    .line 46
    move-result p0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Landroidx/compose/animation/core/AnimationState;->m(Z)V

    .line 50
    return-void
.end method
