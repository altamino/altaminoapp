.class public final Landroidx/compose/animation/AnimatedContentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n*L\n1#1,737:1\n76#2:738\n76#2:789\n36#3:739\n36#3:746\n36#3:753\n50#3:773\n49#3:774\n25#3:781\n460#3,13:801\n473#3,3:816\n1057#4,6:740\n1057#4,6:747\n1057#4,6:754\n1057#4,6:775\n1057#4,6:782\n348#5,7:760\n1849#5,2:814\n32#6,6:767\n75#7:788\n76#7,11:790\n89#7:819\n*S KotlinDebug\n*F\n+ 1 AnimatedContent.kt\nandroidx/compose/animation/AnimatedContentKt\n*L\n586#1:738\n666#1:789\n587#1:739\n592#1:746\n593#1:753\n664#1:773\n664#1:774\n675#1:781\n666#1:801,13\n666#1:816,3\n587#1:740,6\n592#1:747,6\n593#1:754,6\n664#1:775,6\n675#1:782,6\n614#1:760,7\n669#1:814,2\n624#1:767,6\n666#1:788\n666#1:790,11\n666#1:819\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Alignment;Le8/l;Le8/r;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TS;>;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Le8/l<",
            "-TS;+",
            "Ljava/lang/Object;",
            ">;",
            "Le8/r<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v9, p5

    .line 5
    .line 6
    move/from16 v10, p7

    .line 7
    .line 8
    const-string v0, "<this>"

    .line 9
    .line 10
    .line 11
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x6d60584

    .line 20
    .line 21
    move-object/from16 v1, p6

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v11

    .line 26
    .line 27
    const/high16 v0, -0x80000000

    .line 28
    .line 29
    and-int v0, p8, v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    or-int/lit8 v0, v10, 0x6

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v0, v10, 0xe

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    :goto_0
    or-int/2addr v0, v10

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v10

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v1, p8, 0x1

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    or-int/lit8 v0, v0, 0x30

    .line 57
    .line 58
    :cond_3
    move-object/from16 v2, p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    and-int/lit8 v2, v10, 0x70

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    move-object/from16 v2, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v3

    .line 70
    .line 71
    if-eqz v3, :cond_5

    .line 72
    .line 73
    const/16 v3, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    const/16 v3, 0x10

    .line 77
    :goto_2
    or-int/2addr v0, v3

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v3, p8, 0x2

    .line 80
    .line 81
    if-eqz v3, :cond_7

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x180

    .line 84
    .line 85
    :cond_6
    move-object/from16 v4, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v4, v10, 0x380

    .line 89
    .line 90
    if-nez v4, :cond_6

    .line 91
    .line 92
    move-object/from16 v4, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 96
    move-result v5

    .line 97
    .line 98
    if-eqz v5, :cond_8

    .line 99
    .line 100
    const/16 v5, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v5, 0x80

    .line 104
    :goto_4
    or-int/2addr v0, v5

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v5, p8, 0x4

    .line 107
    .line 108
    if-eqz v5, :cond_a

    .line 109
    .line 110
    or-int/lit16 v0, v0, 0xc00

    .line 111
    .line 112
    :cond_9
    move-object/from16 v6, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v6, v10, 0x1c00

    .line 116
    .line 117
    if-nez v6, :cond_9

    .line 118
    .line 119
    move-object/from16 v6, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 123
    move-result v7

    .line 124
    .line 125
    if-eqz v7, :cond_b

    .line 126
    .line 127
    const/16 v7, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_b
    const/16 v7, 0x400

    .line 131
    :goto_6
    or-int/2addr v0, v7

    .line 132
    .line 133
    :goto_7
    and-int/lit8 v7, p8, 0x8

    .line 134
    .line 135
    if-eqz v7, :cond_d

    .line 136
    .line 137
    or-int/lit16 v0, v0, 0x6000

    .line 138
    .line 139
    :cond_c
    move-object/from16 v12, p4

    .line 140
    goto :goto_9

    .line 141
    .line 142
    .line 143
    :cond_d
    const v12, 0xe000

    .line 144
    and-int/2addr v12, v10

    .line 145
    .line 146
    if-nez v12, :cond_c

    .line 147
    .line 148
    move-object/from16 v12, p4

    .line 149
    .line 150
    .line 151
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 152
    move-result v13

    .line 153
    .line 154
    if-eqz v13, :cond_e

    .line 155
    .line 156
    const/16 v13, 0x4000

    .line 157
    goto :goto_8

    .line 158
    .line 159
    :cond_e
    const/16 v13, 0x2000

    .line 160
    :goto_8
    or-int/2addr v0, v13

    .line 161
    .line 162
    :goto_9
    and-int/lit8 v13, p8, 0x10

    .line 163
    .line 164
    if-eqz v13, :cond_10

    .line 165
    .line 166
    const/high16 v13, 0x30000

    .line 167
    :goto_a
    or-int/2addr v0, v13

    .line 168
    :cond_f
    move v13, v0

    .line 169
    goto :goto_b

    .line 170
    .line 171
    :cond_10
    const/high16 v13, 0x70000

    .line 172
    and-int/2addr v13, v10

    .line 173
    .line 174
    if-nez v13, :cond_f

    .line 175
    .line 176
    .line 177
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 178
    move-result v13

    .line 179
    .line 180
    if-eqz v13, :cond_11

    .line 181
    .line 182
    const/high16 v13, 0x20000

    .line 183
    goto :goto_a

    .line 184
    .line 185
    :cond_11
    const/high16 v13, 0x10000

    .line 186
    goto :goto_a

    .line 187
    .line 188
    .line 189
    :goto_b
    const v0, 0x5b6db

    .line 190
    and-int/2addr v0, v13

    .line 191
    .line 192
    .line 193
    const v14, 0x12492

    .line 194
    .line 195
    if-ne v0, v14, :cond_13

    .line 196
    .line 197
    .line 198
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 199
    move-result v0

    .line 200
    .line 201
    if-nez v0, :cond_12

    .line 202
    goto :goto_c

    .line 203
    .line 204
    .line 205
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 206
    move-object v3, v4

    .line 207
    move-object v4, v6

    .line 208
    move-object v5, v12

    .line 209
    .line 210
    goto/16 :goto_16

    .line 211
    .line 212
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 213
    .line 214
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 215
    move-object v14, v0

    .line 216
    goto :goto_d

    .line 217
    :cond_14
    move-object v14, v2

    .line 218
    .line 219
    :goto_d
    if-eqz v3, :cond_15

    .line 220
    .line 221
    sget-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$3;

    .line 222
    move-object v15, v0

    .line 223
    goto :goto_e

    .line 224
    :cond_15
    move-object v15, v4

    .line 225
    .line 226
    :goto_e
    if-eqz v5, :cond_16

    .line 227
    .line 228
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 232
    move-result-object v0

    .line 233
    move-object v6, v0

    .line 234
    .line 235
    :cond_16
    if-eqz v7, :cond_17

    .line 236
    .line 237
    sget-object v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$4;

    .line 238
    move-object v12, v0

    .line 239
    .line 240
    .line 241
    :cond_17
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 249
    .line 250
    .line 251
    const v1, 0x44faf204

    .line 252
    .line 253
    .line 254
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 255
    .line 256
    .line 257
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 258
    move-result v2

    .line 259
    .line 260
    .line 261
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 262
    move-result-object v3

    .line 263
    .line 264
    if-nez v2, :cond_18

    .line 265
    .line 266
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 270
    move-result-object v2

    .line 271
    .line 272
    if-ne v3, v2, :cond_19

    .line 273
    .line 274
    :cond_18
    new-instance v3, Landroidx/compose/animation/AnimatedContentScope;

    .line 275
    .line 276
    .line 277
    invoke-direct {v3, v8, v6, v0}, Landroidx/compose/animation/AnimatedContentScope;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 284
    move-object v7, v3

    .line 285
    .line 286
    check-cast v7, Landroidx/compose/animation/AnimatedContentScope;

    .line 287
    .line 288
    .line 289
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 293
    move-result v2

    .line 294
    .line 295
    .line 296
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 297
    move-result-object v3

    .line 298
    const/4 v5, 0x0

    .line 299
    const/4 v4, 0x1

    .line 300
    .line 301
    if-nez v2, :cond_1a

    .line 302
    .line 303
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 307
    move-result-object v2

    .line 308
    .line 309
    if-ne v3, v2, :cond_1b

    .line 310
    .line 311
    :cond_1a
    new-array v2, v4, [Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 315
    move-result-object v3

    .line 316
    .line 317
    aput-object v3, v2, v5

    .line 318
    .line 319
    .line 320
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->e([Ljava/lang/Object;)Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 321
    move-result-object v3

    .line 322
    .line 323
    .line 324
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    :cond_1b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 328
    .line 329
    check-cast v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 330
    .line 331
    .line 332
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 336
    move-result v1

    .line 337
    .line 338
    .line 339
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 340
    move-result-object v2

    .line 341
    .line 342
    if-nez v1, :cond_1c

    .line 343
    .line 344
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 348
    move-result-object v1

    .line 349
    .line 350
    if-ne v2, v1, :cond_1d

    .line 351
    .line 352
    :cond_1c
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 353
    .line 354
    .line 355
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    :cond_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 362
    .line 363
    check-cast v2, Ljava/util/Map;

    .line 364
    .line 365
    .line 366
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 367
    move-result-object v1

    .line 368
    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 371
    move-result-object v5

    .line 372
    .line 373
    .line 374
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    move-result v1

    .line 376
    .line 377
    if-eqz v1, :cond_22

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 381
    move-result v1

    .line 382
    .line 383
    if-ne v1, v4, :cond_1e

    .line 384
    const/4 v5, 0x0

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 388
    move-result-object v1

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 392
    move-result-object v5

    .line 393
    .line 394
    .line 395
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 396
    move-result v1

    .line 397
    .line 398
    if-nez v1, :cond_1f

    .line 399
    .line 400
    .line 401
    :cond_1e
    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 402
    .line 403
    .line 404
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 405
    move-result-object v1

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    :cond_1f
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 412
    move-result v1

    .line 413
    .line 414
    if-ne v1, v4, :cond_20

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 418
    move-result-object v1

    .line 419
    .line 420
    .line 421
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 422
    move-result v1

    .line 423
    .line 424
    if-eqz v1, :cond_21

    .line 425
    .line 426
    .line 427
    :cond_20
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 428
    .line 429
    .line 430
    :cond_21
    invoke-virtual {v7, v6}, Landroidx/compose/animation/AnimatedContentScope;->p(Landroidx/compose/ui/Alignment;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v0}, Landroidx/compose/animation/AnimatedContentScope;->q(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 434
    .line 435
    .line 436
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 437
    move-result-object v0

    .line 438
    .line 439
    .line 440
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 441
    move-result-object v1

    .line 442
    .line 443
    .line 444
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    move-result v0

    .line 446
    .line 447
    if-nez v0, :cond_26

    .line 448
    .line 449
    .line 450
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 451
    move-result-object v0

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->contains(Ljava/lang/Object;)Z

    .line 455
    move-result v0

    .line 456
    .line 457
    if-nez v0, :cond_26

    .line 458
    .line 459
    .line 460
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 461
    move-result-object v0

    .line 462
    const/4 v1, 0x0

    .line 463
    .line 464
    .line 465
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    move-result v5

    .line 467
    .line 468
    if-eqz v5, :cond_24

    .line 469
    .line 470
    .line 471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    move-result-object v5

    .line 473
    .line 474
    .line 475
    invoke-interface {v12, v5}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    move-result-object v5

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 480
    move-result-object v4

    .line 481
    .line 482
    .line 483
    invoke-interface {v12, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    move-result-object v4

    .line 485
    .line 486
    .line 487
    invoke-static {v5, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 488
    move-result v4

    .line 489
    .line 490
    if-eqz v4, :cond_23

    .line 491
    const/4 v0, -0x1

    .line 492
    goto :goto_10

    .line 493
    .line 494
    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 495
    const/4 v4, 0x1

    .line 496
    goto :goto_f

    .line 497
    :cond_24
    const/4 v0, -0x1

    .line 498
    const/4 v1, -0x1

    .line 499
    .line 500
    :goto_10
    if-ne v1, v0, :cond_25

    .line 501
    .line 502
    .line 503
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 504
    move-result-object v0

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 508
    goto :goto_11

    .line 509
    .line 510
    .line 511
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 512
    move-result-object v0

    .line 513
    .line 514
    .line 515
    invoke-virtual {v3, v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    :cond_26
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 519
    move-result-object v0

    .line 520
    .line 521
    .line 522
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 523
    move-result v0

    .line 524
    .line 525
    if-nez v0, :cond_27

    .line 526
    .line 527
    .line 528
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 529
    .line 530
    .line 531
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 532
    move-result v5

    .line 533
    const/4 v4, 0x0

    .line 534
    .line 535
    :goto_12
    if-ge v4, v5, :cond_27

    .line 536
    .line 537
    .line 538
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 539
    move-result-object v1

    .line 540
    .line 541
    new-instance v0, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;

    .line 542
    .line 543
    move-object/from16 p3, v0

    .line 544
    .line 545
    move-object/from16 p4, v1

    .line 546
    .line 547
    move-object/from16 v1, p0

    .line 548
    move-object v8, v2

    .line 549
    .line 550
    move-object/from16 v2, p4

    .line 551
    .line 552
    move-object/from16 v16, v3

    .line 553
    move v3, v13

    .line 554
    .line 555
    move/from16 v17, v4

    .line 556
    const/4 v9, 0x1

    .line 557
    move-object v4, v15

    .line 558
    .line 559
    move/from16 v19, v5

    .line 560
    .line 561
    const/16 v18, 0x0

    .line 562
    move-object v5, v7

    .line 563
    .line 564
    move-object/from16 v20, v6

    .line 565
    .line 566
    move-object/from16 v6, p5

    .line 567
    .line 568
    move-object/from16 v21, v7

    .line 569
    .line 570
    move-object/from16 v7, v16

    .line 571
    .line 572
    .line 573
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$5$1;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;ILe8/l;Landroidx/compose/animation/AnimatedContentScope;Le8/r;Landroidx/compose/runtime/snapshots/SnapshotStateList;)V

    .line 574
    .line 575
    .line 576
    const v0, 0x396fd7a5

    .line 577
    .line 578
    move-object/from16 v1, p3

    .line 579
    .line 580
    .line 581
    invoke-static {v11, v0, v9, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 582
    move-result-object v0

    .line 583
    .line 584
    move-object/from16 v1, p4

    .line 585
    .line 586
    .line 587
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    add-int/lit8 v4, v17, 0x1

    .line 590
    .line 591
    move-object/from16 v9, p5

    .line 592
    move-object v2, v8

    .line 593
    .line 594
    move-object/from16 v3, v16

    .line 595
    .line 596
    move/from16 v5, v19

    .line 597
    .line 598
    move-object/from16 v6, v20

    .line 599
    .line 600
    move-object/from16 v7, v21

    .line 601
    .line 602
    move-object/from16 v8, p0

    .line 603
    goto :goto_12

    .line 604
    :cond_27
    move-object v8, v2

    .line 605
    .line 606
    move-object/from16 v16, v3

    .line 607
    .line 608
    move-object/from16 v20, v6

    .line 609
    .line 610
    move-object/from16 v21, v7

    .line 611
    .line 612
    const/16 v18, 0x0

    .line 613
    .line 614
    .line 615
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 616
    move-result-object v0

    .line 617
    .line 618
    .line 619
    const v1, 0x1e7b2b64

    .line 620
    .line 621
    .line 622
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 623
    .line 624
    move-object/from16 v3, v21

    .line 625
    .line 626
    .line 627
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 628
    move-result v1

    .line 629
    .line 630
    .line 631
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 632
    move-result v0

    .line 633
    or-int/2addr v0, v1

    .line 634
    .line 635
    .line 636
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 637
    move-result-object v1

    .line 638
    .line 639
    if-nez v0, :cond_28

    .line 640
    .line 641
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 645
    move-result-object v0

    .line 646
    .line 647
    if-ne v1, v0, :cond_29

    .line 648
    .line 649
    .line 650
    :cond_28
    invoke-interface {v15, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    move-result-object v0

    .line 652
    move-object v1, v0

    .line 653
    .line 654
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 655
    .line 656
    .line 657
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    :cond_29
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 661
    .line 662
    check-cast v1, Landroidx/compose/animation/ContentTransform;

    .line 663
    .line 664
    const/16 v0, 0x48

    .line 665
    .line 666
    .line 667
    invoke-virtual {v3, v1, v11, v0}, Landroidx/compose/animation/AnimatedContentScope;->g(Landroidx/compose/animation/ContentTransform;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 668
    move-result-object v0

    .line 669
    .line 670
    .line 671
    invoke-interface {v14, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 672
    move-result-object v0

    .line 673
    .line 674
    .line 675
    const v1, -0x1d58f75c

    .line 676
    .line 677
    .line 678
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 679
    .line 680
    .line 681
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 682
    move-result-object v1

    .line 683
    .line 684
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 688
    move-result-object v2

    .line 689
    .line 690
    if-ne v1, v2, :cond_2a

    .line 691
    .line 692
    new-instance v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 693
    .line 694
    .line 695
    invoke-direct {v1, v3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedContentScope;)V

    .line 696
    .line 697
    .line 698
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    :cond_2a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 702
    .line 703
    check-cast v1, Landroidx/compose/animation/AnimatedContentMeasurePolicy;

    .line 704
    .line 705
    .line 706
    const v2, -0x4ee9b9da

    .line 707
    .line 708
    .line 709
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 710
    .line 711
    .line 712
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 713
    move-result-object v2

    .line 714
    .line 715
    .line 716
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 717
    move-result-object v2

    .line 718
    .line 719
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 720
    .line 721
    .line 722
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 723
    move-result-object v3

    .line 724
    .line 725
    .line 726
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 727
    move-result-object v3

    .line 728
    .line 729
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 730
    .line 731
    .line 732
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 733
    move-result-object v4

    .line 734
    .line 735
    .line 736
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 737
    move-result-object v4

    .line 738
    .line 739
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 740
    .line 741
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 745
    move-result-object v6

    .line 746
    .line 747
    .line 748
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 749
    move-result-object v0

    .line 750
    .line 751
    .line 752
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 753
    move-result-object v7

    .line 754
    .line 755
    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    .line 756
    .line 757
    if-nez v7, :cond_2b

    .line 758
    .line 759
    .line 760
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 761
    .line 762
    .line 763
    :cond_2b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->e()V

    .line 764
    .line 765
    .line 766
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->r()Z

    .line 767
    move-result v7

    .line 768
    .line 769
    if-eqz v7, :cond_2c

    .line 770
    .line 771
    .line 772
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 773
    goto :goto_13

    .line 774
    .line 775
    .line 776
    :cond_2c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->c()V

    .line 777
    .line 778
    .line 779
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->L()V

    .line 780
    .line 781
    .line 782
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 783
    move-result-object v6

    .line 784
    .line 785
    .line 786
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 787
    move-result-object v7

    .line 788
    .line 789
    .line 790
    invoke-static {v6, v1, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 794
    move-result-object v1

    .line 795
    .line 796
    .line 797
    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 801
    move-result-object v1

    .line 802
    .line 803
    .line 804
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 808
    move-result-object v1

    .line 809
    .line 810
    .line 811
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 812
    .line 813
    .line 814
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->o()V

    .line 815
    .line 816
    .line 817
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 818
    move-result-object v1

    .line 819
    .line 820
    .line 821
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 822
    move-result-object v1

    .line 823
    .line 824
    .line 825
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 826
    move-result-object v2

    .line 827
    .line 828
    .line 829
    invoke-interface {v0, v1, v11, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    const v0, 0x7ab4aae9

    .line 833
    .line 834
    .line 835
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 836
    .line 837
    .line 838
    const v0, -0x1aeaa24d

    .line 839
    .line 840
    .line 841
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 842
    .line 843
    .line 844
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 845
    move-result-object v0

    .line 846
    .line 847
    .line 848
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 849
    move-result v1

    .line 850
    .line 851
    if-eqz v1, :cond_2e

    .line 852
    .line 853
    .line 854
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 855
    move-result-object v1

    .line 856
    .line 857
    .line 858
    const v2, -0x67afab61

    .line 859
    .line 860
    .line 861
    invoke-interface {v12, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    move-result-object v3

    .line 863
    .line 864
    .line 865
    invoke-interface {v11, v2, v3}, Landroidx/compose/runtime/Composer;->K(ILjava/lang/Object;)V

    .line 866
    .line 867
    .line 868
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    move-result-object v1

    .line 870
    .line 871
    check-cast v1, Le8/p;

    .line 872
    .line 873
    if-nez v1, :cond_2d

    .line 874
    goto :goto_15

    .line 875
    .line 876
    .line 877
    :cond_2d
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 878
    move-result-object v2

    .line 879
    .line 880
    .line 881
    invoke-interface {v1, v11, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    sget-object v1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 884
    .line 885
    .line 886
    :goto_15
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->P()V

    .line 887
    goto :goto_14

    .line 888
    .line 889
    .line 890
    :cond_2e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 891
    .line 892
    .line 893
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 894
    .line 895
    .line 896
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->d()V

    .line 897
    .line 898
    .line 899
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 900
    move-object v5, v12

    .line 901
    move-object v2, v14

    .line 902
    move-object v3, v15

    .line 903
    .line 904
    move-object/from16 v4, v20

    .line 905
    .line 906
    .line 907
    :goto_16
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 908
    move-result-object v9

    .line 909
    .line 910
    if-nez v9, :cond_2f

    .line 911
    goto :goto_17

    .line 912
    .line 913
    :cond_2f
    new-instance v11, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$8;

    .line 914
    move-object v0, v11

    .line 915
    .line 916
    move-object/from16 v1, p0

    .line 917
    .line 918
    move-object/from16 v6, p5

    .line 919
    .line 920
    move/from16 v7, p7

    .line 921
    .line 922
    move/from16 v8, p8

    .line 923
    .line 924
    .line 925
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$8;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Alignment;Le8/l;Le8/r;II)V

    .line 926
    .line 927
    .line 928
    invoke-interface {v9, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 929
    :goto_17
    return-void
.end method

.method public static final b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Alignment;Le8/r;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "TS;>;",
            "Landroidx/compose/animation/ContentTransform;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Le8/r<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "-TS;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v11, p4

    .line 5
    .line 6
    move/from16 v12, p6

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7ea20f6b

    .line 15
    .line 16
    move-object/from16 v2, p5

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    and-int/lit8 v2, p7, 0x1

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    or-int/lit8 v2, v12, 0x6

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    and-int/lit8 v2, v12, 0xe

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    const/4 v2, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x2

    .line 41
    :goto_0
    or-int/2addr v2, v12

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v12

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v3, p7, 0x2

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    or-int/lit8 v2, v2, 0x30

    .line 50
    .line 51
    :cond_3
    move-object/from16 v4, p1

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_4
    and-int/lit8 v4, v12, 0x70

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    move-object/from16 v4, p1

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 62
    move-result v5

    .line 63
    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    const/16 v5, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_5
    const/16 v5, 0x10

    .line 70
    :goto_2
    or-int/2addr v2, v5

    .line 71
    .line 72
    :goto_3
    and-int/lit8 v5, p7, 0x4

    .line 73
    .line 74
    if-eqz v5, :cond_7

    .line 75
    .line 76
    or-int/lit16 v2, v2, 0x180

    .line 77
    .line 78
    :cond_6
    move-object/from16 v6, p2

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_7
    and-int/lit16 v6, v12, 0x380

    .line 82
    .line 83
    if-nez v6, :cond_6

    .line 84
    .line 85
    move-object/from16 v6, p2

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 89
    move-result v7

    .line 90
    .line 91
    if-eqz v7, :cond_8

    .line 92
    .line 93
    const/16 v7, 0x100

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_8
    const/16 v7, 0x80

    .line 97
    :goto_4
    or-int/2addr v2, v7

    .line 98
    .line 99
    :goto_5
    and-int/lit8 v7, p7, 0x8

    .line 100
    .line 101
    if-eqz v7, :cond_a

    .line 102
    .line 103
    or-int/lit16 v2, v2, 0xc00

    .line 104
    .line 105
    :cond_9
    move-object/from16 v8, p3

    .line 106
    goto :goto_7

    .line 107
    .line 108
    :cond_a
    and-int/lit16 v8, v12, 0x1c00

    .line 109
    .line 110
    if-nez v8, :cond_9

    .line 111
    .line 112
    move-object/from16 v8, p3

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 116
    move-result v9

    .line 117
    .line 118
    if-eqz v9, :cond_b

    .line 119
    .line 120
    const/16 v9, 0x800

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_b
    const/16 v9, 0x400

    .line 124
    :goto_6
    or-int/2addr v2, v9

    .line 125
    .line 126
    :goto_7
    and-int/lit8 v9, p7, 0x10

    .line 127
    .line 128
    if-eqz v9, :cond_c

    .line 129
    .line 130
    or-int/lit16 v2, v2, 0x6000

    .line 131
    goto :goto_9

    .line 132
    .line 133
    .line 134
    :cond_c
    const v9, 0xe000

    .line 135
    and-int/2addr v9, v12

    .line 136
    .line 137
    if-nez v9, :cond_e

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 141
    move-result v9

    .line 142
    .line 143
    if-eqz v9, :cond_d

    .line 144
    .line 145
    const/16 v9, 0x4000

    .line 146
    goto :goto_8

    .line 147
    .line 148
    :cond_d
    const/16 v9, 0x2000

    .line 149
    :goto_8
    or-int/2addr v2, v9

    .line 150
    .line 151
    .line 152
    :cond_e
    :goto_9
    const v9, 0xb6db

    .line 153
    and-int/2addr v9, v2

    .line 154
    .line 155
    const/16 v10, 0x2492

    .line 156
    .line 157
    if-ne v9, v10, :cond_10

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 161
    move-result v9

    .line 162
    .line 163
    if-nez v9, :cond_f

    .line 164
    goto :goto_a

    .line 165
    .line 166
    .line 167
    :cond_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 168
    move-object v2, v4

    .line 169
    move-object v3, v6

    .line 170
    move-object v4, v8

    .line 171
    goto :goto_e

    .line 172
    .line 173
    :cond_10
    :goto_a
    if-eqz v3, :cond_11

    .line 174
    .line 175
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 176
    move-object v13, v3

    .line 177
    goto :goto_b

    .line 178
    :cond_11
    move-object v13, v4

    .line 179
    .line 180
    :goto_b
    if-eqz v5, :cond_12

    .line 181
    .line 182
    sget-object v3, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$1;

    .line 183
    move-object v14, v3

    .line 184
    goto :goto_c

    .line 185
    :cond_12
    move-object v14, v6

    .line 186
    .line 187
    :goto_c
    if-eqz v7, :cond_13

    .line 188
    .line 189
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 193
    move-result-object v3

    .line 194
    move-object v15, v3

    .line 195
    goto :goto_d

    .line 196
    :cond_13
    move-object v15, v8

    .line 197
    .line 198
    :goto_d
    and-int/lit8 v3, v2, 0x8

    .line 199
    .line 200
    or-int/lit8 v3, v3, 0x30

    .line 201
    .line 202
    and-int/lit8 v4, v2, 0xe

    .line 203
    or-int/2addr v3, v4

    .line 204
    const/4 v4, 0x0

    .line 205
    .line 206
    const-string v5, "AnimatedContent"

    .line 207
    .line 208
    .line 209
    invoke-static {v1, v5, v0, v3, v4}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 210
    move-result-object v3

    .line 211
    const/4 v6, 0x0

    .line 212
    .line 213
    and-int/lit8 v4, v2, 0x70

    .line 214
    .line 215
    and-int/lit16 v5, v2, 0x380

    .line 216
    or-int/2addr v4, v5

    .line 217
    .line 218
    and-int/lit16 v5, v2, 0x1c00

    .line 219
    or-int/2addr v4, v5

    .line 220
    .line 221
    shl-int/lit8 v2, v2, 0x3

    .line 222
    .line 223
    const/high16 v5, 0x70000

    .line 224
    and-int/2addr v2, v5

    .line 225
    .line 226
    or-int v9, v4, v2

    .line 227
    .line 228
    const/16 v10, 0x8

    .line 229
    move-object v2, v3

    .line 230
    move-object v3, v13

    .line 231
    move-object v4, v14

    .line 232
    move-object v5, v15

    .line 233
    .line 234
    move-object/from16 v7, p4

    .line 235
    move-object v8, v0

    .line 236
    .line 237
    .line 238
    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/AnimatedContentKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Alignment;Le8/l;Le8/r;Landroidx/compose/runtime/Composer;II)V

    .line 239
    move-object v2, v13

    .line 240
    move-object v3, v14

    .line 241
    move-object v4, v15

    .line 242
    .line 243
    .line 244
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 245
    move-result-object v8

    .line 246
    .line 247
    if-nez v8, :cond_14

    .line 248
    goto :goto_f

    .line 249
    .line 250
    :cond_14
    new-instance v9, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$2;

    .line 251
    move-object v0, v9

    .line 252
    .line 253
    move-object/from16 v1, p0

    .line 254
    .line 255
    move-object/from16 v5, p4

    .line 256
    .line 257
    move/from16 v6, p6

    .line 258
    .line 259
    move/from16 v7, p7

    .line 260
    .line 261
    .line 262
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$2;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/ui/Alignment;Le8/r;II)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 266
    :goto_f
    return-void
.end method

.method public static final c(ZLe8/p;)Landroidx/compose/animation/SizeTransform;
    .locals 1
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "+",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;>;)",
            "Landroidx/compose/animation/SizeTransform;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "sizeAnimationSpec"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/animation/SizeTransformImpl;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/SizeTransformImpl;-><init>(ZLe8/p;)V

    .line 11
    return-object v0
.end method

.method public static synthetic d(ZLe8/p;ILjava/lang/Object;)Landroidx/compose/animation/SizeTransform;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p2, 0x1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    sget-object p1, Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;->INSTANCE:Landroidx/compose/animation/AnimatedContentKt$SizeTransform$1;

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/AnimatedContentKt;->c(ZLe8/p;)Landroidx/compose/animation/SizeTransform;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final e(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ContentTransform;
    .locals 8
    .param p0    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "exit"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/animation/ContentTransform;

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    .line 16
    const/16 v6, 0xc

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v1, v0

    .line 19
    move-object v2, p0

    .line 20
    move-object v3, p1

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/ContentTransform;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;FLandroidx/compose/animation/SizeTransform;ILkotlin/jvm/internal/k;)V

    .line 24
    return-object v0
.end method
