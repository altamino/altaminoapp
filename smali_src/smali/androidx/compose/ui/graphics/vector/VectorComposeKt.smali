.class public final Landroidx/compose/ui/graphics/vector/VectorComposeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorCompose.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorCompose.kt\nandroidx/compose/ui/graphics/vector/VectorComposeKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,126:1\n327#2,11:127\n251#2,10:138\n*S KotlinDebug\n*F\n+ 1 VectorCompose.kt\nandroidx/compose/ui/graphics/vector/VectorComposeKt\n*L\n41#1:127,11\n77#1:138,10\n*E\n"
.end annotation


# direct methods
.method public static final a(Ljava/lang/String;FFFFFFFLjava/util/List;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/graphics/vector/VectorComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFFFFFF",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;",
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
    move-object/from16 v10, p9

    .line 3
    .line 4
    move/from16 v11, p11

    .line 5
    .line 6
    move/from16 v12, p12

    .line 7
    .line 8
    const-string v0, "content"

    .line 9
    .line 10
    .line 11
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0xcb87eca

    .line 15
    .line 16
    move-object/from16 v1, p10

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    and-int/lit8 v1, v12, 0x1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    or-int/lit8 v2, v11, 0x6

    .line 27
    move v3, v2

    .line 28
    .line 29
    move-object/from16 v2, p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    move-object/from16 v2, p0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    const/4 v3, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x2

    .line 46
    :goto_0
    or-int/2addr v3, v11

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_2
    move-object/from16 v2, p0

    .line 50
    move v3, v11

    .line 51
    .line 52
    :goto_1
    and-int/lit8 v4, v12, 0x2

    .line 53
    .line 54
    if-eqz v4, :cond_4

    .line 55
    .line 56
    or-int/lit8 v3, v3, 0x30

    .line 57
    .line 58
    :cond_3
    move/from16 v5, p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    and-int/lit8 v5, v11, 0x70

    .line 62
    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    move/from16 v5, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 69
    move-result v6

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    const/16 v6, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    const/16 v6, 0x10

    .line 77
    :goto_2
    or-int/2addr v3, v6

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v6, v12, 0x4

    .line 80
    .line 81
    if-eqz v6, :cond_7

    .line 82
    .line 83
    or-int/lit16 v3, v3, 0x180

    .line 84
    .line 85
    :cond_6
    move/from16 v8, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v8, v11, 0x380

    .line 89
    .line 90
    if-nez v8, :cond_6

    .line 91
    .line 92
    move/from16 v8, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 96
    move-result v9

    .line 97
    .line 98
    if-eqz v9, :cond_8

    .line 99
    .line 100
    const/16 v9, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v9, 0x80

    .line 104
    :goto_4
    or-int/2addr v3, v9

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v9, v12, 0x8

    .line 107
    .line 108
    if-eqz v9, :cond_a

    .line 109
    .line 110
    or-int/lit16 v3, v3, 0xc00

    .line 111
    .line 112
    :cond_9
    move/from16 v13, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v13, v11, 0x1c00

    .line 116
    .line 117
    if-nez v13, :cond_9

    .line 118
    .line 119
    move/from16 v13, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 123
    move-result v14

    .line 124
    .line 125
    if-eqz v14, :cond_b

    .line 126
    .line 127
    const/16 v14, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_b
    const/16 v14, 0x400

    .line 131
    :goto_6
    or-int/2addr v3, v14

    .line 132
    .line 133
    :goto_7
    and-int/lit8 v14, v12, 0x10

    .line 134
    .line 135
    if-eqz v14, :cond_d

    .line 136
    .line 137
    or-int/lit16 v3, v3, 0x6000

    .line 138
    .line 139
    :cond_c
    move/from16 v15, p4

    .line 140
    goto :goto_9

    .line 141
    .line 142
    .line 143
    :cond_d
    const v15, 0xe000

    .line 144
    and-int/2addr v15, v11

    .line 145
    .line 146
    if-nez v15, :cond_c

    .line 147
    .line 148
    move/from16 v15, p4

    .line 149
    .line 150
    .line 151
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 152
    move-result v16

    .line 153
    .line 154
    if-eqz v16, :cond_e

    .line 155
    .line 156
    const/16 v16, 0x4000

    .line 157
    goto :goto_8

    .line 158
    .line 159
    :cond_e
    const/16 v16, 0x2000

    .line 160
    .line 161
    :goto_8
    or-int v3, v3, v16

    .line 162
    .line 163
    :goto_9
    and-int/lit8 v16, v12, 0x20

    .line 164
    .line 165
    if-eqz v16, :cond_f

    .line 166
    .line 167
    const/high16 v17, 0x30000

    .line 168
    .line 169
    or-int v3, v3, v17

    .line 170
    .line 171
    move/from16 v7, p5

    .line 172
    goto :goto_b

    .line 173
    .line 174
    :cond_f
    const/high16 v17, 0x70000

    .line 175
    .line 176
    and-int v17, v11, v17

    .line 177
    .line 178
    move/from16 v7, p5

    .line 179
    .line 180
    if-nez v17, :cond_11

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 184
    move-result v17

    .line 185
    .line 186
    if-eqz v17, :cond_10

    .line 187
    .line 188
    const/high16 v17, 0x20000

    .line 189
    goto :goto_a

    .line 190
    .line 191
    :cond_10
    const/high16 v17, 0x10000

    .line 192
    .line 193
    :goto_a
    or-int v3, v3, v17

    .line 194
    .line 195
    :cond_11
    :goto_b
    and-int/lit8 v17, v12, 0x40

    .line 196
    .line 197
    if-eqz v17, :cond_12

    .line 198
    .line 199
    const/high16 v18, 0x180000

    .line 200
    .line 201
    or-int v3, v3, v18

    .line 202
    .line 203
    move/from16 v2, p6

    .line 204
    goto :goto_d

    .line 205
    .line 206
    :cond_12
    const/high16 v18, 0x380000

    .line 207
    .line 208
    and-int v18, v11, v18

    .line 209
    .line 210
    move/from16 v2, p6

    .line 211
    .line 212
    if-nez v18, :cond_14

    .line 213
    .line 214
    .line 215
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 216
    move-result v18

    .line 217
    .line 218
    if-eqz v18, :cond_13

    .line 219
    .line 220
    const/high16 v18, 0x100000

    .line 221
    goto :goto_c

    .line 222
    .line 223
    :cond_13
    const/high16 v18, 0x80000

    .line 224
    .line 225
    :goto_c
    or-int v3, v3, v18

    .line 226
    .line 227
    :cond_14
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 228
    .line 229
    if-eqz v2, :cond_15

    .line 230
    .line 231
    const/high16 v18, 0xc00000

    .line 232
    .line 233
    or-int v3, v3, v18

    .line 234
    .line 235
    move/from16 v5, p7

    .line 236
    goto :goto_f

    .line 237
    .line 238
    :cond_15
    const/high16 v18, 0x1c00000

    .line 239
    .line 240
    and-int v18, v11, v18

    .line 241
    .line 242
    move/from16 v5, p7

    .line 243
    .line 244
    if-nez v18, :cond_17

    .line 245
    .line 246
    .line 247
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 248
    move-result v18

    .line 249
    .line 250
    if-eqz v18, :cond_16

    .line 251
    .line 252
    const/high16 v18, 0x800000

    .line 253
    goto :goto_e

    .line 254
    .line 255
    :cond_16
    const/high16 v18, 0x400000

    .line 256
    .line 257
    :goto_e
    or-int v3, v3, v18

    .line 258
    .line 259
    :cond_17
    :goto_f
    and-int/lit16 v5, v12, 0x100

    .line 260
    .line 261
    if-eqz v5, :cond_18

    .line 262
    .line 263
    const/high16 v18, 0x2000000

    .line 264
    .line 265
    or-int v3, v3, v18

    .line 266
    .line 267
    :cond_18
    and-int/lit16 v7, v12, 0x200

    .line 268
    .line 269
    if-eqz v7, :cond_1a

    .line 270
    .line 271
    const/high16 v7, 0x30000000

    .line 272
    :goto_10
    or-int/2addr v3, v7

    .line 273
    .line 274
    :cond_19
    const/16 v7, 0x100

    .line 275
    goto :goto_11

    .line 276
    .line 277
    :cond_1a
    const/high16 v7, 0x70000000

    .line 278
    and-int/2addr v7, v11

    .line 279
    .line 280
    if-nez v7, :cond_19

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 284
    move-result v7

    .line 285
    .line 286
    if-eqz v7, :cond_1b

    .line 287
    .line 288
    const/high16 v7, 0x20000000

    .line 289
    goto :goto_10

    .line 290
    .line 291
    :cond_1b
    const/high16 v7, 0x10000000

    .line 292
    goto :goto_10

    .line 293
    .line 294
    :goto_11
    if-ne v5, v7, :cond_1d

    .line 295
    .line 296
    .line 297
    const v7, 0x5b6db6db

    .line 298
    and-int/2addr v7, v3

    .line 299
    .line 300
    .line 301
    const v8, 0x12492492

    .line 302
    .line 303
    if-ne v7, v8, :cond_1d

    .line 304
    .line 305
    .line 306
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 307
    move-result v7

    .line 308
    .line 309
    if-nez v7, :cond_1c

    .line 310
    goto :goto_12

    .line 311
    .line 312
    .line 313
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 314
    .line 315
    move-object/from16 v1, p0

    .line 316
    .line 317
    move/from16 v2, p1

    .line 318
    .line 319
    move/from16 v3, p2

    .line 320
    .line 321
    move/from16 v6, p5

    .line 322
    .line 323
    move/from16 v7, p6

    .line 324
    .line 325
    move/from16 v8, p7

    .line 326
    .line 327
    move-object/from16 v9, p8

    .line 328
    move v4, v13

    .line 329
    move v5, v15

    .line 330
    .line 331
    goto/16 :goto_1c

    .line 332
    .line 333
    .line 334
    :cond_1d
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 335
    .line 336
    and-int/lit8 v7, v11, 0x1

    .line 337
    .line 338
    .line 339
    const v8, -0xe000001

    .line 340
    .line 341
    if-eqz v7, :cond_21

    .line 342
    .line 343
    .line 344
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 345
    move-result v7

    .line 346
    .line 347
    if-eqz v7, :cond_1e

    .line 348
    goto :goto_13

    .line 349
    .line 350
    .line 351
    :cond_1e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 352
    .line 353
    if-eqz v5, :cond_1f

    .line 354
    and-int/2addr v3, v8

    .line 355
    .line 356
    :cond_1f
    move-object/from16 v1, p0

    .line 357
    .line 358
    move/from16 v4, p1

    .line 359
    .line 360
    move/from16 v6, p2

    .line 361
    .line 362
    move/from16 v9, p5

    .line 363
    .line 364
    move/from16 v14, p6

    .line 365
    .line 366
    move/from16 v7, p7

    .line 367
    .line 368
    :cond_20
    move-object/from16 v2, p8

    .line 369
    goto :goto_1a

    .line 370
    .line 371
    :cond_21
    :goto_13
    if-eqz v1, :cond_22

    .line 372
    .line 373
    const-string v1, ""

    .line 374
    goto :goto_14

    .line 375
    .line 376
    :cond_22
    move-object/from16 v1, p0

    .line 377
    :goto_14
    const/4 v7, 0x0

    .line 378
    .line 379
    if-eqz v4, :cond_23

    .line 380
    move v4, v7

    .line 381
    goto :goto_15

    .line 382
    .line 383
    :cond_23
    move/from16 v4, p1

    .line 384
    .line 385
    :goto_15
    if-eqz v6, :cond_24

    .line 386
    move v6, v7

    .line 387
    goto :goto_16

    .line 388
    .line 389
    :cond_24
    move/from16 v6, p2

    .line 390
    .line 391
    :goto_16
    if-eqz v9, :cond_25

    .line 392
    move v13, v7

    .line 393
    .line 394
    :cond_25
    const/high16 v9, 0x3f800000    # 1.0f

    .line 395
    .line 396
    if-eqz v14, :cond_26

    .line 397
    move v15, v9

    .line 398
    .line 399
    :cond_26
    if-eqz v16, :cond_27

    .line 400
    goto :goto_17

    .line 401
    .line 402
    :cond_27
    move/from16 v9, p5

    .line 403
    .line 404
    :goto_17
    if-eqz v17, :cond_28

    .line 405
    move v14, v7

    .line 406
    goto :goto_18

    .line 407
    .line 408
    :cond_28
    move/from16 v14, p6

    .line 409
    .line 410
    :goto_18
    if-eqz v2, :cond_29

    .line 411
    goto :goto_19

    .line 412
    .line 413
    :cond_29
    move/from16 v7, p7

    .line 414
    .line 415
    :goto_19
    if-eqz v5, :cond_20

    .line 416
    .line 417
    .line 418
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->e()Ljava/util/List;

    .line 419
    move-result-object v2

    .line 420
    and-int/2addr v3, v8

    .line 421
    .line 422
    .line 423
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 424
    .line 425
    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$1;

    .line 426
    .line 427
    .line 428
    const v8, -0x20ad3f64

    .line 429
    .line 430
    .line 431
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 432
    .line 433
    .line 434
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 435
    move-result-object v8

    .line 436
    .line 437
    instance-of v8, v8, Landroidx/compose/ui/graphics/vector/VectorApplier;

    .line 438
    .line 439
    if-nez v8, :cond_2a

    .line 440
    .line 441
    .line 442
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 443
    .line 444
    .line 445
    :cond_2a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->v()V

    .line 446
    .line 447
    .line 448
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 449
    move-result v8

    .line 450
    .line 451
    if-eqz v8, :cond_2b

    .line 452
    .line 453
    .line 454
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 455
    goto :goto_1b

    .line 456
    .line 457
    .line 458
    :cond_2b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 459
    .line 460
    .line 461
    :goto_1b
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 462
    move-result-object v5

    .line 463
    .line 464
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$1;

    .line 465
    .line 466
    .line 467
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 468
    .line 469
    .line 470
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 471
    move-result-object v8

    .line 472
    .line 473
    move-object/from16 v16, v1

    .line 474
    .line 475
    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$2;

    .line 476
    .line 477
    .line 478
    invoke-static {v5, v8, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 479
    .line 480
    .line 481
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 482
    move-result-object v1

    .line 483
    .line 484
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$3;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$3;

    .line 485
    .line 486
    .line 487
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 488
    .line 489
    .line 490
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 491
    move-result-object v1

    .line 492
    .line 493
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$4;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$4;

    .line 494
    .line 495
    .line 496
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 497
    .line 498
    .line 499
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 500
    move-result-object v1

    .line 501
    .line 502
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$5;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$5;

    .line 503
    .line 504
    .line 505
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 506
    .line 507
    .line 508
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 509
    move-result-object v1

    .line 510
    .line 511
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$6;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$6;

    .line 512
    .line 513
    .line 514
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 515
    .line 516
    .line 517
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 518
    move-result-object v1

    .line 519
    .line 520
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$7;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$7;

    .line 521
    .line 522
    .line 523
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 524
    .line 525
    .line 526
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 527
    move-result-object v1

    .line 528
    .line 529
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$8;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$8;

    .line 530
    .line 531
    .line 532
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 533
    .line 534
    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$9;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$9;

    .line 535
    .line 536
    .line 537
    invoke-static {v5, v2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 538
    .line 539
    .line 540
    const v1, -0x3aa53d31

    .line 541
    .line 542
    .line 543
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 544
    .line 545
    shr-int/lit8 v1, v3, 0x1b

    .line 546
    .line 547
    and-int/lit8 v1, v1, 0xe

    .line 548
    .line 549
    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    move-result-object v1

    .line 552
    .line 553
    .line 554
    invoke-interface {v10, v0, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 558
    .line 559
    .line 560
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 561
    .line 562
    .line 563
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 564
    move v3, v6

    .line 565
    move v8, v7

    .line 566
    move v6, v9

    .line 567
    move v7, v14

    .line 568
    move v5, v15

    .line 569
    .line 570
    move-object/from16 v1, v16

    .line 571
    move-object v9, v2

    .line 572
    move v2, v4

    .line 573
    move v4, v13

    .line 574
    .line 575
    .line 576
    :goto_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 577
    move-result-object v13

    .line 578
    .line 579
    if-nez v13, :cond_2c

    .line 580
    goto :goto_1d

    .line 581
    .line 582
    :cond_2c
    new-instance v14, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$4;

    .line 583
    move-object v0, v14

    .line 584
    .line 585
    move-object/from16 v10, p9

    .line 586
    .line 587
    move/from16 v11, p11

    .line 588
    .line 589
    move/from16 v12, p12

    .line 590
    .line 591
    .line 592
    invoke-direct/range {v0 .. v12}, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$4;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Le8/p;II)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 596
    :goto_1d
    return-void
.end method

.method public static final b(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V
    .locals 21
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/graphics/vector/VectorComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;I",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFFFF",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v15, p17

    const-string v0, "pathData"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x581c9f1e

    move-object/from16 v2, p14

    .line 1
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v2, v15, 0x2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->b()I

    move-result v2

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v15, 0x4

    if-eqz v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v15, 0x8

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v15, 0x10

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v8, v15, 0x20

    if-eqz v8, :cond_4

    move-object v8, v5

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v5, v15, 0x40

    if-eqz v5, :cond_5

    move v9, v7

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit16 v5, v15, 0x80

    const/4 v10, 0x0

    if-eqz v5, :cond_6

    move v11, v10

    goto :goto_6

    :cond_6
    move/from16 v11, p7

    :goto_6
    and-int/lit16 v5, v15, 0x100

    if-eqz v5, :cond_7

    .line 3
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->c()I

    move-result v5

    move v12, v5

    goto :goto_7

    :cond_7
    move/from16 v12, p8

    :goto_7
    and-int/lit16 v5, v15, 0x200

    if-eqz v5, :cond_8

    .line 4
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->d()I

    move-result v5

    move v13, v5

    goto :goto_8

    :cond_8
    move/from16 v13, p9

    :goto_8
    and-int/lit16 v5, v15, 0x400

    if-eqz v5, :cond_9

    const/high16 v5, 0x40800000    # 4.0f

    move v14, v5

    goto :goto_9

    :cond_9
    move/from16 v14, p10

    :goto_9
    and-int/lit16 v5, v15, 0x800

    if-eqz v5, :cond_a

    move/from16 v16, v10

    goto :goto_a

    :cond_a
    move/from16 v16, p11

    :goto_a
    and-int/lit16 v5, v15, 0x1000

    if-eqz v5, :cond_b

    move/from16 v17, v7

    goto :goto_b

    :cond_b
    move/from16 v17, p12

    :goto_b
    and-int/lit16 v5, v15, 0x2000

    if-eqz v5, :cond_c

    move/from16 v18, v10

    goto :goto_c

    :cond_c
    move/from16 v18, p13

    .line 5
    :goto_c
    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$1;

    const v7, 0x7076b8d0

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/ui/graphics/vector/VectorApplier;

    if-nez v7, :cond_d

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 7
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->v()V

    .line 8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 9
    new-instance v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path-9cdaXJ4$$inlined$ComposeNode$1;

    invoke-direct {v7, v5}, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path-9cdaXJ4$$inlined$ComposeNode$1;-><init>(Le8/a;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    goto :goto_d

    .line 10
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 11
    :goto_d
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    .line 12
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$1;

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 13
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$2;

    invoke-static {v5, v1, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 14
    invoke-static {v2}, Landroidx/compose/ui/graphics/PathFillType;->c(I)Landroidx/compose/ui/graphics/PathFillType;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$3;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$3;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 15
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$4;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$4;

    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 16
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$5;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$5;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 17
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$6;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$6;

    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 18
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$7;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$7;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 19
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$8;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$8;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 20
    invoke-static {v13}, Landroidx/compose/ui/graphics/StrokeJoin;->d(I)Landroidx/compose/ui/graphics/StrokeJoin;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$9;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$9;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 21
    invoke-static {v12}, Landroidx/compose/ui/graphics/StrokeCap;->d(I)Landroidx/compose/ui/graphics/StrokeCap;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$10;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$10;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 22
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$11;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$11;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 23
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$12;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$12;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 24
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$13;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$13;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 25
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$14;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$14;

    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 27
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-nez v10, :cond_f

    goto :goto_e

    :cond_f
    new-instance v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v6

    move-object v6, v8

    move-object v8, v7

    move v7, v9

    move-object v9, v8

    move v8, v11

    move-object v11, v9

    move v9, v12

    move-object v12, v10

    move v10, v13

    move-object v13, v11

    move v11, v14

    move-object v14, v12

    move/from16 v12, v16

    move-object/from16 v19, v13

    move/from16 v13, v17

    move-object/from16 v20, v14

    move/from16 v14, v18

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;-><init>(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFIII)V

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_e
    return-void
.end method
