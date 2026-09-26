.class public final Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridDslKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,493:1\n155#2:494\n155#2:495\n67#3,3:496\n66#3:499\n67#3,3:506\n66#3:509\n1057#4,6:500\n1057#4,6:510\n*S KotlinDebug\n*F\n+ 1 LazyGridDsl.kt\nandroidx/compose/foundation/lazy/grid/LazyGridDslKt\n*L\n67#1:494\n121#1:495\n153#1:496,3\n153#1:499\n185#1:506,3\n185#1:509\n153#1:500,6\n185#1:510,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Landroidx/compose/foundation/lazy/grid/GridCells;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
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
    move-object/from16 v0, p9

    .line 5
    .line 6
    move/from16 v15, p11

    .line 7
    .line 8
    move/from16 v14, p12

    .line 9
    .line 10
    const-string v2, "rows"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v2, "content"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v2, 0x7e93b31a

    .line 22
    .line 23
    move-object/from16 v3, p10

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v13

    .line 28
    .line 29
    and-int/lit8 v2, v14, 0x1

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    or-int/lit8 v2, v15, 0x6

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v2, v15, 0xe

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    const/4 v2, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x2

    .line 48
    :goto_0
    or-int/2addr v2, v15

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v15

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v3, v14, 0x2

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    or-int/lit8 v2, v2, 0x30

    .line 57
    .line 58
    :cond_3
    move-object/from16 v4, p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    and-int/lit8 v4, v15, 0x70

    .line 62
    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    move-object/from16 v4, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    .line 71
    if-eqz v5, :cond_5

    .line 72
    .line 73
    const/16 v5, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    const/16 v5, 0x10

    .line 77
    :goto_2
    or-int/2addr v2, v5

    .line 78
    .line 79
    :goto_3
    and-int/lit16 v5, v15, 0x380

    .line 80
    .line 81
    if-nez v5, :cond_8

    .line 82
    .line 83
    and-int/lit8 v5, v14, 0x4

    .line 84
    .line 85
    if-nez v5, :cond_6

    .line 86
    .line 87
    move-object/from16 v5, p2

    .line 88
    .line 89
    .line 90
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 91
    move-result v6

    .line 92
    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    const/16 v6, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_6
    move-object/from16 v5, p2

    .line 99
    .line 100
    :cond_7
    const/16 v6, 0x80

    .line 101
    :goto_4
    or-int/2addr v2, v6

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :cond_8
    move-object/from16 v5, p2

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v6, v14, 0x8

    .line 107
    .line 108
    if-eqz v6, :cond_a

    .line 109
    .line 110
    or-int/lit16 v2, v2, 0xc00

    .line 111
    .line 112
    :cond_9
    move-object/from16 v7, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v7, v15, 0x1c00

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move-object/from16 v7, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 123
    move-result v8

    .line 124
    .line 125
    if-eqz v8, :cond_b

    .line 126
    .line 127
    const/16 v8, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_b
    const/16 v8, 0x400

    .line 131
    :goto_6
    or-int/2addr v2, v8

    .line 132
    .line 133
    :goto_7
    and-int/lit8 v8, v14, 0x10

    .line 134
    .line 135
    .line 136
    const v9, 0xe000

    .line 137
    .line 138
    if-eqz v8, :cond_d

    .line 139
    .line 140
    or-int/lit16 v2, v2, 0x6000

    .line 141
    .line 142
    :cond_c
    move/from16 v10, p4

    .line 143
    goto :goto_9

    .line 144
    .line 145
    :cond_d
    and-int v10, v15, v9

    .line 146
    .line 147
    if-nez v10, :cond_c

    .line 148
    .line 149
    move/from16 v10, p4

    .line 150
    .line 151
    .line 152
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 153
    move-result v11

    .line 154
    .line 155
    if-eqz v11, :cond_e

    .line 156
    .line 157
    const/16 v11, 0x4000

    .line 158
    goto :goto_8

    .line 159
    .line 160
    :cond_e
    const/16 v11, 0x2000

    .line 161
    :goto_8
    or-int/2addr v2, v11

    .line 162
    .line 163
    :goto_9
    const/high16 v11, 0x70000

    .line 164
    and-int/2addr v11, v15

    .line 165
    .line 166
    if-nez v11, :cond_11

    .line 167
    .line 168
    and-int/lit8 v11, v14, 0x20

    .line 169
    .line 170
    if-nez v11, :cond_f

    .line 171
    .line 172
    move-object/from16 v11, p5

    .line 173
    .line 174
    .line 175
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v12

    .line 177
    .line 178
    if-eqz v12, :cond_10

    .line 179
    .line 180
    const/high16 v12, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_f
    move-object/from16 v11, p5

    .line 184
    .line 185
    :cond_10
    const/high16 v12, 0x10000

    .line 186
    :goto_a
    or-int/2addr v2, v12

    .line 187
    goto :goto_b

    .line 188
    .line 189
    :cond_11
    move-object/from16 v11, p5

    .line 190
    .line 191
    :goto_b
    and-int/lit8 v12, v14, 0x40

    .line 192
    .line 193
    const/high16 v16, 0x380000

    .line 194
    .line 195
    if-eqz v12, :cond_12

    .line 196
    .line 197
    const/high16 v17, 0x180000

    .line 198
    .line 199
    or-int v2, v2, v17

    .line 200
    .line 201
    move-object/from16 v9, p6

    .line 202
    goto :goto_d

    .line 203
    .line 204
    :cond_12
    and-int v17, v15, v16

    .line 205
    .line 206
    move-object/from16 v9, p6

    .line 207
    .line 208
    if-nez v17, :cond_14

    .line 209
    .line 210
    .line 211
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 212
    move-result v17

    .line 213
    .line 214
    if-eqz v17, :cond_13

    .line 215
    .line 216
    const/high16 v17, 0x100000

    .line 217
    goto :goto_c

    .line 218
    .line 219
    :cond_13
    const/high16 v17, 0x80000

    .line 220
    .line 221
    :goto_c
    or-int v2, v2, v17

    .line 222
    .line 223
    :cond_14
    :goto_d
    const/high16 v17, 0x1c00000

    .line 224
    .line 225
    and-int v18, v15, v17

    .line 226
    .line 227
    if-nez v18, :cond_17

    .line 228
    .line 229
    and-int/lit16 v4, v14, 0x80

    .line 230
    .line 231
    if-nez v4, :cond_15

    .line 232
    .line 233
    move-object/from16 v4, p7

    .line 234
    .line 235
    .line 236
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 237
    move-result v18

    .line 238
    .line 239
    if-eqz v18, :cond_16

    .line 240
    .line 241
    const/high16 v18, 0x800000

    .line 242
    goto :goto_e

    .line 243
    .line 244
    :cond_15
    move-object/from16 v4, p7

    .line 245
    .line 246
    :cond_16
    const/high16 v18, 0x400000

    .line 247
    .line 248
    :goto_e
    or-int v2, v2, v18

    .line 249
    goto :goto_f

    .line 250
    .line 251
    :cond_17
    move-object/from16 v4, p7

    .line 252
    .line 253
    :goto_f
    and-int/lit16 v4, v14, 0x100

    .line 254
    .line 255
    const/high16 v18, 0xe000000

    .line 256
    .line 257
    if-eqz v4, :cond_18

    .line 258
    .line 259
    const/high16 v19, 0x6000000

    .line 260
    .line 261
    or-int v2, v2, v19

    .line 262
    .line 263
    move/from16 v5, p8

    .line 264
    goto :goto_11

    .line 265
    .line 266
    :cond_18
    and-int v19, v15, v18

    .line 267
    .line 268
    move/from16 v5, p8

    .line 269
    .line 270
    if-nez v19, :cond_1a

    .line 271
    .line 272
    .line 273
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 274
    move-result v19

    .line 275
    .line 276
    if-eqz v19, :cond_19

    .line 277
    .line 278
    const/high16 v19, 0x4000000

    .line 279
    goto :goto_10

    .line 280
    .line 281
    :cond_19
    const/high16 v19, 0x2000000

    .line 282
    .line 283
    :goto_10
    or-int v2, v2, v19

    .line 284
    .line 285
    :cond_1a
    :goto_11
    and-int/lit16 v5, v14, 0x200

    .line 286
    .line 287
    const/high16 v19, 0x70000000

    .line 288
    .line 289
    if-eqz v5, :cond_1b

    .line 290
    .line 291
    const/high16 v5, 0x30000000

    .line 292
    :goto_12
    or-int/2addr v2, v5

    .line 293
    goto :goto_13

    .line 294
    .line 295
    :cond_1b
    and-int v5, v15, v19

    .line 296
    .line 297
    if-nez v5, :cond_1d

    .line 298
    .line 299
    .line 300
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 301
    move-result v5

    .line 302
    .line 303
    if-eqz v5, :cond_1c

    .line 304
    .line 305
    const/high16 v5, 0x20000000

    .line 306
    goto :goto_12

    .line 307
    .line 308
    :cond_1c
    const/high16 v5, 0x10000000

    .line 309
    goto :goto_12

    .line 310
    .line 311
    .line 312
    :cond_1d
    :goto_13
    const v5, 0x5b6db6db

    .line 313
    and-int/2addr v5, v2

    .line 314
    .line 315
    .line 316
    const v0, 0x12492492

    .line 317
    .line 318
    if-ne v5, v0, :cond_1f

    .line 319
    .line 320
    .line 321
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->b()Z

    .line 322
    move-result v0

    .line 323
    .line 324
    if-nez v0, :cond_1e

    .line 325
    goto :goto_14

    .line 326
    .line 327
    .line 328
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 329
    .line 330
    move-object/from16 v2, p1

    .line 331
    .line 332
    move-object/from16 v3, p2

    .line 333
    .line 334
    move-object/from16 v8, p7

    .line 335
    move-object v4, v7

    .line 336
    move-object v7, v9

    .line 337
    move v5, v10

    .line 338
    move-object v6, v11

    .line 339
    .line 340
    move-object/from16 v26, v13

    .line 341
    .line 342
    move/from16 v9, p8

    .line 343
    .line 344
    goto/16 :goto_20

    .line 345
    .line 346
    .line 347
    :cond_1f
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->J()V

    .line 348
    .line 349
    and-int/lit8 v0, v15, 0x1

    .line 350
    .line 351
    .line 352
    const v5, -0x1c00001

    .line 353
    .line 354
    .line 355
    const v20, -0x70001

    .line 356
    .line 357
    if-eqz v0, :cond_24

    .line 358
    .line 359
    .line 360
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->h()Z

    .line 361
    move-result v0

    .line 362
    .line 363
    if-eqz v0, :cond_20

    .line 364
    goto :goto_15

    .line 365
    .line 366
    .line 367
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 368
    .line 369
    and-int/lit8 v0, v14, 0x4

    .line 370
    .line 371
    if-eqz v0, :cond_21

    .line 372
    .line 373
    and-int/lit16 v2, v2, -0x381

    .line 374
    .line 375
    :cond_21
    and-int/lit8 v0, v14, 0x20

    .line 376
    .line 377
    if-eqz v0, :cond_22

    .line 378
    .line 379
    and-int v2, v2, v20

    .line 380
    .line 381
    :cond_22
    and-int/lit16 v0, v14, 0x80

    .line 382
    .line 383
    if-eqz v0, :cond_23

    .line 384
    and-int/2addr v2, v5

    .line 385
    .line 386
    :cond_23
    move-object/from16 v0, p1

    .line 387
    .line 388
    move-object/from16 v20, p2

    .line 389
    .line 390
    move-object/from16 v23, p7

    .line 391
    .line 392
    move/from16 v24, p8

    .line 393
    move-object v12, v7

    .line 394
    .line 395
    move/from16 v21, v10

    .line 396
    .line 397
    move-object/from16 v22, v11

    .line 398
    move-object v11, v9

    .line 399
    .line 400
    goto/16 :goto_1f

    .line 401
    .line 402
    :cond_24
    :goto_15
    if-eqz v3, :cond_25

    .line 403
    .line 404
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 405
    goto :goto_16

    .line 406
    .line 407
    :cond_25
    move-object/from16 v0, p1

    .line 408
    .line 409
    :goto_16
    and-int/lit8 v3, v14, 0x4

    .line 410
    const/4 v5, 0x0

    .line 411
    .line 412
    if-eqz v3, :cond_26

    .line 413
    const/4 v3, 0x3

    .line 414
    .line 415
    .line 416
    invoke-static {v5, v5, v13, v5, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 417
    move-result-object v3

    .line 418
    .line 419
    and-int/lit16 v2, v2, -0x381

    .line 420
    goto :goto_17

    .line 421
    .line 422
    :cond_26
    move-object/from16 v3, p2

    .line 423
    .line 424
    :goto_17
    if-eqz v6, :cond_27

    .line 425
    int-to-float v6, v5

    .line 426
    .line 427
    .line 428
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 429
    move-result v6

    .line 430
    .line 431
    .line 432
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 433
    move-result-object v6

    .line 434
    goto :goto_18

    .line 435
    :cond_27
    move-object v6, v7

    .line 436
    .line 437
    :goto_18
    if-eqz v8, :cond_28

    .line 438
    goto :goto_19

    .line 439
    :cond_28
    move v5, v10

    .line 440
    .line 441
    :goto_19
    and-int/lit8 v7, v14, 0x20

    .line 442
    .line 443
    if-eqz v7, :cond_2a

    .line 444
    .line 445
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 446
    .line 447
    if-nez v5, :cond_29

    .line 448
    .line 449
    .line 450
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 451
    move-result-object v7

    .line 452
    goto :goto_1a

    .line 453
    .line 454
    .line 455
    :cond_29
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->c()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 456
    move-result-object v7

    .line 457
    .line 458
    :goto_1a
    and-int v2, v2, v20

    .line 459
    goto :goto_1b

    .line 460
    :cond_2a
    move-object v7, v11

    .line 461
    .line 462
    :goto_1b
    if-eqz v12, :cond_2b

    .line 463
    .line 464
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 468
    move-result-object v8

    .line 469
    goto :goto_1c

    .line 470
    :cond_2b
    move-object v8, v9

    .line 471
    .line 472
    :goto_1c
    and-int/lit16 v9, v14, 0x80

    .line 473
    .line 474
    if-eqz v9, :cond_2c

    .line 475
    .line 476
    sget-object v9, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 477
    const/4 v10, 0x6

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v13, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 481
    move-result-object v9

    .line 482
    .line 483
    .line 484
    const v10, -0x1c00001

    .line 485
    and-int/2addr v2, v10

    .line 486
    goto :goto_1d

    .line 487
    .line 488
    :cond_2c
    move-object/from16 v9, p7

    .line 489
    .line 490
    :goto_1d
    if-eqz v4, :cond_2d

    .line 491
    const/4 v4, 0x1

    .line 492
    .line 493
    move-object/from16 v20, v3

    .line 494
    .line 495
    move/from16 v24, v4

    .line 496
    .line 497
    :goto_1e
    move/from16 v21, v5

    .line 498
    move-object v12, v6

    .line 499
    .line 500
    move-object/from16 v22, v7

    .line 501
    move-object v11, v8

    .line 502
    .line 503
    move-object/from16 v23, v9

    .line 504
    goto :goto_1f

    .line 505
    .line 506
    :cond_2d
    move/from16 v24, p8

    .line 507
    .line 508
    move-object/from16 v20, v3

    .line 509
    goto :goto_1e

    .line 510
    .line 511
    .line 512
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->A()V

    .line 513
    .line 514
    and-int/lit8 v3, v2, 0xe

    .line 515
    .line 516
    shr-int/lit8 v4, v2, 0xf

    .line 517
    .line 518
    and-int/lit8 v4, v4, 0x70

    .line 519
    or-int/2addr v3, v4

    .line 520
    .line 521
    shr-int/lit8 v4, v2, 0x3

    .line 522
    .line 523
    and-int/lit16 v5, v4, 0x380

    .line 524
    or-int/2addr v3, v5

    .line 525
    .line 526
    .line 527
    invoke-static {v1, v11, v12, v13, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->f(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Le8/p;

    .line 528
    move-result-object v5

    .line 529
    const/4 v7, 0x0

    .line 530
    .line 531
    and-int/lit8 v3, v4, 0xe

    .line 532
    .line 533
    const/high16 v6, 0x30000

    .line 534
    or-int/2addr v3, v6

    .line 535
    .line 536
    and-int/lit8 v6, v4, 0x70

    .line 537
    or-int/2addr v3, v6

    .line 538
    .line 539
    and-int/lit16 v6, v2, 0x1c00

    .line 540
    or-int/2addr v3, v6

    .line 541
    .line 542
    .line 543
    const v6, 0xe000

    .line 544
    and-int/2addr v6, v2

    .line 545
    or-int/2addr v3, v6

    .line 546
    .line 547
    and-int v6, v4, v16

    .line 548
    or-int/2addr v3, v6

    .line 549
    .line 550
    and-int v4, v4, v17

    .line 551
    or-int/2addr v3, v4

    .line 552
    .line 553
    shl-int/lit8 v4, v2, 0x6

    .line 554
    .line 555
    and-int v4, v4, v18

    .line 556
    or-int/2addr v3, v4

    .line 557
    .line 558
    shl-int/lit8 v4, v2, 0xc

    .line 559
    .line 560
    and-int v4, v4, v19

    .line 561
    .line 562
    or-int v16, v3, v4

    .line 563
    .line 564
    shr-int/lit8 v2, v2, 0x1b

    .line 565
    .line 566
    and-int/lit8 v17, v2, 0xe

    .line 567
    .line 568
    const/16 v18, 0x0

    .line 569
    move-object v2, v0

    .line 570
    .line 571
    move-object/from16 v3, v20

    .line 572
    move-object v4, v5

    .line 573
    move-object v5, v12

    .line 574
    .line 575
    move/from16 v6, v21

    .line 576
    .line 577
    move-object/from16 v8, v23

    .line 578
    .line 579
    move/from16 v9, v24

    .line 580
    move-object v10, v11

    .line 581
    .line 582
    move-object/from16 v19, v11

    .line 583
    .line 584
    move-object/from16 v11, v22

    .line 585
    .line 586
    move-object/from16 v25, v12

    .line 587
    .line 588
    move-object/from16 v12, p9

    .line 589
    .line 590
    move-object/from16 v26, v13

    .line 591
    .line 592
    move/from16 v14, v16

    .line 593
    .line 594
    move/from16 v15, v17

    .line 595
    .line 596
    move/from16 v16, v18

    .line 597
    .line 598
    .line 599
    invoke-static/range {v2 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V

    .line 600
    .line 601
    move-object/from16 v7, v19

    .line 602
    .line 603
    move/from16 v5, v21

    .line 604
    .line 605
    move-object/from16 v6, v22

    .line 606
    .line 607
    move-object/from16 v4, v25

    .line 608
    .line 609
    .line 610
    :goto_20
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 611
    move-result-object v13

    .line 612
    .line 613
    if-nez v13, :cond_2e

    .line 614
    goto :goto_21

    .line 615
    .line 616
    :cond_2e
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;

    .line 617
    move-object v0, v14

    .line 618
    .line 619
    move-object/from16 v1, p0

    .line 620
    .line 621
    move-object/from16 v10, p9

    .line 622
    .line 623
    move/from16 v11, p11

    .line 624
    .line 625
    move/from16 v12, p12

    .line 626
    .line 627
    .line 628
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;II)V

    .line 629
    .line 630
    .line 631
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 632
    :goto_21
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Landroidx/compose/foundation/lazy/grid/GridCells;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
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
    move-object/from16 v0, p9

    .line 5
    .line 6
    move/from16 v15, p11

    .line 7
    .line 8
    move/from16 v14, p12

    .line 9
    .line 10
    const-string v2, "columns"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v2, "content"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v2, 0x588990d0

    .line 22
    .line 23
    move-object/from16 v3, p10

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v13

    .line 28
    .line 29
    and-int/lit8 v2, v14, 0x1

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    or-int/lit8 v2, v15, 0x6

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v2, v15, 0xe

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    const/4 v2, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x2

    .line 48
    :goto_0
    or-int/2addr v2, v15

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v15

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v3, v14, 0x2

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    or-int/lit8 v2, v2, 0x30

    .line 57
    .line 58
    :cond_3
    move-object/from16 v4, p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    and-int/lit8 v4, v15, 0x70

    .line 62
    .line 63
    if-nez v4, :cond_3

    .line 64
    .line 65
    move-object/from16 v4, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    .line 71
    if-eqz v5, :cond_5

    .line 72
    .line 73
    const/16 v5, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    const/16 v5, 0x10

    .line 77
    :goto_2
    or-int/2addr v2, v5

    .line 78
    .line 79
    :goto_3
    and-int/lit16 v5, v15, 0x380

    .line 80
    .line 81
    if-nez v5, :cond_8

    .line 82
    .line 83
    and-int/lit8 v5, v14, 0x4

    .line 84
    .line 85
    if-nez v5, :cond_6

    .line 86
    .line 87
    move-object/from16 v5, p2

    .line 88
    .line 89
    .line 90
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 91
    move-result v6

    .line 92
    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    const/16 v6, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_6
    move-object/from16 v5, p2

    .line 99
    .line 100
    :cond_7
    const/16 v6, 0x80

    .line 101
    :goto_4
    or-int/2addr v2, v6

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :cond_8
    move-object/from16 v5, p2

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v6, v14, 0x8

    .line 107
    .line 108
    if-eqz v6, :cond_a

    .line 109
    .line 110
    or-int/lit16 v2, v2, 0xc00

    .line 111
    .line 112
    :cond_9
    move-object/from16 v7, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v7, v15, 0x1c00

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move-object/from16 v7, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 123
    move-result v8

    .line 124
    .line 125
    if-eqz v8, :cond_b

    .line 126
    .line 127
    const/16 v8, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_b
    const/16 v8, 0x400

    .line 131
    :goto_6
    or-int/2addr v2, v8

    .line 132
    .line 133
    :goto_7
    and-int/lit8 v8, v14, 0x10

    .line 134
    .line 135
    .line 136
    const v9, 0xe000

    .line 137
    .line 138
    if-eqz v8, :cond_d

    .line 139
    .line 140
    or-int/lit16 v2, v2, 0x6000

    .line 141
    .line 142
    :cond_c
    move/from16 v10, p4

    .line 143
    goto :goto_9

    .line 144
    .line 145
    :cond_d
    and-int v10, v15, v9

    .line 146
    .line 147
    if-nez v10, :cond_c

    .line 148
    .line 149
    move/from16 v10, p4

    .line 150
    .line 151
    .line 152
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 153
    move-result v11

    .line 154
    .line 155
    if-eqz v11, :cond_e

    .line 156
    .line 157
    const/16 v11, 0x4000

    .line 158
    goto :goto_8

    .line 159
    .line 160
    :cond_e
    const/16 v11, 0x2000

    .line 161
    :goto_8
    or-int/2addr v2, v11

    .line 162
    .line 163
    :goto_9
    const/high16 v11, 0x70000

    .line 164
    and-int/2addr v11, v15

    .line 165
    .line 166
    if-nez v11, :cond_11

    .line 167
    .line 168
    and-int/lit8 v11, v14, 0x20

    .line 169
    .line 170
    if-nez v11, :cond_f

    .line 171
    .line 172
    move-object/from16 v11, p5

    .line 173
    .line 174
    .line 175
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v12

    .line 177
    .line 178
    if-eqz v12, :cond_10

    .line 179
    .line 180
    const/high16 v12, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_f
    move-object/from16 v11, p5

    .line 184
    .line 185
    :cond_10
    const/high16 v12, 0x10000

    .line 186
    :goto_a
    or-int/2addr v2, v12

    .line 187
    goto :goto_b

    .line 188
    .line 189
    :cond_11
    move-object/from16 v11, p5

    .line 190
    .line 191
    :goto_b
    and-int/lit8 v12, v14, 0x40

    .line 192
    .line 193
    const/high16 v16, 0x380000

    .line 194
    .line 195
    if-eqz v12, :cond_12

    .line 196
    .line 197
    const/high16 v17, 0x180000

    .line 198
    .line 199
    or-int v2, v2, v17

    .line 200
    .line 201
    move-object/from16 v9, p6

    .line 202
    goto :goto_d

    .line 203
    .line 204
    :cond_12
    and-int v17, v15, v16

    .line 205
    .line 206
    move-object/from16 v9, p6

    .line 207
    .line 208
    if-nez v17, :cond_14

    .line 209
    .line 210
    .line 211
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 212
    move-result v17

    .line 213
    .line 214
    if-eqz v17, :cond_13

    .line 215
    .line 216
    const/high16 v17, 0x100000

    .line 217
    goto :goto_c

    .line 218
    .line 219
    :cond_13
    const/high16 v17, 0x80000

    .line 220
    .line 221
    :goto_c
    or-int v2, v2, v17

    .line 222
    .line 223
    :cond_14
    :goto_d
    const/high16 v17, 0x1c00000

    .line 224
    .line 225
    and-int v18, v15, v17

    .line 226
    .line 227
    if-nez v18, :cond_17

    .line 228
    .line 229
    and-int/lit16 v4, v14, 0x80

    .line 230
    .line 231
    if-nez v4, :cond_15

    .line 232
    .line 233
    move-object/from16 v4, p7

    .line 234
    .line 235
    .line 236
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 237
    move-result v18

    .line 238
    .line 239
    if-eqz v18, :cond_16

    .line 240
    .line 241
    const/high16 v18, 0x800000

    .line 242
    goto :goto_e

    .line 243
    .line 244
    :cond_15
    move-object/from16 v4, p7

    .line 245
    .line 246
    :cond_16
    const/high16 v18, 0x400000

    .line 247
    .line 248
    :goto_e
    or-int v2, v2, v18

    .line 249
    goto :goto_f

    .line 250
    .line 251
    :cond_17
    move-object/from16 v4, p7

    .line 252
    .line 253
    :goto_f
    and-int/lit16 v4, v14, 0x100

    .line 254
    .line 255
    const/high16 v18, 0xe000000

    .line 256
    .line 257
    if-eqz v4, :cond_18

    .line 258
    .line 259
    const/high16 v19, 0x6000000

    .line 260
    .line 261
    or-int v2, v2, v19

    .line 262
    .line 263
    move/from16 v5, p8

    .line 264
    goto :goto_11

    .line 265
    .line 266
    :cond_18
    and-int v19, v15, v18

    .line 267
    .line 268
    move/from16 v5, p8

    .line 269
    .line 270
    if-nez v19, :cond_1a

    .line 271
    .line 272
    .line 273
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 274
    move-result v19

    .line 275
    .line 276
    if-eqz v19, :cond_19

    .line 277
    .line 278
    const/high16 v19, 0x4000000

    .line 279
    goto :goto_10

    .line 280
    .line 281
    :cond_19
    const/high16 v19, 0x2000000

    .line 282
    .line 283
    :goto_10
    or-int v2, v2, v19

    .line 284
    .line 285
    :cond_1a
    :goto_11
    and-int/lit16 v5, v14, 0x200

    .line 286
    .line 287
    const/high16 v19, 0x70000000

    .line 288
    .line 289
    if-eqz v5, :cond_1b

    .line 290
    .line 291
    const/high16 v5, 0x30000000

    .line 292
    :goto_12
    or-int/2addr v2, v5

    .line 293
    goto :goto_13

    .line 294
    .line 295
    :cond_1b
    and-int v5, v15, v19

    .line 296
    .line 297
    if-nez v5, :cond_1d

    .line 298
    .line 299
    .line 300
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 301
    move-result v5

    .line 302
    .line 303
    if-eqz v5, :cond_1c

    .line 304
    .line 305
    const/high16 v5, 0x20000000

    .line 306
    goto :goto_12

    .line 307
    .line 308
    :cond_1c
    const/high16 v5, 0x10000000

    .line 309
    goto :goto_12

    .line 310
    .line 311
    .line 312
    :cond_1d
    :goto_13
    const v5, 0x5b6db6db

    .line 313
    and-int/2addr v5, v2

    .line 314
    .line 315
    .line 316
    const v0, 0x12492492

    .line 317
    .line 318
    if-ne v5, v0, :cond_1f

    .line 319
    .line 320
    .line 321
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->b()Z

    .line 322
    move-result v0

    .line 323
    .line 324
    if-nez v0, :cond_1e

    .line 325
    goto :goto_14

    .line 326
    .line 327
    .line 328
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 329
    .line 330
    move-object/from16 v2, p1

    .line 331
    .line 332
    move-object/from16 v3, p2

    .line 333
    .line 334
    move-object/from16 v8, p7

    .line 335
    move-object v4, v7

    .line 336
    move-object v7, v9

    .line 337
    move v5, v10

    .line 338
    move-object v6, v11

    .line 339
    .line 340
    move-object/from16 v26, v13

    .line 341
    .line 342
    move/from16 v9, p8

    .line 343
    .line 344
    goto/16 :goto_20

    .line 345
    .line 346
    .line 347
    :cond_1f
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->J()V

    .line 348
    .line 349
    and-int/lit8 v0, v15, 0x1

    .line 350
    .line 351
    .line 352
    const v5, -0x1c00001

    .line 353
    .line 354
    .line 355
    const v20, -0x70001

    .line 356
    .line 357
    if-eqz v0, :cond_24

    .line 358
    .line 359
    .line 360
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->h()Z

    .line 361
    move-result v0

    .line 362
    .line 363
    if-eqz v0, :cond_20

    .line 364
    goto :goto_15

    .line 365
    .line 366
    .line 367
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 368
    .line 369
    and-int/lit8 v0, v14, 0x4

    .line 370
    .line 371
    if-eqz v0, :cond_21

    .line 372
    .line 373
    and-int/lit16 v2, v2, -0x381

    .line 374
    .line 375
    :cond_21
    and-int/lit8 v0, v14, 0x20

    .line 376
    .line 377
    if-eqz v0, :cond_22

    .line 378
    .line 379
    and-int v2, v2, v20

    .line 380
    .line 381
    :cond_22
    and-int/lit16 v0, v14, 0x80

    .line 382
    .line 383
    if-eqz v0, :cond_23

    .line 384
    and-int/2addr v2, v5

    .line 385
    .line 386
    :cond_23
    move-object/from16 v0, p1

    .line 387
    .line 388
    move-object/from16 v20, p2

    .line 389
    .line 390
    move-object/from16 v23, p7

    .line 391
    .line 392
    move/from16 v24, p8

    .line 393
    move-object v12, v7

    .line 394
    .line 395
    move/from16 v21, v10

    .line 396
    .line 397
    move-object/from16 v22, v11

    .line 398
    move-object v11, v9

    .line 399
    .line 400
    goto/16 :goto_1f

    .line 401
    .line 402
    :cond_24
    :goto_15
    if-eqz v3, :cond_25

    .line 403
    .line 404
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 405
    goto :goto_16

    .line 406
    .line 407
    :cond_25
    move-object/from16 v0, p1

    .line 408
    .line 409
    :goto_16
    and-int/lit8 v3, v14, 0x4

    .line 410
    const/4 v5, 0x0

    .line 411
    .line 412
    if-eqz v3, :cond_26

    .line 413
    const/4 v3, 0x3

    .line 414
    .line 415
    .line 416
    invoke-static {v5, v5, v13, v5, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 417
    move-result-object v3

    .line 418
    .line 419
    and-int/lit16 v2, v2, -0x381

    .line 420
    goto :goto_17

    .line 421
    .line 422
    :cond_26
    move-object/from16 v3, p2

    .line 423
    .line 424
    :goto_17
    if-eqz v6, :cond_27

    .line 425
    int-to-float v6, v5

    .line 426
    .line 427
    .line 428
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 429
    move-result v6

    .line 430
    .line 431
    .line 432
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 433
    move-result-object v6

    .line 434
    goto :goto_18

    .line 435
    :cond_27
    move-object v6, v7

    .line 436
    .line 437
    :goto_18
    if-eqz v8, :cond_28

    .line 438
    goto :goto_19

    .line 439
    :cond_28
    move v5, v10

    .line 440
    .line 441
    :goto_19
    and-int/lit8 v7, v14, 0x20

    .line 442
    .line 443
    if-eqz v7, :cond_2a

    .line 444
    .line 445
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 446
    .line 447
    if-nez v5, :cond_29

    .line 448
    .line 449
    .line 450
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 451
    move-result-object v7

    .line 452
    goto :goto_1a

    .line 453
    .line 454
    .line 455
    :cond_29
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->a()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 456
    move-result-object v7

    .line 457
    .line 458
    :goto_1a
    and-int v2, v2, v20

    .line 459
    goto :goto_1b

    .line 460
    :cond_2a
    move-object v7, v11

    .line 461
    .line 462
    :goto_1b
    if-eqz v12, :cond_2b

    .line 463
    .line 464
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 468
    move-result-object v8

    .line 469
    goto :goto_1c

    .line 470
    :cond_2b
    move-object v8, v9

    .line 471
    .line 472
    :goto_1c
    and-int/lit16 v9, v14, 0x80

    .line 473
    .line 474
    if-eqz v9, :cond_2c

    .line 475
    .line 476
    sget-object v9, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 477
    const/4 v10, 0x6

    .line 478
    .line 479
    .line 480
    invoke-virtual {v9, v13, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 481
    move-result-object v9

    .line 482
    .line 483
    .line 484
    const v10, -0x1c00001

    .line 485
    and-int/2addr v2, v10

    .line 486
    goto :goto_1d

    .line 487
    .line 488
    :cond_2c
    move-object/from16 v9, p7

    .line 489
    .line 490
    :goto_1d
    if-eqz v4, :cond_2d

    .line 491
    const/4 v4, 0x1

    .line 492
    .line 493
    move-object/from16 v20, v3

    .line 494
    .line 495
    move/from16 v24, v4

    .line 496
    .line 497
    :goto_1e
    move/from16 v21, v5

    .line 498
    move-object v12, v6

    .line 499
    .line 500
    move-object/from16 v22, v7

    .line 501
    move-object v11, v8

    .line 502
    .line 503
    move-object/from16 v23, v9

    .line 504
    goto :goto_1f

    .line 505
    .line 506
    :cond_2d
    move/from16 v24, p8

    .line 507
    .line 508
    move-object/from16 v20, v3

    .line 509
    goto :goto_1e

    .line 510
    .line 511
    .line 512
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->A()V

    .line 513
    .line 514
    and-int/lit8 v3, v2, 0xe

    .line 515
    .line 516
    shr-int/lit8 v4, v2, 0xf

    .line 517
    .line 518
    and-int/lit8 v4, v4, 0x70

    .line 519
    or-int/2addr v3, v4

    .line 520
    .line 521
    shr-int/lit8 v4, v2, 0x3

    .line 522
    .line 523
    and-int/lit16 v5, v4, 0x380

    .line 524
    or-int/2addr v3, v5

    .line 525
    .line 526
    .line 527
    invoke-static {v1, v11, v12, v13, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->e(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Le8/p;

    .line 528
    move-result-object v5

    .line 529
    const/4 v7, 0x1

    .line 530
    .line 531
    and-int/lit8 v3, v4, 0xe

    .line 532
    .line 533
    const/high16 v6, 0x30000

    .line 534
    or-int/2addr v3, v6

    .line 535
    .line 536
    and-int/lit8 v6, v4, 0x70

    .line 537
    or-int/2addr v3, v6

    .line 538
    .line 539
    and-int/lit16 v6, v2, 0x1c00

    .line 540
    or-int/2addr v3, v6

    .line 541
    .line 542
    .line 543
    const v6, 0xe000

    .line 544
    and-int/2addr v6, v2

    .line 545
    or-int/2addr v3, v6

    .line 546
    .line 547
    and-int v6, v4, v16

    .line 548
    or-int/2addr v3, v6

    .line 549
    .line 550
    and-int v4, v4, v17

    .line 551
    or-int/2addr v3, v4

    .line 552
    .line 553
    shl-int/lit8 v4, v2, 0x9

    .line 554
    .line 555
    and-int v6, v4, v18

    .line 556
    or-int/2addr v3, v6

    .line 557
    .line 558
    and-int v4, v4, v19

    .line 559
    .line 560
    or-int v16, v3, v4

    .line 561
    .line 562
    shr-int/lit8 v2, v2, 0x1b

    .line 563
    .line 564
    and-int/lit8 v17, v2, 0xe

    .line 565
    .line 566
    const/16 v18, 0x0

    .line 567
    move-object v2, v0

    .line 568
    .line 569
    move-object/from16 v3, v20

    .line 570
    move-object v4, v5

    .line 571
    move-object v5, v12

    .line 572
    .line 573
    move/from16 v6, v21

    .line 574
    .line 575
    move-object/from16 v8, v23

    .line 576
    .line 577
    move/from16 v9, v24

    .line 578
    .line 579
    move-object/from16 v10, v22

    .line 580
    .line 581
    move-object/from16 v19, v11

    .line 582
    .line 583
    move-object/from16 v25, v12

    .line 584
    .line 585
    move-object/from16 v12, p9

    .line 586
    .line 587
    move-object/from16 v26, v13

    .line 588
    .line 589
    move/from16 v14, v16

    .line 590
    .line 591
    move/from16 v15, v17

    .line 592
    .line 593
    move/from16 v16, v18

    .line 594
    .line 595
    .line 596
    invoke-static/range {v2 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Le8/p;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V

    .line 597
    .line 598
    move-object/from16 v7, v19

    .line 599
    .line 600
    move/from16 v5, v21

    .line 601
    .line 602
    move-object/from16 v6, v22

    .line 603
    .line 604
    move-object/from16 v4, v25

    .line 605
    .line 606
    .line 607
    :goto_20
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 608
    move-result-object v13

    .line 609
    .line 610
    if-nez v13, :cond_2e

    .line 611
    goto :goto_21

    .line 612
    .line 613
    :cond_2e
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;

    .line 614
    move-object v0, v14

    .line 615
    .line 616
    move-object/from16 v1, p0

    .line 617
    .line 618
    move-object/from16 v10, p9

    .line 619
    .line 620
    move/from16 v11, p11

    .line 621
    .line 622
    move/from16 v12, p12

    .line 623
    .line 624
    .line 625
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;II)V

    .line 626
    .line 627
    .line 628
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 629
    :goto_21
    return-void
.end method

.method public static final synthetic c(III)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->d(III)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    add-int/lit8 v0, p1, -0x1

    .line 3
    mul-int/2addr p2, v0

    .line 4
    sub-int/2addr p0, p2

    .line 5
    .line 6
    div-int p2, p0, p1

    .line 7
    rem-int/2addr p0, p1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    .line 16
    :goto_0
    if-ge v2, p1, :cond_1

    .line 17
    .line 18
    if-ge v2, p0, :cond_0

    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v3, v1

    .line 22
    :goto_1
    add-int/2addr v3, p2

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method

.method private static final e(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Le8/p;
    .locals 1
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Le8/p<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, -0x50c843ac

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    const p4, 0x607fb4c4

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 16
    move-result p4

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    or-int/2addr p4, v0

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    or-int/2addr p4, v0

    .line 27
    .line 28
    .line 29
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-nez p4, :cond_0

    .line 33
    .line 34
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object p4

    .line 39
    .line 40
    if-ne v0, p4, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberColumnWidthSums$1$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberColumnWidthSums$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 52
    .line 53
    check-cast v0, Le8/p;

    .line 54
    .line 55
    .line 56
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 57
    return-object v0
.end method

.method private static final f(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Le8/p;
    .locals 1
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Le8/p<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, 0xe4947f5

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    const p4, 0x607fb4c4

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 16
    move-result p4

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    or-int/2addr p4, v0

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    or-int/2addr p4, v0

    .line 27
    .line 28
    .line 29
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-nez p4, :cond_0

    .line 33
    .line 34
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 38
    move-result-object p4

    .line 39
    .line 40
    if-ne v0, p4, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 52
    .line 53
    check-cast v0, Le8/p;

    .line 54
    .line 55
    .line 56
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 57
    return-object v0
.end method
