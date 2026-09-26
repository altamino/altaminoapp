.class public final Landroidx/compose/foundation/text/ClickableTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickableText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClickableText.kt\nandroidx/compose/foundation/text/ClickableTextKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,95:1\n25#2:96\n50#2:103\n49#2:104\n50#2:111\n49#2:112\n1057#3,6:97\n1057#3,6:105\n1057#3,6:113\n*S KotlinDebug\n*F\n+ 1 ClickableText.kt\nandroidx/compose/foundation/text/ClickableTextKt\n*L\n74#1:96\n75#1:103\n75#1:104\n90#1:111\n90#1:112\n74#1:97,6\n75#1:105,6\n90#1:113,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILe8/l;Le8/l;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "ZII",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
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
    move-object/from16 v11, p0

    .line 3
    .line 4
    move-object/from16 v12, p7

    .line 5
    .line 6
    move/from16 v13, p9

    .line 7
    .line 8
    move/from16 v14, p10

    .line 9
    .line 10
    const-string v0, "text"

    .line 11
    .line 12
    .line 13
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "onClick"

    .line 16
    .line 17
    .line 18
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, -0xeb2f629

    .line 22
    .line 23
    move-object/from16 v1, p8

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v15

    .line 28
    .line 29
    and-int/lit8 v0, v14, 0x1

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
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v14, 0x2

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    or-int/lit8 v0, v0, 0x30

    .line 57
    .line 58
    :cond_3
    move-object/from16 v3, p1

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_4
    and-int/lit8 v3, v13, 0x70

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    move-object/from16 v3, p1

    .line 66
    .line 67
    .line 68
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 69
    move-result v4

    .line 70
    .line 71
    if-eqz v4, :cond_5

    .line 72
    .line 73
    const/16 v4, 0x20

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_5
    const/16 v4, 0x10

    .line 77
    :goto_2
    or-int/2addr v0, v4

    .line 78
    .line 79
    :goto_3
    and-int/lit8 v4, v14, 0x4

    .line 80
    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x180

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
    or-int/2addr v0, v6

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v6, v14, 0x8

    .line 107
    .line 108
    if-eqz v6, :cond_a

    .line 109
    .line 110
    or-int/lit16 v0, v0, 0xc00

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
    or-int/2addr v0, v8

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
    or-int/lit16 v0, v0, 0x6000

    .line 141
    .line 142
    :cond_c
    move/from16 v10, p4

    .line 143
    goto :goto_9

    .line 144
    .line 145
    :cond_d
    and-int v10, v13, v9

    .line 146
    .line 147
    if-nez v10, :cond_c

    .line 148
    .line 149
    move/from16 v10, p4

    .line 150
    .line 151
    .line 152
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 153
    move-result v16

    .line 154
    .line 155
    if-eqz v16, :cond_e

    .line 156
    .line 157
    const/16 v16, 0x4000

    .line 158
    goto :goto_8

    .line 159
    .line 160
    :cond_e
    const/16 v16, 0x2000

    .line 161
    .line 162
    :goto_8
    or-int v0, v0, v16

    .line 163
    .line 164
    :goto_9
    and-int/lit8 v16, v14, 0x20

    .line 165
    .line 166
    const/high16 v17, 0x70000

    .line 167
    .line 168
    if-eqz v16, :cond_f

    .line 169
    .line 170
    const/high16 v18, 0x30000

    .line 171
    .line 172
    or-int v0, v0, v18

    .line 173
    .line 174
    move/from16 v9, p5

    .line 175
    goto :goto_b

    .line 176
    .line 177
    :cond_f
    and-int v18, v13, v17

    .line 178
    .line 179
    move/from16 v9, p5

    .line 180
    .line 181
    if-nez v18, :cond_11

    .line 182
    .line 183
    .line 184
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 185
    move-result v18

    .line 186
    .line 187
    if-eqz v18, :cond_10

    .line 188
    .line 189
    const/high16 v18, 0x20000

    .line 190
    goto :goto_a

    .line 191
    .line 192
    :cond_10
    const/high16 v18, 0x10000

    .line 193
    .line 194
    :goto_a
    or-int v0, v0, v18

    .line 195
    .line 196
    :cond_11
    :goto_b
    and-int/lit8 v18, v14, 0x40

    .line 197
    .line 198
    const/high16 v19, 0x380000

    .line 199
    .line 200
    if-eqz v18, :cond_12

    .line 201
    .line 202
    const/high16 v20, 0x180000

    .line 203
    .line 204
    or-int v0, v0, v20

    .line 205
    .line 206
    move-object/from16 v1, p6

    .line 207
    goto :goto_d

    .line 208
    .line 209
    :cond_12
    and-int v20, v13, v19

    .line 210
    .line 211
    move-object/from16 v1, p6

    .line 212
    .line 213
    if-nez v20, :cond_14

    .line 214
    .line 215
    .line 216
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 217
    move-result v21

    .line 218
    .line 219
    if-eqz v21, :cond_13

    .line 220
    .line 221
    const/high16 v21, 0x100000

    .line 222
    goto :goto_c

    .line 223
    .line 224
    :cond_13
    const/high16 v21, 0x80000

    .line 225
    .line 226
    :goto_c
    or-int v0, v0, v21

    .line 227
    .line 228
    :cond_14
    :goto_d
    and-int/lit16 v1, v14, 0x80

    .line 229
    .line 230
    if-eqz v1, :cond_15

    .line 231
    .line 232
    const/high16 v1, 0xc00000

    .line 233
    :goto_e
    or-int/2addr v0, v1

    .line 234
    goto :goto_f

    .line 235
    .line 236
    :cond_15
    const/high16 v1, 0x1c00000

    .line 237
    and-int/2addr v1, v13

    .line 238
    .line 239
    if-nez v1, :cond_17

    .line 240
    .line 241
    .line 242
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 243
    move-result v1

    .line 244
    .line 245
    if-eqz v1, :cond_16

    .line 246
    .line 247
    const/high16 v1, 0x800000

    .line 248
    goto :goto_e

    .line 249
    .line 250
    :cond_16
    const/high16 v1, 0x400000

    .line 251
    goto :goto_e

    .line 252
    .line 253
    .line 254
    :cond_17
    :goto_f
    const v1, 0x16db6db

    .line 255
    and-int/2addr v1, v0

    .line 256
    .line 257
    .line 258
    const v3, 0x492492

    .line 259
    .line 260
    if-ne v1, v3, :cond_19

    .line 261
    .line 262
    .line 263
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->b()Z

    .line 264
    move-result v1

    .line 265
    .line 266
    if-nez v1, :cond_18

    .line 267
    goto :goto_10

    .line 268
    .line 269
    .line 270
    :cond_18
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 271
    .line 272
    move-object/from16 v2, p1

    .line 273
    move-object v3, v5

    .line 274
    move v4, v7

    .line 275
    move v6, v9

    .line 276
    move v5, v10

    .line 277
    .line 278
    move-object/from16 v7, p6

    .line 279
    .line 280
    goto/16 :goto_17

    .line 281
    .line 282
    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    .line 283
    .line 284
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 285
    move-object v3, v1

    .line 286
    goto :goto_11

    .line 287
    .line 288
    :cond_1a
    move-object/from16 v3, p1

    .line 289
    .line 290
    :goto_11
    if-eqz v4, :cond_1b

    .line 291
    .line 292
    sget-object v1, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle$Companion;->a()Landroidx/compose/ui/text/TextStyle;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    move-object/from16 v21, v1

    .line 299
    goto :goto_12

    .line 300
    .line 301
    :cond_1b
    move-object/from16 v21, v5

    .line 302
    .line 303
    :goto_12
    if-eqz v6, :cond_1c

    .line 304
    const/4 v1, 0x1

    .line 305
    .line 306
    move/from16 v22, v1

    .line 307
    goto :goto_13

    .line 308
    .line 309
    :cond_1c
    move/from16 v22, v7

    .line 310
    .line 311
    :goto_13
    if-eqz v8, :cond_1d

    .line 312
    .line 313
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->a()I

    .line 317
    move-result v1

    .line 318
    .line 319
    move/from16 v23, v1

    .line 320
    goto :goto_14

    .line 321
    .line 322
    :cond_1d
    move/from16 v23, v10

    .line 323
    .line 324
    :goto_14
    if-eqz v16, :cond_1e

    .line 325
    .line 326
    .line 327
    const v1, 0x7fffffff

    .line 328
    .line 329
    move/from16 v16, v1

    .line 330
    goto :goto_15

    .line 331
    .line 332
    :cond_1e
    move/from16 v16, v9

    .line 333
    .line 334
    :goto_15
    if-eqz v18, :cond_1f

    .line 335
    .line 336
    sget-object v1, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$1;->INSTANCE:Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$1;

    .line 337
    move-object v10, v1

    .line 338
    goto :goto_16

    .line 339
    .line 340
    :cond_1f
    move-object/from16 v10, p6

    .line 341
    .line 342
    .line 343
    :goto_16
    const v1, -0x1d58f75c

    .line 344
    .line 345
    .line 346
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 350
    move-result-object v1

    .line 351
    .line 352
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 356
    move-result-object v4

    .line 357
    const/4 v5, 0x0

    .line 358
    .line 359
    if-ne v1, v4, :cond_20

    .line 360
    const/4 v4, 0x2

    .line 361
    .line 362
    .line 363
    invoke-static {v5, v5, v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 364
    move-result-object v1

    .line 365
    .line 366
    .line 367
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :cond_20
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 371
    .line 372
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 373
    .line 374
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 375
    .line 376
    .line 377
    const v6, 0x1e7b2b64

    .line 378
    .line 379
    .line 380
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 384
    move-result v7

    .line 385
    .line 386
    .line 387
    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 388
    move-result v8

    .line 389
    or-int/2addr v7, v8

    .line 390
    .line 391
    .line 392
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 393
    move-result-object v8

    .line 394
    .line 395
    if-nez v7, :cond_21

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 399
    move-result-object v7

    .line 400
    .line 401
    if-ne v8, v7, :cond_22

    .line 402
    .line 403
    :cond_21
    new-instance v8, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;

    .line 404
    .line 405
    .line 406
    invoke-direct {v8, v1, v12, v5}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$pressIndicator$1$1;-><init>(Landroidx/compose/runtime/MutableState;Le8/l;Lkotlin/coroutines/d;)V

    .line 407
    .line 408
    .line 409
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    :cond_22
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 413
    .line 414
    check-cast v8, Le8/p;

    .line 415
    .line 416
    .line 417
    invoke-static {v4, v12, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 418
    move-result-object v4

    .line 419
    .line 420
    .line 421
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 422
    move-result-object v4

    .line 423
    .line 424
    .line 425
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 429
    move-result v5

    .line 430
    .line 431
    .line 432
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 433
    move-result v6

    .line 434
    or-int/2addr v5, v6

    .line 435
    .line 436
    .line 437
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 438
    move-result-object v6

    .line 439
    .line 440
    if-nez v5, :cond_23

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 444
    move-result-object v2

    .line 445
    .line 446
    if-ne v6, v2, :cond_24

    .line 447
    .line 448
    :cond_23
    new-instance v6, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$2$1;

    .line 449
    .line 450
    .line 451
    invoke-direct {v6, v1, v10}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$2$1;-><init>(Landroidx/compose/runtime/MutableState;Le8/l;)V

    .line 452
    .line 453
    .line 454
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_24
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 458
    move-object v5, v6

    .line 459
    .line 460
    check-cast v5, Le8/l;

    .line 461
    const/4 v7, 0x0

    .line 462
    .line 463
    and-int/lit8 v1, v0, 0xe

    .line 464
    .line 465
    and-int/lit16 v2, v0, 0x380

    .line 466
    or-int/2addr v1, v2

    .line 467
    .line 468
    .line 469
    const v2, 0xe000

    .line 470
    and-int/2addr v2, v0

    .line 471
    or-int/2addr v1, v2

    .line 472
    .line 473
    shl-int/lit8 v2, v0, 0x6

    .line 474
    .line 475
    and-int v2, v2, v17

    .line 476
    or-int/2addr v1, v2

    .line 477
    .line 478
    shl-int/lit8 v0, v0, 0x3

    .line 479
    .line 480
    and-int v0, v0, v19

    .line 481
    .line 482
    or-int v9, v1, v0

    .line 483
    .line 484
    const/16 v17, 0x80

    .line 485
    .line 486
    move-object/from16 v0, p0

    .line 487
    move-object v1, v4

    .line 488
    .line 489
    move-object/from16 v2, v21

    .line 490
    .line 491
    move-object/from16 v18, v3

    .line 492
    move-object v3, v5

    .line 493
    .line 494
    move/from16 v4, v23

    .line 495
    .line 496
    move/from16 v5, v22

    .line 497
    .line 498
    move/from16 v6, v16

    .line 499
    move-object v8, v15

    .line 500
    .line 501
    move-object/from16 v19, v10

    .line 502
    .line 503
    move/from16 v10, v17

    .line 504
    .line 505
    .line 506
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt;->a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Le8/l;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    .line 507
    .line 508
    move-object/from16 v2, v18

    .line 509
    .line 510
    move-object/from16 v7, v19

    .line 511
    .line 512
    move-object/from16 v3, v21

    .line 513
    .line 514
    move/from16 v4, v22

    .line 515
    .line 516
    move/from16 v5, v23

    .line 517
    .line 518
    .line 519
    :goto_17
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 520
    move-result-object v15

    .line 521
    .line 522
    if-nez v15, :cond_25

    .line 523
    goto :goto_18

    .line 524
    .line 525
    :cond_25
    new-instance v10, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;

    .line 526
    move-object v0, v10

    .line 527
    .line 528
    move-object/from16 v1, p0

    .line 529
    .line 530
    move-object/from16 v8, p7

    .line 531
    .line 532
    move/from16 v9, p9

    .line 533
    move-object v11, v10

    .line 534
    .line 535
    move/from16 v10, p10

    .line 536
    .line 537
    .line 538
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILe8/l;Le8/l;II)V

    .line 539
    .line 540
    .line 541
    invoke-interface {v15, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 542
    :goto_18
    return-void
.end method
