.class public final Landroidx/compose/material/ModalBottomSheetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.kt\nandroidx/compose/material/ModalBottomSheetKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,479:1\n473#2,4:480\n477#2,2:488\n481#2:494\n25#3:484\n36#3:496\n50#3:503\n49#3:504\n50#3:511\n49#3:512\n1057#4,3:485\n1060#4,3:491\n1057#4,6:497\n1057#4,6:505\n1057#4,6:513\n473#5:490\n654#6:495\n76#7:519\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.kt\nandroidx/compose/material/ModalBottomSheetKt\n*L\n325#1:480,4\n325#1:488,2\n325#1:494\n325#1:484\n443#1:496\n444#1:503\n444#1:504\n456#1:511\n456#1:512\n325#1:485,3\n325#1:491,3\n443#1:497,6\n444#1:505,6\n456#1:513,6\n325#1:490\n435#1:495\n436#1:519\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;Landroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 31
    .param p0    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/ModalBottomSheetState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/ModalBottomSheetState;",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Le8/p<",
            "-",
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
    move-object/from16 v14, p0

    .line 3
    .line 4
    move-object/from16 v15, p11

    .line 5
    .line 6
    move/from16 v13, p13

    .line 7
    .line 8
    move/from16 v12, p14

    .line 9
    .line 10
    const-string/jumbo v0, "sheetContent"

    .line 11
    .line 12
    .line 13
    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "content"

    .line 16
    .line 17
    .line 18
    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, -0x61613f54

    .line 22
    .line 23
    move-object/from16 v1, p12

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v10

    .line 28
    .line 29
    and-int/lit8 v0, v12, 0x1

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    or-int/lit8 v0, v13, 0x6

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v0, v13, 0xe

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v13

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v13

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v1, v12, 0x2

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
    and-int/lit8 v2, v13, 0x70

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    move-object/from16 v2, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v3, v13, 0x380

    .line 80
    .line 81
    if-nez v3, :cond_8

    .line 82
    .line 83
    and-int/lit8 v3, v12, 0x4

    .line 84
    .line 85
    if-nez v3, :cond_6

    .line 86
    .line 87
    move-object/from16 v3, p2

    .line 88
    .line 89
    .line 90
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 91
    move-result v4

    .line 92
    .line 93
    if-eqz v4, :cond_7

    .line 94
    .line 95
    const/16 v4, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_6
    move-object/from16 v3, p2

    .line 99
    .line 100
    :cond_7
    const/16 v4, 0x80

    .line 101
    :goto_4
    or-int/2addr v0, v4

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :cond_8
    move-object/from16 v3, p2

    .line 105
    .line 106
    :goto_5
    and-int/lit16 v4, v13, 0x1c00

    .line 107
    .line 108
    if-nez v4, :cond_a

    .line 109
    .line 110
    and-int/lit8 v4, v12, 0x8

    .line 111
    .line 112
    move-object/from16 v7, p3

    .line 113
    .line 114
    if-nez v4, :cond_9

    .line 115
    .line 116
    .line 117
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 118
    move-result v4

    .line 119
    .line 120
    if-eqz v4, :cond_9

    .line 121
    .line 122
    const/16 v4, 0x800

    .line 123
    goto :goto_6

    .line 124
    .line 125
    :cond_9
    const/16 v4, 0x400

    .line 126
    :goto_6
    or-int/2addr v0, v4

    .line 127
    goto :goto_7

    .line 128
    .line 129
    :cond_a
    move-object/from16 v7, p3

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v8, v12, 0x10

    .line 132
    .line 133
    if-eqz v8, :cond_b

    .line 134
    .line 135
    or-int/lit16 v0, v0, 0x6000

    .line 136
    .line 137
    move/from16 v9, p4

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_b
    const v4, 0xe000

    .line 142
    and-int/2addr v4, v13

    .line 143
    .line 144
    move/from16 v9, p4

    .line 145
    .line 146
    if-nez v4, :cond_d

    .line 147
    .line 148
    .line 149
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 150
    move-result v4

    .line 151
    .line 152
    if-eqz v4, :cond_c

    .line 153
    .line 154
    const/16 v4, 0x4000

    .line 155
    goto :goto_8

    .line 156
    .line 157
    :cond_c
    const/16 v4, 0x2000

    .line 158
    :goto_8
    or-int/2addr v0, v4

    .line 159
    .line 160
    :cond_d
    :goto_9
    const/high16 v4, 0x70000

    .line 161
    and-int/2addr v4, v13

    .line 162
    .line 163
    if-nez v4, :cond_f

    .line 164
    .line 165
    and-int/lit8 v4, v12, 0x20

    .line 166
    .line 167
    move-wide/from16 v5, p5

    .line 168
    .line 169
    if-nez v4, :cond_e

    .line 170
    .line 171
    .line 172
    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 173
    move-result v4

    .line 174
    .line 175
    if-eqz v4, :cond_e

    .line 176
    .line 177
    const/high16 v4, 0x20000

    .line 178
    goto :goto_a

    .line 179
    .line 180
    :cond_e
    const/high16 v4, 0x10000

    .line 181
    :goto_a
    or-int/2addr v0, v4

    .line 182
    goto :goto_b

    .line 183
    .line 184
    :cond_f
    move-wide/from16 v5, p5

    .line 185
    .line 186
    :goto_b
    const/high16 v4, 0x380000

    .line 187
    and-int/2addr v4, v13

    .line 188
    .line 189
    if-nez v4, :cond_11

    .line 190
    .line 191
    and-int/lit8 v4, v12, 0x40

    .line 192
    .line 193
    move-wide/from16 v6, p7

    .line 194
    .line 195
    if-nez v4, :cond_10

    .line 196
    .line 197
    .line 198
    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 199
    move-result v4

    .line 200
    .line 201
    if-eqz v4, :cond_10

    .line 202
    .line 203
    const/high16 v4, 0x100000

    .line 204
    goto :goto_c

    .line 205
    .line 206
    :cond_10
    const/high16 v4, 0x80000

    .line 207
    :goto_c
    or-int/2addr v0, v4

    .line 208
    goto :goto_d

    .line 209
    .line 210
    :cond_11
    move-wide/from16 v6, p7

    .line 211
    .line 212
    :goto_d
    const/high16 v4, 0x1c00000

    .line 213
    and-int/2addr v4, v13

    .line 214
    .line 215
    if-nez v4, :cond_14

    .line 216
    .line 217
    and-int/lit16 v4, v12, 0x80

    .line 218
    .line 219
    if-nez v4, :cond_12

    .line 220
    .line 221
    move-wide/from16 v4, p9

    .line 222
    .line 223
    .line 224
    invoke-interface {v10, v4, v5}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 225
    move-result v11

    .line 226
    .line 227
    if-eqz v11, :cond_13

    .line 228
    .line 229
    const/high16 v11, 0x800000

    .line 230
    goto :goto_e

    .line 231
    .line 232
    :cond_12
    move-wide/from16 v4, p9

    .line 233
    .line 234
    :cond_13
    const/high16 v11, 0x400000

    .line 235
    :goto_e
    or-int/2addr v0, v11

    .line 236
    goto :goto_f

    .line 237
    .line 238
    :cond_14
    move-wide/from16 v4, p9

    .line 239
    .line 240
    :goto_f
    and-int/lit16 v11, v12, 0x100

    .line 241
    .line 242
    if-eqz v11, :cond_15

    .line 243
    .line 244
    const/high16 v11, 0x6000000

    .line 245
    :goto_10
    or-int/2addr v0, v11

    .line 246
    goto :goto_11

    .line 247
    .line 248
    :cond_15
    const/high16 v11, 0xe000000

    .line 249
    and-int/2addr v11, v13

    .line 250
    .line 251
    if-nez v11, :cond_17

    .line 252
    .line 253
    .line 254
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 255
    move-result v11

    .line 256
    .line 257
    if-eqz v11, :cond_16

    .line 258
    .line 259
    const/high16 v11, 0x4000000

    .line 260
    goto :goto_10

    .line 261
    .line 262
    :cond_16
    const/high16 v11, 0x2000000

    .line 263
    goto :goto_10

    .line 264
    .line 265
    .line 266
    :cond_17
    :goto_11
    const v11, 0xb6db6db

    .line 267
    and-int/2addr v11, v0

    .line 268
    .line 269
    .line 270
    const v2, 0x2492492

    .line 271
    .line 272
    if-ne v11, v2, :cond_19

    .line 273
    .line 274
    .line 275
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->b()Z

    .line 276
    move-result v2

    .line 277
    .line 278
    if-nez v2, :cond_18

    .line 279
    goto :goto_12

    .line 280
    .line 281
    .line 282
    :cond_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 283
    .line 284
    move-object/from16 v2, p1

    .line 285
    move-object v14, v10

    .line 286
    move-wide v10, v4

    .line 287
    move v5, v9

    .line 288
    .line 289
    move-object/from16 v4, p3

    .line 290
    move-wide v8, v6

    .line 291
    .line 292
    move-wide/from16 v6, p5

    .line 293
    .line 294
    goto/16 :goto_1b

    .line 295
    .line 296
    .line 297
    :cond_19
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->J()V

    .line 298
    .line 299
    and-int/lit8 v2, v13, 0x1

    .line 300
    .line 301
    .line 302
    const v11, -0x1c00001

    .line 303
    .line 304
    .line 305
    const v16, -0x380001

    .line 306
    .line 307
    .line 308
    const v17, -0x70001

    .line 309
    .line 310
    if-eqz v2, :cond_20

    .line 311
    .line 312
    .line 313
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->h()Z

    .line 314
    move-result v2

    .line 315
    .line 316
    if-eqz v2, :cond_1a

    .line 317
    goto :goto_13

    .line 318
    .line 319
    .line 320
    :cond_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 321
    .line 322
    and-int/lit8 v1, v12, 0x4

    .line 323
    .line 324
    if-eqz v1, :cond_1b

    .line 325
    .line 326
    and-int/lit16 v0, v0, -0x381

    .line 327
    .line 328
    :cond_1b
    and-int/lit8 v1, v12, 0x8

    .line 329
    .line 330
    if-eqz v1, :cond_1c

    .line 331
    .line 332
    and-int/lit16 v0, v0, -0x1c01

    .line 333
    .line 334
    :cond_1c
    and-int/lit8 v1, v12, 0x20

    .line 335
    .line 336
    if-eqz v1, :cond_1d

    .line 337
    .line 338
    and-int v0, v0, v17

    .line 339
    .line 340
    :cond_1d
    and-int/lit8 v1, v12, 0x40

    .line 341
    .line 342
    if-eqz v1, :cond_1e

    .line 343
    .line 344
    and-int v0, v0, v16

    .line 345
    .line 346
    :cond_1e
    and-int/lit16 v1, v12, 0x80

    .line 347
    .line 348
    if-eqz v1, :cond_1f

    .line 349
    and-int/2addr v0, v11

    .line 350
    .line 351
    :cond_1f
    move-object/from16 v18, p1

    .line 352
    .line 353
    move-object/from16 v17, p3

    .line 354
    .line 355
    move-wide/from16 v20, p5

    .line 356
    .line 357
    move/from16 v26, v0

    .line 358
    .line 359
    move-object/from16 v16, v3

    .line 360
    .line 361
    move-wide/from16 v24, v4

    .line 362
    .line 363
    move-wide/from16 v22, v6

    .line 364
    .line 365
    move/from16 v19, v9

    .line 366
    .line 367
    goto/16 :goto_1a

    .line 368
    .line 369
    :cond_20
    :goto_13
    if-eqz v1, :cond_21

    .line 370
    .line 371
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 372
    .line 373
    move-object/from16 v18, v1

    .line 374
    goto :goto_14

    .line 375
    .line 376
    :cond_21
    move-object/from16 v18, p1

    .line 377
    .line 378
    :goto_14
    and-int/lit8 v1, v12, 0x4

    .line 379
    .line 380
    if-eqz v1, :cond_22

    .line 381
    .line 382
    sget-object v1, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 383
    const/4 v2, 0x0

    .line 384
    const/4 v3, 0x0

    .line 385
    .line 386
    const/16 v19, 0x6

    .line 387
    .line 388
    const/16 v20, 0x6

    .line 389
    move-object v4, v10

    .line 390
    .line 391
    move/from16 v5, v19

    .line 392
    .line 393
    move/from16 v6, v20

    .line 394
    .line 395
    .line 396
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/ModalBottomSheetKt;->h(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;

    .line 397
    move-result-object v1

    .line 398
    .line 399
    and-int/lit16 v0, v0, -0x381

    .line 400
    goto :goto_15

    .line 401
    :cond_22
    move-object v1, v3

    .line 402
    .line 403
    :goto_15
    and-int/lit8 v2, v12, 0x8

    .line 404
    const/4 v3, 0x6

    .line 405
    .line 406
    if-eqz v2, :cond_23

    .line 407
    .line 408
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v10, v3}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 412
    move-result-object v2

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->a()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 416
    move-result-object v2

    .line 417
    .line 418
    and-int/lit16 v0, v0, -0x1c01

    .line 419
    goto :goto_16

    .line 420
    .line 421
    :cond_23
    move-object/from16 v2, p3

    .line 422
    .line 423
    :goto_16
    if-eqz v8, :cond_24

    .line 424
    .line 425
    sget-object v4, Landroidx/compose/material/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material/ModalBottomSheetDefaults;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4}, Landroidx/compose/material/ModalBottomSheetDefaults;->a()F

    .line 429
    move-result v4

    .line 430
    goto :goto_17

    .line 431
    :cond_24
    move v4, v9

    .line 432
    .line 433
    :goto_17
    and-int/lit8 v5, v12, 0x20

    .line 434
    .line 435
    if-eqz v5, :cond_25

    .line 436
    .line 437
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v5, v10, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 441
    move-result-object v5

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->n()J

    .line 445
    move-result-wide v5

    .line 446
    .line 447
    and-int v0, v0, v17

    .line 448
    goto :goto_18

    .line 449
    .line 450
    :cond_25
    move-wide/from16 v5, p5

    .line 451
    .line 452
    :goto_18
    and-int/lit8 v7, v12, 0x40

    .line 453
    .line 454
    if-eqz v7, :cond_26

    .line 455
    .line 456
    shr-int/lit8 v7, v0, 0xf

    .line 457
    .line 458
    and-int/lit8 v7, v7, 0xe

    .line 459
    .line 460
    .line 461
    invoke-static {v5, v6, v10, v7}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 462
    move-result-wide v7

    .line 463
    .line 464
    and-int v0, v0, v16

    .line 465
    goto :goto_19

    .line 466
    .line 467
    :cond_26
    move-wide/from16 v7, p7

    .line 468
    .line 469
    :goto_19
    and-int/lit16 v9, v12, 0x80

    .line 470
    .line 471
    if-eqz v9, :cond_27

    .line 472
    .line 473
    sget-object v9, Landroidx/compose/material/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material/ModalBottomSheetDefaults;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v9, v10, v3}, Landroidx/compose/material/ModalBottomSheetDefaults;->b(Landroidx/compose/runtime/Composer;I)J

    .line 477
    move-result-wide v16

    .line 478
    and-int/2addr v0, v11

    .line 479
    .line 480
    move/from16 v26, v0

    .line 481
    .line 482
    move/from16 v19, v4

    .line 483
    .line 484
    move-wide/from16 v20, v5

    .line 485
    .line 486
    move-wide/from16 v22, v7

    .line 487
    .line 488
    move-wide/from16 v24, v16

    .line 489
    .line 490
    move-object/from16 v16, v1

    .line 491
    .line 492
    move-object/from16 v17, v2

    .line 493
    goto :goto_1a

    .line 494
    .line 495
    :cond_27
    move-wide/from16 v24, p9

    .line 496
    .line 497
    move/from16 v26, v0

    .line 498
    .line 499
    move-object/from16 v16, v1

    .line 500
    .line 501
    move-object/from16 v17, v2

    .line 502
    .line 503
    move/from16 v19, v4

    .line 504
    .line 505
    move-wide/from16 v20, v5

    .line 506
    .line 507
    move-wide/from16 v22, v7

    .line 508
    .line 509
    .line 510
    :goto_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->A()V

    .line 511
    .line 512
    .line 513
    const v0, 0x2e20b340

    .line 514
    .line 515
    .line 516
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 517
    .line 518
    .line 519
    const v0, -0x1d58f75c

    .line 520
    .line 521
    .line 522
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 523
    .line 524
    .line 525
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 526
    move-result-object v0

    .line 527
    .line 528
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 532
    move-result-object v1

    .line 533
    .line 534
    if-ne v0, v1, :cond_28

    .line 535
    .line 536
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 537
    .line 538
    .line 539
    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 540
    move-result-object v0

    .line 541
    .line 542
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 543
    .line 544
    .line 545
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 546
    .line 547
    .line 548
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 549
    move-object v0, v1

    .line 550
    .line 551
    .line 552
    :cond_28
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 553
    .line 554
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 558
    move-result-object v27

    .line 559
    .line 560
    .line 561
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 562
    .line 563
    const/16 v28, 0x0

    .line 564
    .line 565
    const/16 v29, 0x0

    .line 566
    .line 567
    new-instance v11, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;

    .line 568
    move-object v0, v11

    .line 569
    .line 570
    move-object/from16 v1, v16

    .line 571
    .line 572
    move/from16 v2, v26

    .line 573
    .line 574
    move-object/from16 v3, v17

    .line 575
    .line 576
    move-wide/from16 v4, v20

    .line 577
    .line 578
    move-wide/from16 v6, v22

    .line 579
    .line 580
    move/from16 v8, v19

    .line 581
    .line 582
    move-object/from16 v9, p11

    .line 583
    move-object v14, v10

    .line 584
    move-object v15, v11

    .line 585
    .line 586
    move-wide/from16 v10, v24

    .line 587
    .line 588
    move-object/from16 v12, v27

    .line 589
    .line 590
    move-object/from16 v13, p0

    .line 591
    .line 592
    .line 593
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;-><init>(Landroidx/compose/material/ModalBottomSheetState;ILandroidx/compose/ui/graphics/Shape;JJFLe8/p;JLkotlinx/coroutines/o0;Le8/q;)V

    .line 594
    .line 595
    .line 596
    const v0, 0x5fce4f96

    .line 597
    const/4 v1, 0x1

    .line 598
    .line 599
    .line 600
    invoke-static {v14, v0, v1, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 601
    move-result-object v0

    .line 602
    .line 603
    shr-int/lit8 v1, v26, 0x3

    .line 604
    .line 605
    and-int/lit8 v1, v1, 0xe

    .line 606
    .line 607
    or-int/lit16 v1, v1, 0xc00

    .line 608
    const/4 v2, 0x6

    .line 609
    .line 610
    move-object/from16 p1, v18

    .line 611
    .line 612
    move-object/from16 p2, v28

    .line 613
    .line 614
    move/from16 p3, v29

    .line 615
    .line 616
    move-object/from16 p4, v0

    .line 617
    .line 618
    move-object/from16 p5, v14

    .line 619
    .line 620
    move/from16 p6, v1

    .line 621
    .line 622
    move/from16 p7, v2

    .line 623
    .line 624
    .line 625
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;Landroidx/compose/runtime/Composer;II)V

    .line 626
    .line 627
    move-object/from16 v3, v16

    .line 628
    .line 629
    move-object/from16 v4, v17

    .line 630
    .line 631
    move-object/from16 v2, v18

    .line 632
    .line 633
    move/from16 v5, v19

    .line 634
    .line 635
    move-wide/from16 v6, v20

    .line 636
    .line 637
    move-wide/from16 v8, v22

    .line 638
    .line 639
    .line 640
    :goto_1b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 641
    move-result-object v15

    .line 642
    .line 643
    if-nez v15, :cond_29

    .line 644
    goto :goto_1c

    .line 645
    .line 646
    :cond_29
    new-instance v14, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$2;

    .line 647
    move-object v0, v14

    .line 648
    .line 649
    move-object/from16 v1, p0

    .line 650
    .line 651
    move-object/from16 v12, p11

    .line 652
    .line 653
    move/from16 v13, p13

    .line 654
    .line 655
    move-object/from16 v30, v14

    .line 656
    .line 657
    move/from16 v14, p14

    .line 658
    .line 659
    .line 660
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$2;-><init>(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;Landroidx/compose/ui/graphics/Shape;FJJJLe8/p;II)V

    .line 661
    .line 662
    move-object/from16 v0, v30

    .line 663
    .line 664
    .line 665
    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 666
    :goto_1c
    return-void
