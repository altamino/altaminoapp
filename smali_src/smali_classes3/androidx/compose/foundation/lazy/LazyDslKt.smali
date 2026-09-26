.class public final Landroidx/compose/foundation/lazy/LazyDslKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyDsl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,423:1\n136#1,12:424\n171#1,12:436\n206#1,12:448\n241#1,12:460\n155#2:472\n155#2:473\n155#2:474\n155#2:475\n*S KotlinDebug\n*F\n+ 1 LazyDsl.kt\nandroidx/compose/foundation/lazy/LazyDslKt\n*L\n154#1:424,12\n189#1:436,12\n224#1:448,12\n259#1:460,12\n293#1:472\n349#1:473\n377#1:474\n403#1:475\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Le8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v12, p7

    .line 3
    .line 4
    move/from16 v13, p9

    .line 5
    .line 6
    move/from16 v14, p10

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x219418c5

    .line 15
    .line 16
    move-object/from16 v1, p8

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v15

    .line 21
    .line 22
    and-int/lit8 v0, v14, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    or-int/lit8 v1, v13, 0x6

    .line 27
    move v2, v1

    .line 28
    .line 29
    move-object/from16 v1, p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    and-int/lit8 v1, v13, 0xe

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move-object/from16 v1, p0

    .line 37
    .line 38
    .line 39
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    const/4 v2, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x2

    .line 46
    :goto_0
    or-int/2addr v2, v13

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    move-object/from16 v1, p0

    .line 50
    move v2, v13

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v3, v13, 0x70

    .line 53
    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    and-int/lit8 v3, v14, 0x2

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    move-object/from16 v3, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    const/16 v4, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_3
    move-object/from16 v3, p1

    .line 72
    .line 73
    :cond_4
    const/16 v4, 0x10

    .line 74
    :goto_2
    or-int/2addr v2, v4

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_5
    move-object/from16 v3, p1

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v4, v14, 0x4

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    or-int/lit16 v2, v2, 0x180

    .line 84
    .line 85
    :cond_6
    move-object/from16 v5, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v5, v13, 0x380

    .line 89
    .line 90
    if-nez v5, :cond_6

    .line 91
    .line 92
    move-object/from16 v5, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 97
    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    const/16 v6, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v6, 0x80

    .line 104
    :goto_4
    or-int/2addr v2, v6

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
    move/from16 v7, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v7, v13, 0x1c00

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move/from16 v7, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    .line 134
    :goto_7
    const v8, 0xe000

    .line 135
    .line 136
    and-int v9, v13, v8

    .line 137
    .line 138
    if-nez v9, :cond_e

    .line 139
    .line 140
    and-int/lit8 v9, v14, 0x10

    .line 141
    .line 142
    if-nez v9, :cond_c

    .line 143
    .line 144
    move-object/from16 v9, p4

    .line 145
    .line 146
    .line 147
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 148
    move-result v10

    .line 149
    .line 150
    if-eqz v10, :cond_d

    .line 151
    .line 152
    const/16 v10, 0x4000

    .line 153
    goto :goto_8

    .line 154
    .line 155
    :cond_c
    move-object/from16 v9, p4

    .line 156
    .line 157
    :cond_d
    const/16 v10, 0x2000

    .line 158
    :goto_8
    or-int/2addr v2, v10

    .line 159
    goto :goto_9

    .line 160
    .line 161
    :cond_e
    move-object/from16 v9, p4

    .line 162
    .line 163
    :goto_9
    and-int/lit8 v10, v14, 0x20

    .line 164
    .line 165
    const/high16 v11, 0x70000

    .line 166
    .line 167
    if-eqz v10, :cond_f

    .line 168
    .line 169
    const/high16 v16, 0x30000

    .line 170
    .line 171
    or-int v2, v2, v16

    .line 172
    .line 173
    move-object/from16 v11, p5

    .line 174
    goto :goto_b

    .line 175
    .line 176
    :cond_f
    and-int v16, v13, v11

    .line 177
    .line 178
    move-object/from16 v11, p5

    .line 179
    .line 180
    if-nez v16, :cond_11

    .line 181
    .line 182
    .line 183
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 184
    move-result v16

    .line 185
    .line 186
    if-eqz v16, :cond_10

    .line 187
    .line 188
    const/high16 v16, 0x20000

    .line 189
    goto :goto_a

    .line 190
    .line 191
    :cond_10
    const/high16 v16, 0x10000

    .line 192
    .line 193
    :goto_a
    or-int v2, v2, v16

    .line 194
    .line 195
    :cond_11
    :goto_b
    const/high16 v16, 0x380000

    .line 196
    .line 197
    and-int v17, v13, v16

    .line 198
    .line 199
    if-nez v17, :cond_13

    .line 200
    .line 201
    and-int/lit8 v17, v14, 0x40

    .line 202
    .line 203
    move-object/from16 v8, p6

    .line 204
    .line 205
    if-nez v17, :cond_12

    .line 206
    .line 207
    .line 208
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 209
    move-result v18

    .line 210
    .line 211
    if-eqz v18, :cond_12

    .line 212
    .line 213
    const/high16 v18, 0x100000

    .line 214
    goto :goto_c

    .line 215
    .line 216
    :cond_12
    const/high16 v18, 0x80000

    .line 217
    .line 218
    :goto_c
    or-int v2, v2, v18

    .line 219
    goto :goto_d

    .line 220
    .line 221
    :cond_13
    move-object/from16 v8, p6

    .line 222
    .line 223
    :goto_d
    and-int/lit16 v1, v14, 0x80

    .line 224
    .line 225
    const/high16 v18, 0xc00000

    .line 226
    .line 227
    if-eqz v1, :cond_14

    .line 228
    .line 229
    or-int v2, v2, v18

    .line 230
    goto :goto_f

    .line 231
    .line 232
    :cond_14
    const/high16 v1, 0x1c00000

    .line 233
    and-int/2addr v1, v13

    .line 234
    .line 235
    if-nez v1, :cond_16

    .line 236
    .line 237
    .line 238
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 239
    move-result v1

    .line 240
    .line 241
    if-eqz v1, :cond_15

    .line 242
    .line 243
    const/high16 v1, 0x800000

    .line 244
    goto :goto_e

    .line 245
    .line 246
    :cond_15
    const/high16 v1, 0x400000

    .line 247
    :goto_e
    or-int/2addr v2, v1

    .line 248
    .line 249
    .line 250
    :cond_16
    :goto_f
    const v1, 0x16db6db

    .line 251
    and-int/2addr v1, v2

    .line 252
    .line 253
    .line 254
    const v3, 0x492492

    .line 255
    .line 256
    if-ne v1, v3, :cond_18

    .line 257
    .line 258
    .line 259
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->b()Z

    .line 260
    move-result v1

    .line 261
    .line 262
    if-nez v1, :cond_17

    .line 263
    goto :goto_10

    .line 264
    .line 265
    .line 266
    :cond_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 267
    .line 268
    move-object/from16 v1, p0

    .line 269
    .line 270
    move-object/from16 v2, p1

    .line 271
    move-object v3, v5

    .line 272
    move v4, v7

    .line 273
    move-object v7, v8

    .line 274
    move-object v5, v9

    .line 275
    move-object v6, v11

    .line 276
    .line 277
    goto/16 :goto_18

    .line 278
    .line 279
    .line 280
    :cond_18
    :goto_10
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->J()V

    .line 281
    .line 282
    and-int/lit8 v1, v13, 0x1

    .line 283
    const/4 v3, 0x3

    .line 284
    .line 285
    .line 286
    const v19, -0x380001

    .line 287
    .line 288
    .line 289
    const v20, -0xe001

    .line 290
    .line 291
    if-eqz v1, :cond_1d

    .line 292
    .line 293
    .line 294
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->h()Z

    .line 295
    move-result v1

    .line 296
    .line 297
    if-eqz v1, :cond_19

    .line 298
    goto :goto_13

    .line 299
    .line 300
    .line 301
    :cond_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 302
    .line 303
    and-int/lit8 v0, v14, 0x2

    .line 304
    .line 305
    if-eqz v0, :cond_1a

    .line 306
    .line 307
    and-int/lit8 v2, v2, -0x71

    .line 308
    .line 309
    :cond_1a
    and-int/lit8 v0, v14, 0x10

    .line 310
    .line 311
    if-eqz v0, :cond_1b

    .line 312
    .line 313
    and-int v2, v2, v20

    .line 314
    .line 315
    :cond_1b
    and-int/lit8 v0, v14, 0x40

    .line 316
    .line 317
    if-eqz v0, :cond_1c

    .line 318
    .line 319
    and-int v2, v2, v19

    .line 320
    .line 321
    :cond_1c
    move-object/from16 v19, p0

    .line 322
    .line 323
    move-object/from16 v20, p1

    .line 324
    .line 325
    :goto_11
    move-object/from16 v21, v5

    .line 326
    .line 327
    move/from16 v22, v7

    .line 328
    .line 329
    move-object/from16 v25, v8

    .line 330
    .line 331
    :goto_12
    move-object/from16 v23, v9

    .line 332
    .line 333
    move-object/from16 v24, v11

    .line 334
    .line 335
    goto/16 :goto_17

    .line 336
    .line 337
    :cond_1d
    :goto_13
    if-eqz v0, :cond_1e

    .line 338
    .line 339
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 340
    goto :goto_14

    .line 341
    .line 342
    :cond_1e
    move-object/from16 v0, p0

    .line 343
    .line 344
    :goto_14
    and-int/lit8 v1, v14, 0x2

    .line 345
    .line 346
    move-object/from16 p0, v0

    .line 347
    const/4 v0, 0x0

    .line 348
    .line 349
    if-eqz v1, :cond_1f

    .line 350
    .line 351
    .line 352
    invoke-static {v0, v0, v15, v0, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    and-int/lit8 v2, v2, -0x71

    .line 356
    goto :goto_15

    .line 357
    .line 358
    :cond_1f
    move-object/from16 v1, p1

    .line 359
    .line 360
    :goto_15
    if-eqz v4, :cond_20

    .line 361
    int-to-float v4, v0

    .line 362
    .line 363
    .line 364
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 365
    move-result v4

    .line 366
    .line 367
    .line 368
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 369
    move-result-object v4

    .line 370
    move-object v5, v4

    .line 371
    .line 372
    :cond_20
    if-eqz v6, :cond_21

    .line 373
    move v7, v0

    .line 374
    .line 375
    :cond_21
    and-int/lit8 v0, v14, 0x10

    .line 376
    .line 377
    if-eqz v0, :cond_23

    .line 378
    .line 379
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 380
    .line 381
    if-nez v7, :cond_22

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 385
    move-result-object v0

    .line 386
    goto :goto_16

    .line 387
    .line 388
    .line 389
    :cond_22
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->a()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    :goto_16
    and-int v2, v2, v20

    .line 393
    move-object v9, v0

    .line 394
    .line 395
    :cond_23
    if-eqz v10, :cond_24

    .line 396
    .line 397
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 401
    move-result-object v0

    .line 402
    move-object v11, v0

    .line 403
    .line 404
    :cond_24
    and-int/lit8 v0, v14, 0x40

    .line 405
    .line 406
    if-eqz v0, :cond_25

    .line 407
    .line 408
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 409
    const/4 v4, 0x6

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v15, v4}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 413
    move-result-object v0

    .line 414
    .line 415
    and-int v2, v2, v19

    .line 416
    .line 417
    move-object/from16 v19, p0

    .line 418
    .line 419
    move-object/from16 v25, v0

    .line 420
    .line 421
    move-object/from16 v20, v1

    .line 422
    .line 423
    move-object/from16 v21, v5

    .line 424
    .line 425
    move/from16 v22, v7

    .line 426
    goto :goto_12

    .line 427
    .line 428
    :cond_25
    move-object/from16 v19, p0

    .line 429
    .line 430
    move-object/from16 v20, v1

    .line 431
    goto :goto_11

    .line 432
    .line 433
    .line 434
    :goto_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->A()V

    .line 435
    const/4 v7, 0x1

    .line 436
    .line 437
    and-int/lit8 v0, v2, 0xe

    .line 438
    .line 439
    or-int v0, v0, v18

    .line 440
    .line 441
    and-int/lit8 v1, v2, 0x70

    .line 442
    or-int/2addr v0, v1

    .line 443
    .line 444
    and-int/lit16 v1, v2, 0x380

    .line 445
    or-int/2addr v0, v1

    .line 446
    .line 447
    and-int/lit16 v1, v2, 0x1c00

    .line 448
    or-int/2addr v0, v1

    .line 449
    .line 450
    .line 451
    const v1, 0xe000

    .line 452
    and-int/2addr v1, v2

    .line 453
    or-int/2addr v0, v1

    .line 454
    .line 455
    const/high16 v1, 0x70000

    .line 456
    and-int/2addr v1, v2

    .line 457
    or-int/2addr v0, v1

    .line 458
    .line 459
    and-int v1, v2, v16

    .line 460
    or-int/2addr v0, v1

    .line 461
    .line 462
    const/high16 v1, 0xe000000

    .line 463
    shl-int/2addr v2, v3

    .line 464
    and-int/2addr v1, v2

    .line 465
    .line 466
    or-int v10, v0, v1

    .line 467
    const/4 v11, 0x0

    .line 468
    .line 469
    move-object/from16 v0, v19

    .line 470
    .line 471
    move-object/from16 v1, v20

    .line 472
    .line 473
    move-object/from16 v2, v21

    .line 474
    .line 475
    move/from16 v3, v22

    .line 476
    .line 477
    move-object/from16 v4, v23

    .line 478
    .line 479
    move-object/from16 v5, v24

    .line 480
    .line 481
    move-object/from16 v6, v25

    .line 482
    .line 483
    move-object/from16 v8, p7

    .line 484
    move-object v9, v15

    .line 485
    .line 486
    .line 487
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;Landroidx/compose/runtime/Composer;II)V

    .line 488
    .line 489
    move-object/from16 v1, v19

    .line 490
    .line 491
    move-object/from16 v2, v20

    .line 492
    .line 493
    move-object/from16 v3, v21

    .line 494
    .line 495
    move/from16 v4, v22

    .line 496
    .line 497
    move-object/from16 v5, v23

    .line 498
    .line 499
    move-object/from16 v6, v24

    .line 500
    .line 501
    move-object/from16 v7, v25

    .line 502
    .line 503
    .line 504
    :goto_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 505
    move-result-object v11

    .line 506
    .line 507
    if-nez v11, :cond_26

    .line 508
    goto :goto_19

    .line 509
    .line 510
    :cond_26
    new-instance v15, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;

    .line 511
    move-object v0, v15

    .line 512
    .line 513
    move-object/from16 v8, p7

    .line 514
    .line 515
    move/from16 v9, p9

    .line 516
    .line 517
    move/from16 v10, p10

    .line 518
    .line 519
    .line 520
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Le8/l;II)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v11, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 524
    :goto_19
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p8

    .line 3
    .line 4
    move/from16 v14, p10

    .line 5
    .line 6
    move/from16 v13, p11

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x2c266969

    .line 15
    .line 16
    move-object/from16 v1, p9

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v12

    .line 21
    .line 22
    and-int/lit8 v0, v13, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    or-int/lit8 v1, v14, 0x6

    .line 27
    move v2, v1

    .line 28
    .line 29
    move-object/from16 v1, p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    and-int/lit8 v1, v14, 0xe

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move-object/from16 v1, p0

    .line 37
    .line 38
    .line 39
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    const/4 v2, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x2

    .line 46
    :goto_0
    or-int/2addr v2, v14

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    move-object/from16 v1, p0

    .line 50
    move v2, v14

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v3, v14, 0x70

    .line 53
    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    and-int/lit8 v3, v13, 0x2

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    move-object/from16 v3, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    const/16 v4, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_3
    move-object/from16 v3, p1

    .line 72
    .line 73
    :cond_4
    const/16 v4, 0x10

    .line 74
    :goto_2
    or-int/2addr v2, v4

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_5
    move-object/from16 v3, p1

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v4, v13, 0x4

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    or-int/lit16 v2, v2, 0x180

    .line 84
    .line 85
    :cond_6
    move-object/from16 v5, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v5, v14, 0x380

    .line 89
    .line 90
    if-nez v5, :cond_6

    .line 91
    .line 92
    move-object/from16 v5, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 97
    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    const/16 v6, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v6, 0x80

    .line 104
    :goto_4
    or-int/2addr v2, v6

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v6, v13, 0x8

    .line 107
    .line 108
    if-eqz v6, :cond_a

    .line 109
    .line 110
    or-int/lit16 v2, v2, 0xc00

    .line 111
    .line 112
    :cond_9
    move/from16 v7, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v7, v14, 0x1c00

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move/from16 v7, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    .line 134
    :goto_7
    const v8, 0xe000

    .line 135
    and-int/2addr v8, v14

    .line 136
    .line 137
    if-nez v8, :cond_e

    .line 138
    .line 139
    and-int/lit8 v8, v13, 0x10

    .line 140
    .line 141
    if-nez v8, :cond_c

    .line 142
    .line 143
    move-object/from16 v8, p4

    .line 144
    .line 145
    .line 146
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 147
    move-result v9

    .line 148
    .line 149
    if-eqz v9, :cond_d

    .line 150
    .line 151
    const/16 v9, 0x4000

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :cond_c
    move-object/from16 v8, p4

    .line 155
    .line 156
    :cond_d
    const/16 v9, 0x2000

    .line 157
    :goto_8
    or-int/2addr v2, v9

    .line 158
    goto :goto_9

    .line 159
    .line 160
    :cond_e
    move-object/from16 v8, p4

    .line 161
    .line 162
    :goto_9
    and-int/lit8 v9, v13, 0x20

    .line 163
    .line 164
    const/high16 v10, 0x70000

    .line 165
    .line 166
    if-eqz v9, :cond_10

    .line 167
    .line 168
    const/high16 v11, 0x30000

    .line 169
    or-int/2addr v2, v11

    .line 170
    .line 171
    :cond_f
    move-object/from16 v11, p5

    .line 172
    goto :goto_b

    .line 173
    .line 174
    :cond_10
    and-int v11, v14, v10

    .line 175
    .line 176
    if-nez v11, :cond_f

    .line 177
    .line 178
    move-object/from16 v11, p5

    .line 179
    .line 180
    .line 181
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 182
    move-result v16

    .line 183
    .line 184
    if-eqz v16, :cond_11

    .line 185
    .line 186
    const/high16 v16, 0x20000

    .line 187
    goto :goto_a

    .line 188
    .line 189
    :cond_11
    const/high16 v16, 0x10000

    .line 190
    .line 191
    :goto_a
    or-int v2, v2, v16

    .line 192
    .line 193
    :goto_b
    const/high16 v16, 0x380000

    .line 194
    .line 195
    and-int v17, v14, v16

    .line 196
    .line 197
    if-nez v17, :cond_13

    .line 198
    .line 199
    and-int/lit8 v17, v13, 0x40

    .line 200
    .line 201
    move-object/from16 v10, p6

    .line 202
    .line 203
    if-nez v17, :cond_12

    .line 204
    .line 205
    .line 206
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 207
    move-result v17

    .line 208
    .line 209
    if-eqz v17, :cond_12

    .line 210
    .line 211
    const/high16 v17, 0x100000

    .line 212
    goto :goto_c

    .line 213
    .line 214
    :cond_12
    const/high16 v17, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v2, v2, v17

    .line 217
    goto :goto_d

    .line 218
    .line 219
    :cond_13
    move-object/from16 v10, p6

    .line 220
    .line 221
    :goto_d
    and-int/lit16 v1, v13, 0x80

    .line 222
    .line 223
    const/high16 v17, 0x1c00000

    .line 224
    .line 225
    if-eqz v1, :cond_14

    .line 226
    .line 227
    const/high16 v18, 0xc00000

    .line 228
    .line 229
    or-int v2, v2, v18

    .line 230
    .line 231
    move/from16 v3, p7

    .line 232
    goto :goto_f

    .line 233
    .line 234
    :cond_14
    and-int v18, v14, v17

    .line 235
    .line 236
    move/from16 v3, p7

    .line 237
    .line 238
    if-nez v18, :cond_16

    .line 239
    .line 240
    .line 241
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 242
    move-result v18

    .line 243
    .line 244
    if-eqz v18, :cond_15

    .line 245
    .line 246
    const/high16 v18, 0x800000

    .line 247
    goto :goto_e

    .line 248
    .line 249
    :cond_15
    const/high16 v18, 0x400000

    .line 250
    .line 251
    :goto_e
    or-int v2, v2, v18

    .line 252
    .line 253
    :cond_16
    :goto_f
    and-int/lit16 v3, v13, 0x100

    .line 254
    .line 255
    const/high16 v18, 0xe000000

    .line 256
    .line 257
    if-eqz v3, :cond_17

    .line 258
    .line 259
    const/high16 v3, 0x6000000

    .line 260
    :goto_10
    or-int/2addr v2, v3

    .line 261
    goto :goto_11

    .line 262
    .line 263
    :cond_17
    and-int v3, v14, v18

    .line 264
    .line 265
    if-nez v3, :cond_19

    .line 266
    .line 267
    .line 268
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 269
    move-result v3

    .line 270
    .line 271
    if-eqz v3, :cond_18

    .line 272
    .line 273
    const/high16 v3, 0x4000000

    .line 274
    goto :goto_10

    .line 275
    .line 276
    :cond_18
    const/high16 v3, 0x2000000

    .line 277
    goto :goto_10

    .line 278
    .line 279
    .line 280
    :cond_19
    :goto_11
    const v3, 0xb6db6db

    .line 281
    and-int/2addr v3, v2

    .line 282
    .line 283
    .line 284
    const v5, 0x2492492

    .line 285
    .line 286
    if-ne v3, v5, :cond_1b

    .line 287
    .line 288
    .line 289
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 290
    move-result v3

    .line 291
    .line 292
    if-nez v3, :cond_1a

    .line 293
    goto :goto_12

    .line 294
    .line 295
    .line 296
    :cond_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 297
    .line 298
    move-object/from16 v1, p0

    .line 299
    .line 300
    move-object/from16 v2, p1

    .line 301
    .line 302
    move-object/from16 v3, p2

    .line 303
    move v4, v7

    .line 304
    move-object v5, v8

    .line 305
    move-object v7, v10

    .line 306
    move-object v6, v11

    .line 307
    .line 308
    move-object/from16 v27, v12

    .line 309
    .line 310
    move/from16 v8, p7

    .line 311
    .line 312
    goto/16 :goto_1e

    .line 313
    .line 314
    .line 315
    :cond_1b
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->J()V

    .line 316
    .line 317
    and-int/lit8 v3, v14, 0x1

    .line 318
    .line 319
    .line 320
    const v5, -0x380001

    .line 321
    .line 322
    .line 323
    const v19, -0xe001

    .line 324
    .line 325
    if-eqz v3, :cond_20

    .line 326
    .line 327
    .line 328
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->h()Z

    .line 329
    move-result v3

    .line 330
    .line 331
    if-eqz v3, :cond_1c

    .line 332
    goto :goto_13

    .line 333
    .line 334
    .line 335
    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 336
    .line 337
    and-int/lit8 v0, v13, 0x2

    .line 338
    .line 339
    if-eqz v0, :cond_1d

    .line 340
    .line 341
    and-int/lit8 v2, v2, -0x71

    .line 342
    .line 343
    :cond_1d
    and-int/lit8 v0, v13, 0x10

    .line 344
    .line 345
    if-eqz v0, :cond_1e

    .line 346
    .line 347
    and-int v2, v2, v19

    .line 348
    .line 349
    :cond_1e
    and-int/lit8 v0, v13, 0x40

    .line 350
    .line 351
    if-eqz v0, :cond_1f

    .line 352
    and-int/2addr v2, v5

    .line 353
    .line 354
    :cond_1f
    move-object/from16 v19, p0

    .line 355
    .line 356
    move-object/from16 v20, p1

    .line 357
    .line 358
    move-object/from16 v21, p2

    .line 359
    .line 360
    move/from16 v26, p7

    .line 361
    .line 362
    move/from16 v22, v7

    .line 363
    .line 364
    move-object/from16 v23, v8

    .line 365
    .line 366
    move-object/from16 v25, v10

    .line 367
    .line 368
    move-object/from16 v24, v11

    .line 369
    .line 370
    goto/16 :goto_1d

    .line 371
    .line 372
    :cond_20
    :goto_13
    if-eqz v0, :cond_21

    .line 373
    .line 374
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 375
    goto :goto_14

    .line 376
    .line 377
    :cond_21
    move-object/from16 v0, p0

    .line 378
    .line 379
    :goto_14
    and-int/lit8 v3, v13, 0x2

    .line 380
    const/4 v5, 0x0

    .line 381
    .line 382
    if-eqz v3, :cond_22

    .line 383
    const/4 v3, 0x3

    .line 384
    .line 385
    .line 386
    invoke-static {v5, v5, v12, v5, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;

    .line 387
    move-result-object v3

    .line 388
    .line 389
    and-int/lit8 v2, v2, -0x71

    .line 390
    goto :goto_15

    .line 391
    .line 392
    :cond_22
    move-object/from16 v3, p1

    .line 393
    .line 394
    :goto_15
    if-eqz v4, :cond_23

    .line 395
    int-to-float v4, v5

    .line 396
    .line 397
    .line 398
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 399
    move-result v4

    .line 400
    .line 401
    .line 402
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 403
    move-result-object v4

    .line 404
    goto :goto_16

    .line 405
    .line 406
    :cond_23
    move-object/from16 v4, p2

    .line 407
    .line 408
    :goto_16
    if-eqz v6, :cond_24

    .line 409
    goto :goto_17

    .line 410
    :cond_24
    move v5, v7

    .line 411
    .line 412
    :goto_17
    and-int/lit8 v6, v13, 0x10

    .line 413
    .line 414
    if-eqz v6, :cond_26

    .line 415
    .line 416
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 417
    .line 418
    if-nez v5, :cond_25

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 422
    move-result-object v6

    .line 423
    goto :goto_18

    .line 424
    .line 425
    .line 426
    :cond_25
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->a()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 427
    move-result-object v6

    .line 428
    .line 429
    :goto_18
    and-int v2, v2, v19

    .line 430
    goto :goto_19

    .line 431
    :cond_26
    move-object v6, v8

    .line 432
    .line 433
    :goto_19
    if-eqz v9, :cond_27

    .line 434
    .line 435
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 439
    move-result-object v7

    .line 440
    goto :goto_1a

    .line 441
    :cond_27
    move-object v7, v11

    .line 442
    .line 443
    :goto_1a
    and-int/lit8 v8, v13, 0x40

    .line 444
    .line 445
    if-eqz v8, :cond_28

    .line 446
    .line 447
    sget-object v8, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 448
    const/4 v9, 0x6

    .line 449
    .line 450
    .line 451
    invoke-virtual {v8, v12, v9}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 452
    move-result-object v8

    .line 453
    .line 454
    .line 455
    const v9, -0x380001

    .line 456
    and-int/2addr v2, v9

    .line 457
    goto :goto_1b

    .line 458
    :cond_28
    move-object v8, v10

    .line 459
    .line 460
    :goto_1b
    if-eqz v1, :cond_29

    .line 461
    const/4 v1, 0x1

    .line 462
    .line 463
    move-object/from16 v19, v0

    .line 464
    .line 465
    move/from16 v26, v1

    .line 466
    .line 467
    :goto_1c
    move-object/from16 v20, v3

    .line 468
    .line 469
    move-object/from16 v21, v4

    .line 470
    .line 471
    move/from16 v22, v5

    .line 472
    .line 473
    move-object/from16 v23, v6

    .line 474
    .line 475
    move-object/from16 v24, v7

    .line 476
    .line 477
    move-object/from16 v25, v8

    .line 478
    goto :goto_1d

    .line 479
    .line 480
    :cond_29
    move/from16 v26, p7

    .line 481
    .line 482
    move-object/from16 v19, v0

    .line 483
    goto :goto_1c

    .line 484
    .line 485
    .line 486
    :goto_1d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->A()V

    .line 487
    const/4 v4, 0x1

    .line 488
    const/4 v9, 0x0

    .line 489
    const/4 v10, 0x0

    .line 490
    .line 491
    and-int/lit8 v0, v2, 0xe

    .line 492
    .line 493
    or-int/lit16 v0, v0, 0x6000

    .line 494
    .line 495
    and-int/lit8 v1, v2, 0x70

    .line 496
    or-int/2addr v0, v1

    .line 497
    .line 498
    and-int/lit16 v1, v2, 0x380

    .line 499
    or-int/2addr v0, v1

    .line 500
    .line 501
    and-int/lit16 v1, v2, 0x1c00

    .line 502
    or-int/2addr v0, v1

    .line 503
    .line 504
    shr-int/lit8 v1, v2, 0x3

    .line 505
    .line 506
    const/high16 v3, 0x70000

    .line 507
    and-int/2addr v3, v1

    .line 508
    or-int/2addr v0, v3

    .line 509
    .line 510
    and-int v1, v1, v16

    .line 511
    or-int/2addr v0, v1

    .line 512
    .line 513
    shl-int/lit8 v1, v2, 0x6

    .line 514
    .line 515
    and-int v1, v1, v17

    .line 516
    or-int/2addr v0, v1

    .line 517
    .line 518
    shl-int/lit8 v1, v2, 0xc

    .line 519
    .line 520
    and-int v1, v1, v18

    .line 521
    .line 522
    or-int v16, v0, v1

    .line 523
    .line 524
    shr-int/lit8 v0, v2, 0x15

    .line 525
    .line 526
    and-int/lit8 v17, v0, 0x70

    .line 527
    .line 528
    const/16 v18, 0x600

    .line 529
    .line 530
    move-object/from16 v0, v19

    .line 531
    .line 532
    move-object/from16 v1, v20

    .line 533
    .line 534
    move-object/from16 v2, v21

    .line 535
    .line 536
    move/from16 v3, v22

    .line 537
    .line 538
    move-object/from16 v5, v25

    .line 539
    .line 540
    move/from16 v6, v26

    .line 541
    .line 542
    move-object/from16 v7, v24

    .line 543
    .line 544
    move-object/from16 v8, v23

    .line 545
    .line 546
    move-object/from16 v11, p8

    .line 547
    .line 548
    move-object/from16 v27, v12

    .line 549
    .line 550
    move/from16 v13, v16

    .line 551
    .line 552
    move/from16 v14, v17

    .line 553
    .line 554
    move/from16 v15, v18

    .line 555
    .line 556
    .line 557
    invoke-static/range {v0 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V

    .line 558
    .line 559
    move-object/from16 v1, v19

    .line 560
    .line 561
    move-object/from16 v2, v20

    .line 562
    .line 563
    move-object/from16 v3, v21

    .line 564
    .line 565
    move/from16 v4, v22

    .line 566
    .line 567
    move-object/from16 v5, v23

    .line 568
    .line 569
    move-object/from16 v6, v24

    .line 570
    .line 571
    move-object/from16 v7, v25

    .line 572
    .line 573
    move/from16 v8, v26

    .line 574
    .line 575
    .line 576
    :goto_1e
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 577
    move-result-object v12

    .line 578
    .line 579
    if-nez v12, :cond_2a

    .line 580
    goto :goto_1f

    .line 581
    .line 582
    :cond_2a
    new-instance v13, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$1;

    .line 583
    move-object v0, v13

    .line 584
    .line 585
    move-object/from16 v9, p8

    .line 586
    .line 587
    move/from16 v10, p10

    .line 588
    .line 589
    move/from16 v11, p11

    .line 590
    .line 591
    .line 592
    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;II)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 596
    :goto_1f
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;Le8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 26
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v12, p7

    .line 3
    .line 4
    move/from16 v13, p9

    .line 5
    .line 6
    move/from16 v14, p10

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x185083df

    .line 15
    .line 16
    move-object/from16 v1, p8

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v15

    .line 21
    .line 22
    and-int/lit8 v0, v14, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    or-int/lit8 v1, v13, 0x6

    .line 27
    move v2, v1

    .line 28
    .line 29
    move-object/from16 v1, p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    and-int/lit8 v1, v13, 0xe

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move-object/from16 v1, p0

    .line 37
    .line 38
    .line 39
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    const/4 v2, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x2

    .line 46
    :goto_0
    or-int/2addr v2, v13

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    move-object/from16 v1, p0

    .line 50
    move v2, v13

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v3, v13, 0x70

    .line 53
    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    and-int/lit8 v3, v14, 0x2

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    move-object/from16 v3, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    const/16 v4, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_3
    move-object/from16 v3, p1

    .line 72
    .line 73
    :cond_4
    const/16 v4, 0x10

    .line 74
    :goto_2
    or-int/2addr v2, v4

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_5
    move-object/from16 v3, p1

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v4, v14, 0x4

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    or-int/lit16 v2, v2, 0x180

    .line 84
    .line 85
    :cond_6
    move-object/from16 v5, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v5, v13, 0x380

    .line 89
    .line 90
    if-nez v5, :cond_6

    .line 91
    .line 92
    move-object/from16 v5, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 97
    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    const/16 v6, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v6, 0x80

    .line 104
    :goto_4
    or-int/2addr v2, v6

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
    move/from16 v7, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v7, v13, 0x1c00

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move/from16 v7, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    .line 134
    :goto_7
    const v8, 0xe000

    .line 135
    .line 136
    and-int v9, v13, v8

    .line 137
    .line 138
    if-nez v9, :cond_e

    .line 139
    .line 140
    and-int/lit8 v9, v14, 0x10

    .line 141
    .line 142
    if-nez v9, :cond_c

    .line 143
    .line 144
    move-object/from16 v9, p4

    .line 145
    .line 146
    .line 147
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 148
    move-result v10

    .line 149
    .line 150
    if-eqz v10, :cond_d

    .line 151
    .line 152
    const/16 v10, 0x4000

    .line 153
    goto :goto_8

    .line 154
    .line 155
    :cond_c
    move-object/from16 v9, p4

    .line 156
    .line 157
    :cond_d
    const/16 v10, 0x2000

    .line 158
    :goto_8
    or-int/2addr v2, v10

    .line 159
    goto :goto_9

    .line 160
    .line 161
    :cond_e
    move-object/from16 v9, p4

    .line 162
    .line 163
    :goto_9
    and-int/lit8 v10, v14, 0x20

    .line 164
    .line 165
    const/high16 v11, 0x70000

    .line 166
    .line 167
    if-eqz v10, :cond_f

    .line 168
    .line 169
    const/high16 v16, 0x30000

    .line 170
    .line 171
    or-int v2, v2, v16

    .line 172
    .line 173
    move-object/from16 v11, p5

    .line 174
    goto :goto_b

    .line 175
    .line 176
    :cond_f
    and-int v16, v13, v11

    .line 177
    .line 178
    move-object/from16 v11, p5

    .line 179
    .line 180
    if-nez v16, :cond_11

    .line 181
    .line 182
    .line 183
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 184
    move-result v16

    .line 185
    .line 186
    if-eqz v16, :cond_10

    .line 187
    .line 188
    const/high16 v16, 0x20000

    .line 189
    goto :goto_a

    .line 190
    .line 191
    :cond_10
    const/high16 v16, 0x10000

    .line 192
    .line 193
    :goto_a
    or-int v2, v2, v16

    .line 194
    .line 195
    :cond_11
    :goto_b
    const/high16 v16, 0x380000

    .line 196
    .line 197
    and-int v17, v13, v16

    .line 198
    .line 199
    if-nez v17, :cond_13

    .line 200
    .line 201
    and-int/lit8 v17, v14, 0x40

    .line 202
    .line 203
    move-object/from16 v8, p6

    .line 204
    .line 205
    if-nez v17, :cond_12

    .line 206
    .line 207
    .line 208
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 209
    move-result v18

    .line 210
    .line 211
    if-eqz v18, :cond_12

    .line 212
    .line 213
    const/high16 v18, 0x100000

    .line 214
    goto :goto_c

    .line 215
    .line 216
    :cond_12
    const/high16 v18, 0x80000

    .line 217
    .line 218
    :goto_c
    or-int v2, v2, v18

    .line 219
    goto :goto_d

    .line 220
    .line 221
    :cond_13
    move-object/from16 v8, p6

    .line 222
    .line 223
    :goto_d
    and-int/lit16 v1, v14, 0x80

    .line 224
    .line 225
    const/high16 v18, 0xc00000

    .line 226
    .line 227
    if-eqz v1, :cond_14

    .line 228
    .line 229
    or-int v2, v2, v18

    .line 230
    goto :goto_f

    .line 231
    .line 232
    :cond_14
    const/high16 v1, 0x1c00000

    .line 233
    and-int/2addr v1, v13

    .line 234
    .line 235
    if-nez v1, :cond_16

    .line 236
    .line 237
    .line 238
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 239
    move-result v1

    .line 240
    .line 241
    if-eqz v1, :cond_15

    .line 242
    .line 243
    const/high16 v1, 0x800000

    .line 244
    goto :goto_e

    .line 245
    .line 246
    :cond_15
    const/high16 v1, 0x400000

    .line 247
    :goto_e
    or-int/2addr v2, v1

    .line 248
    .line 249
    .line 250
    :cond_16
    :goto_f
    const v1, 0x16db6db

    .line 251
    and-int/2addr v1, v2

    .line 252
    .line 253
    .line 254
    const v3, 0x492492

    .line 255
    .line 256
    if-ne v1, v3, :cond_18

    .line 257
    .line 258
    .line 259
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->b()Z

    .line 260
    move-result v1

    .line 261
    .line 262
    if-nez v1, :cond_17

    .line 263
    goto :goto_10

    .line 264
    .line 265
    .line 266
    :cond_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 267
    .line 268
    move-object/from16 v1, p0

    .line 269
    .line 270
    move-object/from16 v2, p1

    .line 271
    move-object v3, v5

    .line 272
    move v4, v7

    .line 273
    move-object v7, v8

    .line 274
    move-object v5, v9

    .line 275
    move-object v6, v11

    .line 276
    .line 277
    goto/16 :goto_18

    .line 278
    .line 279
    .line 280
    :cond_18
    :goto_10
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->J()V

    .line 281
    .line 282
    and-int/lit8 v1, v13, 0x1

    .line 283
    const/4 v3, 0x3

    .line 284
    .line 285
    .line 286
    const v19, -0x380001

    .line 287
    .line 288
    .line 289
    const v20, -0xe001

    .line 290
    .line 291
    if-eqz v1, :cond_1d

    .line 292
    .line 293
    .line 294
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->h()Z

    .line 295
    move-result v1

    .line 296
    .line 297
    if-eqz v1, :cond_19

    .line 298
    goto :goto_13

    .line 299
    .line 300
    .line 301
    :cond_19
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 302
    .line 303
    and-int/lit8 v0, v14, 0x2

    .line 304
    .line 305
    if-eqz v0, :cond_1a

    .line 306
    .line 307
    and-int/lit8 v2, v2, -0x71

    .line 308
    .line 309
    :cond_1a
    and-int/lit8 v0, v14, 0x10

    .line 310
    .line 311
    if-eqz v0, :cond_1b

    .line 312
    .line 313
    and-int v2, v2, v20

    .line 314
    .line 315
    :cond_1b
    and-int/lit8 v0, v14, 0x40

    .line 316
    .line 317
    if-eqz v0, :cond_1c

    .line 318
    .line 319
    and-int v2, v2, v19

    .line 320
    .line 321
    :cond_1c
    move-object/from16 v19, p0

    .line 322
    .line 323
    move-object/from16 v20, p1

    .line 324
    .line 325
    :goto_11
    move-object/from16 v21, v5

    .line 326
    .line 327
    move/from16 v22, v7

    .line 328
    .line 329
    move-object/from16 v25, v8

    .line 330
    .line 331
    :goto_12
    move-object/from16 v23, v9

    .line 332
    .line 333
    move-object/from16 v24, v11

    .line 334
    .line 335
    goto/16 :goto_17

    .line 336
    .line 337
    :cond_1d
    :goto_13
    if-eqz v0, :cond_1e

    .line 338
    .line 339
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 340
    goto :goto_14

    .line 341
    .line 342
    :cond_1e
    move-object/from16 v0, p0

    .line 343
    .line 344
    :goto_14
    and-int/lit8 v1, v14, 0x2

    .line 345
    .line 346
    move-object/from16 p0, v0

    .line 347
    const/4 v0, 0x0

    .line 348
    .line 349
    if-eqz v1, :cond_1f

    .line 350
    .line 351
    .line 352
    invoke-static {v0, v0, v15, v0, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    and-int/lit8 v2, v2, -0x71

    .line 356
    goto :goto_15

    .line 357
    .line 358
    :cond_1f
    move-object/from16 v1, p1

    .line 359
    .line 360
    :goto_15
    if-eqz v4, :cond_20

    .line 361
    int-to-float v4, v0

    .line 362
    .line 363
    .line 364
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 365
    move-result v4

    .line 366
    .line 367
    .line 368
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 369
    move-result-object v4

    .line 370
    move-object v5, v4

    .line 371
    .line 372
    :cond_20
    if-eqz v6, :cond_21

    .line 373
    move v7, v0

    .line 374
    .line 375
    :cond_21
    and-int/lit8 v0, v14, 0x10

    .line 376
    .line 377
    if-eqz v0, :cond_23

    .line 378
    .line 379
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 380
    .line 381
    if-nez v7, :cond_22

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 385
    move-result-object v0

    .line 386
    goto :goto_16

    .line 387
    .line 388
    .line 389
    :cond_22
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/Arrangement;->c()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    :goto_16
    and-int v2, v2, v20

    .line 393
    move-object v9, v0

    .line 394
    .line 395
    :cond_23
    if-eqz v10, :cond_24

    .line 396
    .line 397
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 401
    move-result-object v0

    .line 402
    move-object v11, v0

    .line 403
    .line 404
    :cond_24
    and-int/lit8 v0, v14, 0x40

    .line 405
    .line 406
    if-eqz v0, :cond_25

    .line 407
    .line 408
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 409
    const/4 v4, 0x6

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v15, v4}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 413
    move-result-object v0

    .line 414
    .line 415
    and-int v2, v2, v19

    .line 416
    .line 417
    move-object/from16 v19, p0

    .line 418
    .line 419
    move-object/from16 v25, v0

    .line 420
    .line 421
    move-object/from16 v20, v1

    .line 422
    .line 423
    move-object/from16 v21, v5

    .line 424
    .line 425
    move/from16 v22, v7

    .line 426
    goto :goto_12

    .line 427
    .line 428
    :cond_25
    move-object/from16 v19, p0

    .line 429
    .line 430
    move-object/from16 v20, v1

    .line 431
    goto :goto_11

    .line 432
    .line 433
    .line 434
    :goto_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->A()V

    .line 435
    const/4 v7, 0x1

    .line 436
    .line 437
    and-int/lit8 v0, v2, 0xe

    .line 438
    .line 439
    or-int v0, v0, v18

    .line 440
    .line 441
    and-int/lit8 v1, v2, 0x70

    .line 442
    or-int/2addr v0, v1

    .line 443
    .line 444
    and-int/lit16 v1, v2, 0x380

    .line 445
    or-int/2addr v0, v1

    .line 446
    .line 447
    and-int/lit16 v1, v2, 0x1c00

    .line 448
    or-int/2addr v0, v1

    .line 449
    .line 450
    .line 451
    const v1, 0xe000

    .line 452
    and-int/2addr v1, v2

    .line 453
    or-int/2addr v0, v1

    .line 454
    .line 455
    const/high16 v1, 0x70000

    .line 456
    and-int/2addr v1, v2

    .line 457
    or-int/2addr v0, v1

    .line 458
    .line 459
    and-int v1, v2, v16

    .line 460
    or-int/2addr v0, v1

    .line 461
    .line 462
    const/high16 v1, 0xe000000

    .line 463
    shl-int/2addr v2, v3

    .line 464
    and-int/2addr v1, v2

    .line 465
    .line 466
    or-int v10, v0, v1

    .line 467
    const/4 v11, 0x0

    .line 468
    .line 469
    move-object/from16 v0, v19

    .line 470
    .line 471
    move-object/from16 v1, v20

    .line 472
    .line 473
    move-object/from16 v2, v21

    .line 474
    .line 475
    move/from16 v3, v22

    .line 476
    .line 477
    move-object/from16 v4, v23

    .line 478
    .line 479
    move-object/from16 v5, v24

    .line 480
    .line 481
    move-object/from16 v6, v25

    .line 482
    .line 483
    move-object/from16 v8, p7

    .line 484
    move-object v9, v15

    .line 485
    .line 486
    .line 487
    invoke-static/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;Landroidx/compose/runtime/Composer;II)V

    .line 488
    .line 489
    move-object/from16 v1, v19

    .line 490
    .line 491
    move-object/from16 v2, v20

    .line 492
    .line 493
    move-object/from16 v3, v21

    .line 494
    .line 495
    move/from16 v4, v22

    .line 496
    .line 497
    move-object/from16 v5, v23

    .line 498
    .line 499
    move-object/from16 v6, v24

    .line 500
    .line 501
    move-object/from16 v7, v25

    .line 502
    .line 503
    .line 504
    :goto_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 505
    move-result-object v11

    .line 506
    .line 507
    if-nez v11, :cond_26

    .line 508
    goto :goto_19

    .line 509
    .line 510
    :cond_26
    new-instance v15, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$2;

    .line 511
    move-object v0, v15

    .line 512
    .line 513
    move-object/from16 v8, p7

    .line 514
    .line 515
    move/from16 v9, p9

    .line 516
    .line 517
    move/from16 v10, p10

    .line 518
    .line 519
    .line 520
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;Le8/l;II)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v11, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 524
    :goto_19
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Le8/l<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v15, p8

    .line 3
    .line 4
    move/from16 v14, p10

    .line 5
    .line 6
    move/from16 v13, p11

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x66c6b0c5

    .line 15
    .line 16
    move-object/from16 v1, p9

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v12

    .line 21
    .line 22
    and-int/lit8 v0, v13, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    or-int/lit8 v1, v14, 0x6

    .line 27
    move v2, v1

    .line 28
    .line 29
    move-object/from16 v1, p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    and-int/lit8 v1, v14, 0xe

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move-object/from16 v1, p0

    .line 37
    .line 38
    .line 39
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    const/4 v2, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x2

    .line 46
    :goto_0
    or-int/2addr v2, v14

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    move-object/from16 v1, p0

    .line 50
    move v2, v14

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v3, v14, 0x70

    .line 53
    .line 54
    if-nez v3, :cond_5

    .line 55
    .line 56
    and-int/lit8 v3, v13, 0x2

    .line 57
    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    move-object/from16 v3, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_4

    .line 67
    .line 68
    const/16 v4, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_3
    move-object/from16 v3, p1

    .line 72
    .line 73
    :cond_4
    const/16 v4, 0x10

    .line 74
    :goto_2
    or-int/2addr v2, v4

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_5
    move-object/from16 v3, p1

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v4, v13, 0x4

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    or-int/lit16 v2, v2, 0x180

    .line 84
    .line 85
    :cond_6
    move-object/from16 v5, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v5, v14, 0x380

    .line 89
    .line 90
    if-nez v5, :cond_6

    .line 91
    .line 92
    move-object/from16 v5, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 97
    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    const/16 v6, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v6, 0x80

    .line 104
    :goto_4
    or-int/2addr v2, v6

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v6, v13, 0x8

    .line 107
    .line 108
    if-eqz v6, :cond_a

    .line 109
    .line 110
    or-int/lit16 v2, v2, 0xc00

    .line 111
    .line 112
    :cond_9
    move/from16 v7, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v7, v14, 0x1c00

    .line 116
    .line 117
    if-nez v7, :cond_9

    .line 118
    .line 119
    move/from16 v7, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    .line 134
    :goto_7
    const v8, 0xe000

    .line 135
    and-int/2addr v8, v14

    .line 136
    .line 137
    if-nez v8, :cond_e

    .line 138
    .line 139
    and-int/lit8 v8, v13, 0x10

    .line 140
    .line 141
    if-nez v8, :cond_c

    .line 142
    .line 143
    move-object/from16 v8, p4

    .line 144
    .line 145
    .line 146
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 147
    move-result v9

    .line 148
    .line 149
    if-eqz v9, :cond_d

    .line 150
    .line 151
    const/16 v9, 0x4000

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :cond_c
    move-object/from16 v8, p4

    .line 155
    .line 156
    :cond_d
    const/16 v9, 0x2000

    .line 157
    :goto_8
    or-int/2addr v2, v9

    .line 158
    goto :goto_9

    .line 159
    .line 160
    :cond_e
    move-object/from16 v8, p4

    .line 161
    .line 162
    :goto_9
    and-int/lit8 v9, v13, 0x20

    .line 163
    .line 164
    const/high16 v10, 0x70000

    .line 165
    .line 166
    if-eqz v9, :cond_10

    .line 167
    .line 168
    const/high16 v11, 0x30000

    .line 169
    or-int/2addr v2, v11

    .line 170
    .line 171
    :cond_f
    move-object/from16 v11, p5

    .line 172
    goto :goto_b

    .line 173
    .line 174
    :cond_10
    and-int v11, v14, v10

    .line 175
    .line 176
    if-nez v11, :cond_f

    .line 177
    .line 178
    move-object/from16 v11, p5

    .line 179
    .line 180
    .line 181
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 182
    move-result v16

    .line 183
    .line 184
    if-eqz v16, :cond_11

    .line 185
    .line 186
    const/high16 v16, 0x20000

    .line 187
    goto :goto_a

    .line 188
    .line 189
    :cond_11
    const/high16 v16, 0x10000

    .line 190
    .line 191
    :goto_a
    or-int v2, v2, v16

    .line 192
    .line 193
    :goto_b
    const/high16 v16, 0x380000

    .line 194
    .line 195
    and-int v17, v14, v16

    .line 196
    .line 197
    if-nez v17, :cond_13

    .line 198
    .line 199
    and-int/lit8 v17, v13, 0x40

    .line 200
    .line 201
    move-object/from16 v10, p6

    .line 202
    .line 203
    if-nez v17, :cond_12

    .line 204
    .line 205
    .line 206
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 207
    move-result v17

    .line 208
    .line 209
    if-eqz v17, :cond_12

    .line 210
    .line 211
    const/high16 v17, 0x100000

    .line 212
    goto :goto_c

    .line 213
    .line 214
    :cond_12
    const/high16 v17, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v2, v2, v17

    .line 217
    goto :goto_d

    .line 218
    .line 219
    :cond_13
    move-object/from16 v10, p6

    .line 220
    .line 221
    :goto_d
    and-int/lit16 v1, v13, 0x80

    .line 222
    .line 223
    if-eqz v1, :cond_14

    .line 224
    .line 225
    const/high16 v17, 0xc00000

    .line 226
    .line 227
    or-int v2, v2, v17

    .line 228
    .line 229
    move/from16 v3, p7

    .line 230
    goto :goto_f

    .line 231
    .line 232
    :cond_14
    const/high16 v17, 0x1c00000

    .line 233
    .line 234
    and-int v17, v14, v17

    .line 235
    .line 236
    move/from16 v3, p7

    .line 237
    .line 238
    if-nez v17, :cond_16

    .line 239
    .line 240
    .line 241
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 242
    move-result v17

    .line 243
    .line 244
    if-eqz v17, :cond_15

    .line 245
    .line 246
    const/high16 v17, 0x800000

    .line 247
    goto :goto_e

    .line 248
    .line 249
    :cond_15
    const/high16 v17, 0x400000

    .line 250
    .line 251
    :goto_e
    or-int v2, v2, v17

    .line 252
    .line 253
    :cond_16
    :goto_f
    and-int/lit16 v3, v13, 0x100

    .line 254
    .line 255
    if-eqz v3, :cond_17

    .line 256
    .line 257
    const/high16 v3, 0x6000000

    .line 258
    :goto_10
    or-int/2addr v2, v3

    .line 259
    goto :goto_11

    .line 260
    .line 261
    :cond_17
    const/high16 v3, 0xe000000

    .line 262
    and-int/2addr v3, v14

    .line 263
    .line 264
    if-nez v3, :cond_19

    .line 265
    .line 266
    .line 267
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 268
    move-result v3

    .line 269
    .line 270
    if-eqz v3, :cond_18

    .line 271
    .line 272
    const/high16 v3, 0x4000000

    .line 273
    goto :goto_10

    .line 274
    .line 275
    :cond_18
    const/high16 v3, 0x2000000

    .line 276
    goto :goto_10

    .line 277
    .line 278
    .line 279
    :cond_19
    :goto_11
    const v3, 0xb6db6db

    .line 280
    and-int/2addr v3, v2

    .line 281
    .line 282
    .line 283
    const v5, 0x2492492

    .line 284
    .line 285
    if-ne v3, v5, :cond_1b

    .line 286
    .line 287
    .line 288
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 289
    move-result v3

    .line 290
    .line 291
    if-nez v3, :cond_1a

    .line 292
    goto :goto_12

    .line 293
    .line 294
    .line 295
    :cond_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 296
    .line 297
    move-object/from16 v1, p0

    .line 298
    .line 299
    move-object/from16 v2, p1

    .line 300
    .line 301
    move-object/from16 v3, p2

    .line 302
    move v4, v7

    .line 303
    move-object v5, v8

    .line 304
    move-object v7, v10

    .line 305
    move-object v6, v11

    .line 306
    .line 307
    move-object/from16 v27, v12

    .line 308
    .line 309
    move/from16 v8, p7

    .line 310
    .line 311
    goto/16 :goto_1e

    .line 312
    .line 313
    .line 314
    :cond_1b
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->J()V

    .line 315
    .line 316
    and-int/lit8 v3, v14, 0x1

    .line 317
    .line 318
    .line 319
    const v5, -0x380001

    .line 320
    .line 321
    .line 322
    const v17, -0xe001

    .line 323
    .line 324
    if-eqz v3, :cond_20

    .line 325
    .line 326
    .line 327
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->h()Z

    .line 328
    move-result v3

    .line 329
    .line 330
    if-eqz v3, :cond_1c

    .line 331
    goto :goto_13

    .line 332
    .line 333
    .line 334
    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 335
    .line 336
    and-int/lit8 v0, v13, 0x2

    .line 337
    .line 338
    if-eqz v0, :cond_1d

    .line 339
    .line 340
    and-int/lit8 v2, v2, -0x71

    .line 341
    .line 342
    :cond_1d
    and-int/lit8 v0, v13, 0x10

    .line 343
    .line 344
    if-eqz v0, :cond_1e

    .line 345
    .line 346
    and-int v2, v2, v17

    .line 347
    .line 348
    :cond_1e
    and-int/lit8 v0, v13, 0x40

    .line 349
    .line 350
    if-eqz v0, :cond_1f

    .line 351
    and-int/2addr v2, v5

    .line 352
    .line 353
    :cond_1f
    move-object/from16 v17, p0

    .line 354
    .line 355
    move-object/from16 v18, p1

    .line 356
    .line 357
    move-object/from16 v19, p2

    .line 358
    .line 359
    move/from16 v24, p7

    .line 360
    .line 361
    move/from16 v20, v7

    .line 362
    .line 363
    move-object/from16 v21, v8

    .line 364
    .line 365
    move-object/from16 v23, v10

    .line 366
    .line 367
    move-object/from16 v22, v11

    .line 368
    .line 369
    goto/16 :goto_1d

    .line 370
    .line 371
    :cond_20
    :goto_13
    if-eqz v0, :cond_21

    .line 372
    .line 373
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 374
    goto :goto_14

    .line 375
    .line 376
    :cond_21
    move-object/from16 v0, p0

    .line 377
    .line 378
    :goto_14
    and-int/lit8 v3, v13, 0x2

    .line 379
    const/4 v5, 0x0

    .line 380
    .line 381
    if-eqz v3, :cond_22

    .line 382
    const/4 v3, 0x3

    .line 383
    .line 384
    .line 385
    invoke-static {v5, v5, v12, v5, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/LazyListState;

    .line 386
    move-result-object v3

    .line 387
    .line 388
    and-int/lit8 v2, v2, -0x71

    .line 389
    goto :goto_15

    .line 390
    .line 391
    :cond_22
    move-object/from16 v3, p1

    .line 392
    .line 393
    :goto_15
    if-eqz v4, :cond_23

    .line 394
    int-to-float v4, v5

    .line 395
    .line 396
    .line 397
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 398
    move-result v4

    .line 399
    .line 400
    .line 401
    invoke-static {v4}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 402
    move-result-object v4

    .line 403
    goto :goto_16

    .line 404
    .line 405
    :cond_23
    move-object/from16 v4, p2

    .line 406
    .line 407
    :goto_16
    if-eqz v6, :cond_24

    .line 408
    goto :goto_17

    .line 409
    :cond_24
    move v5, v7

    .line 410
    .line 411
    :goto_17
    and-int/lit8 v6, v13, 0x10

    .line 412
    .line 413
    if-eqz v6, :cond_26

    .line 414
    .line 415
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 416
    .line 417
    if-nez v5, :cond_25

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 421
    move-result-object v6

    .line 422
    goto :goto_18

    .line 423
    .line 424
    .line 425
    :cond_25
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/Arrangement;->c()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 426
    move-result-object v6

    .line 427
    .line 428
    :goto_18
    and-int v2, v2, v17

    .line 429
    goto :goto_19

    .line 430
    :cond_26
    move-object v6, v8

    .line 431
    .line 432
    :goto_19
    if-eqz v9, :cond_27

    .line 433
    .line 434
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 438
    move-result-object v7

    .line 439
    goto :goto_1a

    .line 440
    :cond_27
    move-object v7, v11

    .line 441
    .line 442
    :goto_1a
    and-int/lit8 v8, v13, 0x40

    .line 443
    .line 444
    if-eqz v8, :cond_28

    .line 445
    .line 446
    sget-object v8, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 447
    const/4 v9, 0x6

    .line 448
    .line 449
    .line 450
    invoke-virtual {v8, v12, v9}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 451
    move-result-object v8

    .line 452
    .line 453
    .line 454
    const v9, -0x380001

    .line 455
    and-int/2addr v2, v9

    .line 456
    goto :goto_1b

    .line 457
    :cond_28
    move-object v8, v10

    .line 458
    .line 459
    :goto_1b
    if-eqz v1, :cond_29

    .line 460
    const/4 v1, 0x1

    .line 461
    .line 462
    move-object/from16 v17, v0

    .line 463
    .line 464
    move/from16 v24, v1

    .line 465
    .line 466
    :goto_1c
    move-object/from16 v18, v3

    .line 467
    .line 468
    move-object/from16 v19, v4

    .line 469
    .line 470
    move/from16 v20, v5

    .line 471
    .line 472
    move-object/from16 v21, v6

    .line 473
    .line 474
    move-object/from16 v22, v7

    .line 475
    .line 476
    move-object/from16 v23, v8

    .line 477
    goto :goto_1d

    .line 478
    .line 479
    :cond_29
    move/from16 v24, p7

    .line 480
    .line 481
    move-object/from16 v17, v0

    .line 482
    goto :goto_1c

    .line 483
    .line 484
    .line 485
    :goto_1d
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->A()V

    .line 486
    const/4 v4, 0x0

    .line 487
    const/4 v7, 0x0

    .line 488
    const/4 v8, 0x0

    .line 489
    .line 490
    and-int/lit8 v0, v2, 0xe

    .line 491
    .line 492
    or-int/lit16 v0, v0, 0x6000

    .line 493
    .line 494
    and-int/lit8 v1, v2, 0x70

    .line 495
    or-int/2addr v0, v1

    .line 496
    .line 497
    and-int/lit16 v1, v2, 0x380

    .line 498
    or-int/2addr v0, v1

    .line 499
    .line 500
    and-int/lit16 v1, v2, 0x1c00

    .line 501
    or-int/2addr v0, v1

    .line 502
    .line 503
    shr-int/lit8 v1, v2, 0x3

    .line 504
    .line 505
    const/high16 v3, 0x70000

    .line 506
    and-int/2addr v3, v1

    .line 507
    or-int/2addr v0, v3

    .line 508
    .line 509
    and-int v1, v1, v16

    .line 510
    or-int/2addr v0, v1

    .line 511
    .line 512
    shl-int/lit8 v1, v2, 0xc

    .line 513
    .line 514
    const/high16 v3, 0x70000000

    .line 515
    and-int/2addr v1, v3

    .line 516
    .line 517
    or-int v16, v0, v1

    .line 518
    .line 519
    shr-int/lit8 v0, v2, 0xc

    .line 520
    .line 521
    and-int/lit8 v0, v0, 0xe

    .line 522
    .line 523
    shr-int/lit8 v1, v2, 0x15

    .line 524
    .line 525
    and-int/lit8 v1, v1, 0x70

    .line 526
    .line 527
    or-int v25, v0, v1

    .line 528
    .line 529
    const/16 v26, 0x180

    .line 530
    .line 531
    move-object/from16 v0, v17

    .line 532
    .line 533
    move-object/from16 v1, v18

    .line 534
    .line 535
    move-object/from16 v2, v19

    .line 536
    .line 537
    move/from16 v3, v20

    .line 538
    .line 539
    move-object/from16 v5, v23

    .line 540
    .line 541
    move/from16 v6, v24

    .line 542
    .line 543
    move-object/from16 v9, v22

    .line 544
    .line 545
    move-object/from16 v10, v21

    .line 546
    .line 547
    move-object/from16 v11, p8

    .line 548
    .line 549
    move-object/from16 v27, v12

    .line 550
    .line 551
    move/from16 v13, v16

    .line 552
    .line 553
    move/from16 v14, v25

    .line 554
    .line 555
    move/from16 v15, v26

    .line 556
    .line 557
    .line 558
    invoke-static/range {v0 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Le8/l;Landroidx/compose/runtime/Composer;III)V

    .line 559
    .line 560
    move-object/from16 v1, v17

    .line 561
    .line 562
    move-object/from16 v2, v18

    .line 563
    .line 564
    move-object/from16 v3, v19

    .line 565
    .line 566
    move/from16 v4, v20

    .line 567
    .line 568
    move-object/from16 v5, v21

    .line 569
    .line 570
    move-object/from16 v6, v22

    .line 571
    .line 572
    move-object/from16 v7, v23

    .line 573
    .line 574
    move/from16 v8, v24

    .line 575
    .line 576
    .line 577
    :goto_1e
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 578
    move-result-object v12

    .line 579
    .line 580
    if-nez v12, :cond_2a

    .line 581
    goto :goto_1f

    .line 582
    .line 583
    :cond_2a
    new-instance v13, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;

    .line 584
    move-object v0, v13

    .line 585
    .line 586
    move-object/from16 v9, p8

    .line 587
    .line 588
    move/from16 v10, p10

    .line 589
    .line 590
    move/from16 v11, p11

    .line 591
    .line 592
    .line 593
    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyRow$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLe8/l;II)V

    .line 594
    .line 595
    .line 596
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 597
    :goto_1f
    return-void
.end method