.end method

.method private static final b(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le8/a<",
            "Lw7/l0;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x1f62403c

    .line 4
    .line 5
    .line 6
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p4

    .line 8
    .line 9
    and-int/lit8 v0, p5, 0xe

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p4, p0, p1}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p5

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p5

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v1, p5, 0x70

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    :goto_2
    or-int/2addr v0, v1

    .line 40
    .line 41
    :cond_3
    and-int/lit16 v1, p5, 0x380

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    .line 46
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    const/16 v1, 0x100

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_4
    const/16 v1, 0x80

    .line 55
    :goto_3
    or-int/2addr v0, v1

    .line 56
    .line 57
    :cond_5
    and-int/lit16 v0, v0, 0x2db

    .line 58
    .line 59
    const/16 v1, 0x92

    .line 60
    .line 61
    if-ne v0, v1, :cond_7

    .line 62
    .line 63
    .line 64
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->b()Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-nez v0, :cond_6

    .line 68
    goto :goto_4

    .line 69
    .line 70
    .line 71
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->g()V

    .line 72
    .line 73
    goto/16 :goto_7

    .line 74
    .line 75
    :cond_7
    :goto_4
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 79
    move-result-wide v0

    .line 80
    .line 81
    cmp-long v0, p0, v0

    .line 82
    .line 83
    if-eqz v0, :cond_10

    .line 84
    const/4 v0, 0x0

    .line 85
    .line 86
    if-eqz p3, :cond_8

    .line 87
    .line 88
    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    goto :goto_5

    .line 90
    :cond_8
    move v1, v0

    .line 91
    .line 92
    :goto_5
    new-instance v8, Landroidx/compose/animation/core/TweenSpec;

    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v6, 0x7

    .line 97
    const/4 v7, 0x0

    .line 98
    move-object v2, v8

    .line 99
    .line 100
    .line 101
    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    .line 106
    const/16 v7, 0xc

    .line 107
    move-object v5, p4

    .line 108
    .line 109
    .line 110
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->d(FLandroidx/compose/animation/core/AnimationSpec;FLe8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    sget-object v2, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Landroidx/compose/material/Strings$Companion;->b()I

    .line 117
    move-result v2

    .line 118
    const/4 v3, 0x6

    .line 119
    .line 120
    .line 121
    invoke-static {v2, p4, v3}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    const v3, 0x3c3bbb20

    .line 126
    .line 127
    .line 128
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 129
    .line 130
    .line 131
    const v3, 0x1e7b2b64

    .line 132
    const/4 v4, 0x1

    .line 133
    const/4 v5, 0x0

    .line 134
    .line 135
    if-eqz p3, :cond_d

    .line 136
    .line 137
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 138
    .line 139
    .line 140
    const v7, 0x44faf204

    .line 141
    .line 142
    .line 143
    invoke-interface {p4, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 147
    move-result v7

    .line 148
    .line 149
    .line 150
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 151
    move-result-object v8

    .line 152
    .line 153
    if-nez v7, :cond_9

    .line 154
    .line 155
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 159
    move-result-object v7

    .line 160
    .line 161
    if-ne v8, v7, :cond_a

    .line 162
    .line 163
    :cond_9
    new-instance v8, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$1$1;

    .line 164
    .line 165
    .line 166
    invoke-direct {v8, p2, v5}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$1$1;-><init>(Le8/a;Lkotlin/coroutines/d;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {p4, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :cond_a
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 173
    .line 174
    check-cast v8, Le8/p;

    .line 175
    .line 176
    .line 177
    invoke-static {v6, p2, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 178
    move-result-object v6

    .line 179
    .line 180
    .line 181
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 185
    move-result v7

    .line 186
    .line 187
    .line 188
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 189
    move-result v8

    .line 190
    or-int/2addr v7, v8

    .line 191
    .line 192
    .line 193
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 194
    move-result-object v8

    .line 195
    .line 196
    if-nez v7, :cond_b

    .line 197
    .line 198
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 202
    move-result-object v7

    .line 203
    .line 204
    if-ne v8, v7, :cond_c

    .line 205
    .line 206
    :cond_b
    new-instance v8, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$2$1;

    .line 207
    .line 208
    .line 209
    invoke-direct {v8, v2, p2}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$2$1;-><init>(Ljava/lang/String;Le8/a;)V

    .line 210
    .line 211
    .line 212
    invoke-interface {p4, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_c
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 216
    .line 217
    check-cast v8, Le8/l;

    .line 218
    .line 219
    .line 220
    invoke-static {v6, v4, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 221
    move-result-object v2

    .line 222
    goto :goto_6

    .line 223
    .line 224
    :cond_d
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 225
    .line 226
    .line 227
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 228
    .line 229
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 230
    .line 231
    .line 232
    invoke-static {v6, v0, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    .line 240
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 241
    move-result-object v2

    .line 242
    .line 243
    .line 244
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 245
    .line 246
    .line 247
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 248
    move-result v2

    .line 249
    .line 250
    .line 251
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 252
    move-result v3

    .line 253
    or-int/2addr v2, v3

    .line 254
    .line 255
    .line 256
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    if-nez v2, :cond_e

    .line 260
    .line 261
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 265
    move-result-object v2

    .line 266
    .line 267
    if-ne v3, v2, :cond_f

    .line 268
    .line 269
    :cond_e
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$Scrim$1$1;

    .line 270
    .line 271
    .line 272
    invoke-direct {v3, p0, p1, v1}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_f
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 279
    .line 280
    check-cast v3, Le8/l;

    .line 281
    const/4 v1, 0x0

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v3, p4, v1}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 285
    .line 286
    .line 287
    :cond_10
    :goto_7
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 288
    move-result-object p4

    .line 289
    .line 290
    if-nez p4, :cond_11

    .line 291
    goto :goto_8

    .line 292
    .line 293
    :cond_11
    new-instance v6, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;

    .line 294
    move-object v0, v6

    .line 295
    move-wide v1, p0

    .line 296
    move-object v3, p2

    .line 297
    move v4, p3

    .line 298
    move v5, p5

    .line 299
    .line 300
    .line 301
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;-><init>(JLe8/a;ZI)V

    .line 302
    .line 303
    .line 304
    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 305
    :goto_8
    return-void
.end method

.method private static final c(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final synthetic d(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ModalBottomSheetKt;->b(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic e(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ModalBottomSheetKt;->c(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final g(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/ModalBottomSheetState;",
            "F",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Float;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    int-to-float v3, v2

    .line 15
    .line 16
    div-float v3, p2, v3

    .line 17
    .line 18
    cmpg-float v1, v1, v3

    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x0

    .line 21
    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material/ModalBottomSheetState;->O()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v1, 0x3

    .line 31
    .line 32
    new-array v1, v1, [Lw7/u;

    .line 33
    .line 34
    .line 35
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    sget-object v7, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 39
    .line 40
    .line 41
    invoke-static {v6, v7}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    aput-object v6, v1, v5

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    sget-object v6, Landroidx/compose/material/ModalBottomSheetValue;->HalfExpanded:Landroidx/compose/material/ModalBottomSheetValue;

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v6}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    aput-object v3, v1, v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 60
    move-result v0

    .line 61
    .line 62
    sub-float v0, p2, v0

    .line 63
    const/4 v3, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 67
    move-result v0

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    sget-object v3, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    aput-object v0, v1, v2

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 83
    move-result-object v0

    .line 84
    :goto_0
    move-object v8, v0

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_1
    :goto_1
    new-array v1, v2, [Lw7/u;

    .line 88
    .line 89
    .line 90
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    sget-object v3, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    aput-object v2, v1, v5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 103
    move-result v0

    .line 104
    .line 105
    sub-float v0, p2, v0

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    aput-object v0, v1, v4

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 121
    move-result-object v0

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :goto_2
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 125
    .line 126
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    sget-object v1, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 133
    .line 134
    if-eq v0, v1, :cond_2

    .line 135
    move v10, v4

    .line 136
    goto :goto_3

    .line 137
    :cond_2
    move v10, v5

    .line 138
    :goto_3
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    const/4 v15, 0x0

    .line 143
    .line 144
    const/16 v16, 0x170

    .line 145
    .line 146
    const/16 v17, 0x0

    .line 147
    .line 148
    move-object/from16 v7, p1

    .line 149
    .line 150
    .line 151
    invoke-static/range {v6 .. v17}, Landroidx/compose/material/SwipeableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    :goto_4
    move-object/from16 v1, p0

    .line 155
    goto :goto_5

    .line 156
    .line 157
    :cond_3
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 158
    goto :goto_4

    .line 159
    .line 160
    .line 161
    :goto_5
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 162
    move-result-object v0

    .line 163
    return-object v0
.end method

.method public static final h(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;
    .locals 7
    .param p0    # Landroidx/compose/material/ModalBottomSheetValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/ModalBottomSheetState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "initialValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x72f3a17c

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 v0, p5, 0x2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableDefaults;->a()Landroidx/compose/animation/core/SpringSpec;

    .line 21
    move-result-object p1

    .line 22
    :cond_0
    move-object v1, p1

    .line 23
    .line 24
    and-int/lit8 p1, p5, 0x4

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget-object p2, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$3;->INSTANCE:Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$3;

    .line 29
    :cond_1
    move-object v3, p2

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    and-int/lit8 p1, p4, 0xe

    .line 33
    .line 34
    or-int/lit16 p1, p1, 0x1c0

    .line 35
    .line 36
    shl-int/lit8 p2, p4, 0x3

    .line 37
    .line 38
    and-int/lit16 p2, p2, 0x1c00

    .line 39
    .line 40
    or-int v5, p1, p2

    .line 41
    const/4 v6, 0x0

    .line 42
    move-object v0, p0

    .line 43
    move-object v4, p3

    .line 44
    .line 45
    .line 46
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/ModalBottomSheetKt;->i(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 51
    return-object p0
.end method

.method public static final i(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;
    .locals 7
    .param p0    # Landroidx/compose/material/ModalBottomSheetValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/ModalBottomSheetState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p5, "initialValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p5, -0x18653f58

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 p5, p6, 0x2

    .line 14
    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableDefaults;->a()Landroidx/compose/animation/core/SpringSpec;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p5, p6, 0x8

    .line 24
    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    sget-object p3, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$1;->INSTANCE:Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$1;

    .line 28
    :cond_1
    const/4 p5, 0x4

    .line 29
    .line 30
    new-array v0, p5, [Ljava/lang/Object;

    .line 31
    const/4 p5, 0x0

    .line 32
    .line 33
    aput-object p0, v0, p5

    .line 34
    const/4 p5, 0x1

    .line 35
    .line 36
    aput-object p1, v0, p5

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p5

    .line 41
    const/4 p6, 0x2

    .line 42
    .line 43
    aput-object p5, v0, p6

    .line 44
    const/4 p5, 0x3

    .line 45
    .line 46
    aput-object p3, v0, p5

    .line 47
    .line 48
    sget-object p5, Landroidx/compose/material/ModalBottomSheetState;->Companion:Landroidx/compose/material/ModalBottomSheetState$Companion;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetState$Companion;->a(Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x0

    .line 54
    .line 55
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, p0, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;-><init>(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLe8/l;)V

    .line 59
    .line 60
    const/16 v5, 0x48

    .line 61
    const/4 v6, 0x4

    .line 62
    move-object v4, p4

    .line 63
    .line 64
    .line 65
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    check-cast p0, Landroidx/compose/material/ModalBottomSheetState;

    .line 69
    .line 70
    .line 71
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 72
    return-object p0
.end method
