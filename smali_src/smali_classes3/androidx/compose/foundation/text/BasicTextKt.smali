.class public final Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBasicText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n*L\n1#1,247:1\n1#2:248\n76#3:249\n76#3:250\n76#3:251\n76#3:259\n76#3:261\n76#3:286\n76#3:287\n76#3:288\n76#3:289\n76#3:298\n25#4:252\n286#4,9:267\n295#4,3:282\n25#4:290\n460#4,16:310\n1057#5,6:253\n1057#5,6:291\n121#6:260\n122#6,5:262\n128#6,6:276\n135#6:285\n75#6:297\n76#6,11:299\n89#6:326\n*S KotlinDebug\n*F\n+ 1 BasicText.kt\nandroidx/compose/foundation/text/BasicTextKt\n*L\n74#1:249\n75#1:250\n76#1:251\n127#1:259\n130#1:261\n170#1:286\n171#1:287\n172#1:288\n173#1:289\n230#1:298\n93#1:252\n130#1:267,9\n130#1:282,3\n192#1:290\n230#1:310,16\n93#1:253,6\n192#1:291,6\n130#1:260\n130#1:262,5\n130#1:276,6\n130#1:285\n230#1:297\n230#1:299,11\n230#1:326\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Le8/l;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 34
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
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;IZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v10, p0

    .line 3
    .line 4
    move/from16 v11, p9

    .line 5
    .line 6
    move/from16 v12, p10

    .line 7
    .line 8
    const-string v0, "text"

    .line 9
    .line 10
    .line 11
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x26a8f0e8

    .line 15
    .line 16
    move-object/from16 v1, p8

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v13

    .line 21
    .line 22
    and-int/lit8 v0, v12, 0x1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    or-int/lit8 v0, v11, 0x6

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    and-int/lit8 v0, v11, 0xe

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int/2addr v0, v11

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v0, v11

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v2, v12, 0x2

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    or-int/lit8 v0, v0, 0x30

    .line 50
    .line 51
    :cond_3
    move-object/from16 v3, p1

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_4
    and-int/lit8 v3, v11, 0x70

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    move-object/from16 v3, p1

    .line 59
    .line 60
    .line 61
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    .line 64
    if-eqz v4, :cond_5

    .line 65
    .line 66
    const/16 v4, 0x20

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_5
    const/16 v4, 0x10

    .line 70
    :goto_2
    or-int/2addr v0, v4

    .line 71
    .line 72
    :goto_3
    and-int/lit8 v4, v12, 0x4

    .line 73
    .line 74
    if-eqz v4, :cond_7

    .line 75
    .line 76
    or-int/lit16 v0, v0, 0x180

    .line 77
    .line 78
    :cond_6
    move-object/from16 v6, p2

    .line 79
    goto :goto_5

    .line 80
    .line 81
    :cond_7
    and-int/lit16 v6, v11, 0x380

    .line 82
    .line 83
    if-nez v6, :cond_6

    .line 84
    .line 85
    move-object/from16 v6, p2

    .line 86
    .line 87
    .line 88
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v7

    .line 98
    .line 99
    :goto_5
    and-int/lit8 v7, v12, 0x8

    .line 100
    .line 101
    if-eqz v7, :cond_a

    .line 102
    .line 103
    or-int/lit16 v0, v0, 0xc00

    .line 104
    .line 105
    :cond_9
    move-object/from16 v8, p3

    .line 106
    goto :goto_7

    .line 107
    .line 108
    :cond_a
    and-int/lit16 v8, v11, 0x1c00

    .line 109
    .line 110
    if-nez v8, :cond_9

    .line 111
    .line 112
    move-object/from16 v8, p3

    .line 113
    .line 114
    .line 115
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int/2addr v0, v9

    .line 125
    .line 126
    :goto_7
    and-int/lit8 v9, v12, 0x10

    .line 127
    .line 128
    if-eqz v9, :cond_d

    .line 129
    .line 130
    or-int/lit16 v0, v0, 0x6000

    .line 131
    .line 132
    :cond_c
    move/from16 v14, p4

    .line 133
    goto :goto_9

    .line 134
    .line 135
    .line 136
    :cond_d
    const v14, 0xe000

    .line 137
    and-int/2addr v14, v11

    .line 138
    .line 139
    if-nez v14, :cond_c

    .line 140
    .line 141
    move/from16 v14, p4

    .line 142
    .line 143
    .line 144
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 145
    move-result v15

    .line 146
    .line 147
    if-eqz v15, :cond_e

    .line 148
    .line 149
    const/16 v15, 0x4000

    .line 150
    goto :goto_8

    .line 151
    .line 152
    :cond_e
    const/16 v15, 0x2000

    .line 153
    :goto_8
    or-int/2addr v0, v15

    .line 154
    .line 155
    :goto_9
    and-int/lit8 v15, v12, 0x20

    .line 156
    .line 157
    if-eqz v15, :cond_f

    .line 158
    .line 159
    const/high16 v16, 0x30000

    .line 160
    .line 161
    or-int v0, v0, v16

    .line 162
    .line 163
    move/from16 v1, p5

    .line 164
    goto :goto_b

    .line 165
    .line 166
    :cond_f
    const/high16 v16, 0x70000

    .line 167
    .line 168
    and-int v16, v11, v16

    .line 169
    .line 170
    move/from16 v1, p5

    .line 171
    .line 172
    if-nez v16, :cond_11

    .line 173
    .line 174
    .line 175
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 176
    move-result v16

    .line 177
    .line 178
    if-eqz v16, :cond_10

    .line 179
    .line 180
    const/high16 v16, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_10
    const/high16 v16, 0x10000

    .line 184
    .line 185
    :goto_a
    or-int v0, v0, v16

    .line 186
    .line 187
    :cond_11
    :goto_b
    and-int/lit8 v16, v12, 0x40

    .line 188
    .line 189
    if-eqz v16, :cond_12

    .line 190
    .line 191
    const/high16 v17, 0x180000

    .line 192
    .line 193
    or-int v0, v0, v17

    .line 194
    .line 195
    move/from16 v5, p6

    .line 196
    goto :goto_d

    .line 197
    .line 198
    :cond_12
    const/high16 v17, 0x380000

    .line 199
    .line 200
    and-int v17, v11, v17

    .line 201
    .line 202
    move/from16 v5, p6

    .line 203
    .line 204
    if-nez v17, :cond_14

    .line 205
    .line 206
    .line 207
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 208
    move-result v18

    .line 209
    .line 210
    if-eqz v18, :cond_13

    .line 211
    .line 212
    const/high16 v18, 0x100000

    .line 213
    goto :goto_c

    .line 214
    .line 215
    :cond_13
    const/high16 v18, 0x80000

    .line 216
    .line 217
    :goto_c
    or-int v0, v0, v18

    .line 218
    .line 219
    :cond_14
    :goto_d
    and-int/lit16 v1, v12, 0x80

    .line 220
    .line 221
    if-eqz v1, :cond_15

    .line 222
    .line 223
    const/high16 v18, 0x400000

    .line 224
    .line 225
    or-int v0, v0, v18

    .line 226
    .line 227
    :cond_15
    const/16 v3, 0x80

    .line 228
    .line 229
    if-ne v1, v3, :cond_17

    .line 230
    .line 231
    .line 232
    const v3, 0x16db6db

    .line 233
    and-int/2addr v3, v0

    .line 234
    .line 235
    .line 236
    const v5, 0x492492

    .line 237
    .line 238
    if-ne v3, v5, :cond_17

    .line 239
    .line 240
    .line 241
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->b()Z

    .line 242
    move-result v3

    .line 243
    .line 244
    if-nez v3, :cond_16

    .line 245
    goto :goto_e

    .line 246
    .line 247
    .line 248
    :cond_16
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 249
    .line 250
    move-object/from16 v2, p1

    .line 251
    .line 252
    move/from16 v7, p6

    .line 253
    move-object v3, v6

    .line 254
    move-object v4, v8

    .line 255
    move v5, v14

    .line 256
    .line 257
    move/from16 v6, p5

    .line 258
    .line 259
    move-object/from16 v8, p7

    .line 260
    .line 261
    goto/16 :goto_19

    .line 262
    .line 263
    .line 264
    :cond_17
    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->J()V

    .line 265
    .line 266
    and-int/lit8 v3, v11, 0x1

    .line 267
    const/4 v5, 0x1

    .line 268
    .line 269
    if-eqz v3, :cond_1a

    .line 270
    .line 271
    .line 272
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->h()Z

    .line 273
    move-result v3

    .line 274
    .line 275
    if-eqz v3, :cond_18

    .line 276
    goto :goto_f

    .line 277
    .line 278
    .line 279
    :cond_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 280
    .line 281
    if-eqz v1, :cond_19

    .line 282
    .line 283
    .line 284
    const v1, -0x1c00001

    .line 285
    and-int/2addr v0, v1

    .line 286
    .line 287
    :cond_19
    move/from16 v17, p5

    .line 288
    .line 289
    move/from16 v18, p6

    .line 290
    move v7, v0

    .line 291
    move-object v15, v6

    .line 292
    move-object v9, v8

    .line 293
    .line 294
    move/from16 v16, v14

    .line 295
    .line 296
    move-object/from16 v14, p1

    .line 297
    .line 298
    move-object/from16 v8, p7

    .line 299
    .line 300
    goto/16 :goto_14

    .line 301
    .line 302
    :cond_1a
    :goto_f
    if-eqz v2, :cond_1b

    .line 303
    .line 304
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 305
    goto :goto_10

    .line 306
    .line 307
    :cond_1b
    move-object/from16 v2, p1

    .line 308
    .line 309
    :goto_10
    if-eqz v4, :cond_1c

    .line 310
    .line 311
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->a()Landroidx/compose/ui/text/TextStyle;

    .line 315
    move-result-object v3

    .line 316
    move-object v6, v3

    .line 317
    .line 318
    :cond_1c
    if-eqz v7, :cond_1d

    .line 319
    .line 320
    sget-object v3, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;

    .line 321
    move-object v8, v3

    .line 322
    .line 323
    :cond_1d
    if-eqz v9, :cond_1e

    .line 324
    .line 325
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->a()I

    .line 329
    move-result v3

    .line 330
    move v14, v3

    .line 331
    .line 332
    :cond_1e
    if-eqz v15, :cond_1f

    .line 333
    move v3, v5

    .line 334
    goto :goto_11

    .line 335
    .line 336
    :cond_1f
    move/from16 v3, p5

    .line 337
    .line 338
    :goto_11
    if-eqz v16, :cond_20

    .line 339
    .line 340
    .line 341
    const v4, 0x7fffffff

    .line 342
    goto :goto_12

    .line 343
    .line 344
    :cond_20
    move/from16 v4, p6

    .line 345
    .line 346
    :goto_12
    if-eqz v1, :cond_21

    .line 347
    .line 348
    .line 349
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 350
    move-result-object v1

    .line 351
    .line 352
    .line 353
    const v7, -0x1c00001

    .line 354
    and-int/2addr v0, v7

    .line 355
    move v7, v0

    .line 356
    .line 357
    move/from16 v17, v3

    .line 358
    .line 359
    move/from16 v18, v4

    .line 360
    move-object v15, v6

    .line 361
    move-object v9, v8

    .line 362
    .line 363
    move/from16 v16, v14

    .line 364
    move-object v8, v1

    .line 365
    :goto_13
    move-object v14, v2

    .line 366
    goto :goto_14

    .line 367
    :cond_21
    move v7, v0

    .line 368
    .line 369
    move/from16 v17, v3

    .line 370
    .line 371
    move/from16 v18, v4

    .line 372
    move-object v15, v6

    .line 373
    move-object v9, v8

    .line 374
    .line 375
    move/from16 v16, v14

    .line 376
    .line 377
    move-object/from16 v8, p7

    .line 378
    goto :goto_13

    .line 379
    .line 380
    .line 381
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->A()V

    .line 382
    .line 383
    if-lez v18, :cond_28

    .line 384
    .line 385
    .line 386
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 387
    move-result-object v0

    .line 388
    .line 389
    .line 390
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 391
    move-result-object v0

    .line 392
    move-object v6, v0

    .line 393
    .line 394
    check-cast v6, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 395
    .line 396
    .line 397
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 398
    move-result-object v0

    .line 399
    .line 400
    .line 401
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 402
    move-result-object v0

    .line 403
    .line 404
    move-object/from16 v19, v0

    .line 405
    .line 406
    check-cast v19, Landroidx/compose/ui/unit/Density;

    .line 407
    .line 408
    .line 409
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 410
    move-result-object v0

    .line 411
    .line 412
    .line 413
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 414
    move-result-object v0

    .line 415
    .line 416
    move-object/from16 v20, v0

    .line 417
    .line 418
    check-cast v20, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 419
    .line 420
    .line 421
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->b()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 422
    move-result-object v0

    .line 423
    .line 424
    .line 425
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 426
    move-result-object v0

    .line 427
    .line 428
    check-cast v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->a()J

    .line 432
    move-result-wide v3

    .line 433
    .line 434
    .line 435
    invoke-static {v10, v8}, Landroidx/compose/foundation/text/CoreTextKt;->b(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)Lw7/u;

    .line 436
    move-result-object v0

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Lw7/u;->a()Ljava/lang/Object;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    move-object/from16 v21, v1

    .line 443
    .line 444
    check-cast v21, Ljava/util/List;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Lw7/u;->b()Ljava/lang/Object;

    .line 448
    move-result-object v0

    .line 449
    move-object v2, v0

    .line 450
    .line 451
    check-cast v2, Ljava/util/List;

    .line 452
    const/4 v0, 0x2

    .line 453
    .line 454
    new-array v0, v0, [Ljava/lang/Object;

    .line 455
    .line 456
    const/16 v22, 0x0

    .line 457
    .line 458
    aput-object v10, v0, v22

    .line 459
    .line 460
    aput-object v6, v0, v5

    .line 461
    .line 462
    .line 463
    invoke-static {v6}, Landroidx/compose/foundation/text/BasicTextKt;->c(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    .line 464
    move-result-object v1

    .line 465
    .line 466
    const/16 v23, 0x0

    .line 467
    .line 468
    new-instance v5, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$2;

    .line 469
    .line 470
    .line 471
    invoke-direct {v5, v6}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 472
    .line 473
    const/16 v24, 0x48

    .line 474
    .line 475
    const/16 v25, 0x4

    .line 476
    .line 477
    move-object/from16 p1, v0

    .line 478
    .line 479
    move-object/from16 p2, v1

    .line 480
    .line 481
    move-object/from16 p3, v23

    .line 482
    .line 483
    move-object/from16 p4, v5

    .line 484
    .line 485
    move-object/from16 p5, v13

    .line 486
    .line 487
    move/from16 p6, v24

    .line 488
    .line 489
    move/from16 p7, v25

    .line 490
    .line 491
    .line 492
    invoke-static/range {p1 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 493
    move-result-object v0

    .line 494
    .line 495
    check-cast v0, Ljava/lang/Number;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 499
    move-result-wide v0

    .line 500
    .line 501
    .line 502
    const v5, -0x1d58f75c

    .line 503
    .line 504
    .line 505
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 506
    .line 507
    .line 508
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 509
    move-result-object v5

    .line 510
    .line 511
    sget-object v23, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 512
    .line 513
    move-wide/from16 p1, v0

    .line 514
    .line 515
    .line 516
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 517
    move-result-object v0

    .line 518
    .line 519
    if-ne v5, v0, :cond_22

    .line 520
    .line 521
    new-instance v5, Landroidx/compose/foundation/text/TextController;

    .line 522
    .line 523
    new-instance v1, Landroidx/compose/foundation/text/TextState;

    .line 524
    .line 525
    new-instance v0, Landroidx/compose/foundation/text/TextDelegate;

    .line 526
    .line 527
    const/16 v23, 0x0

    .line 528
    .line 529
    move-wide/from16 v26, p1

    .line 530
    .line 531
    move-object/from16 p1, v0

    .line 532
    .line 533
    move-object/from16 v28, v1

    .line 534
    .line 535
    move-object/from16 v1, p0

    .line 536
    .line 537
    move-object/from16 p2, v2

    .line 538
    move-object v2, v15

    .line 539
    .line 540
    move-wide/from16 v29, v3

    .line 541
    .line 542
    move/from16 v3, v18

    .line 543
    .line 544
    move/from16 v4, v17

    .line 545
    .line 546
    move-object/from16 v31, v5

    .line 547
    .line 548
    move/from16 v5, v16

    .line 549
    .line 550
    move-object/from16 v32, v6

    .line 551
    .line 552
    move-object/from16 v6, v19

    .line 553
    .line 554
    move/from16 v33, v7

    .line 555
    .line 556
    move-object/from16 v7, v20

    .line 557
    .line 558
    move-object/from16 v24, v8

    .line 559
    .line 560
    move-object/from16 v8, v21

    .line 561
    move-object v11, v9

    .line 562
    .line 563
    move-object/from16 v9, v23

    .line 564
    .line 565
    .line 566
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/k;)V

    .line 567
    .line 568
    move-object/from16 v3, p1

    .line 569
    .line 570
    move-wide/from16 v0, v26

    .line 571
    .line 572
    move-object/from16 v2, v28

    .line 573
    .line 574
    .line 575
    invoke-direct {v2, v3, v0, v1}, Landroidx/compose/foundation/text/TextState;-><init>(Landroidx/compose/foundation/text/TextDelegate;J)V

    .line 576
    .line 577
    move-object/from16 v0, v31

    .line 578
    .line 579
    .line 580
    invoke-direct {v0, v2}, Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 584
    move-object v5, v0

    .line 585
    goto :goto_15

    .line 586
    .line 587
    :cond_22
    move-object/from16 p2, v2

    .line 588
    .line 589
    move-wide/from16 v29, v3

    .line 590
    .line 591
    move-object/from16 v32, v6

    .line 592
    .line 593
    move/from16 v33, v7

    .line 594
    .line 595
    move-object/from16 v24, v8

    .line 596
    move-object v11, v9

    .line 597
    .line 598
    .line 599
    :goto_15
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->Q()V

    .line 600
    move-object v9, v5

    .line 601
    .line 602
    check-cast v9, Landroidx/compose/foundation/text/TextController;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 606
    move-result-object v8

    .line 607
    .line 608
    .line 609
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()Z

    .line 610
    move-result v0

    .line 611
    .line 612
    if-nez v0, :cond_23

    .line 613
    .line 614
    .line 615
    invoke-virtual {v8}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 616
    move-result-object v0

    .line 617
    .line 618
    move-object/from16 v1, p0

    .line 619
    move-object v2, v15

    .line 620
    .line 621
    move-object/from16 v3, v19

    .line 622
    .line 623
    move-object/from16 v4, v20

    .line 624
    .line 625
    move/from16 v5, v17

    .line 626
    .line 627
    move/from16 v6, v16

    .line 628
    .line 629
    move/from16 v7, v18

    .line 630
    move-object v12, v8

    .line 631
    .line 632
    move-object/from16 v8, v21

    .line 633
    .line 634
    .line 635
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/text/CoreTextKt;->c(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;

    .line 636
    move-result-object v0

    .line 637
    .line 638
    .line 639
    invoke-virtual {v9, v0}, Landroidx/compose/foundation/text/TextController;->n(Landroidx/compose/foundation/text/TextDelegate;)V

    .line 640
    goto :goto_16

    .line 641
    :cond_23
    move-object v12, v8

    .line 642
    .line 643
    .line 644
    :goto_16
    invoke-virtual {v12, v11}, Landroidx/compose/foundation/text/TextState;->m(Le8/l;)V

    .line 645
    .line 646
    move-wide/from16 v0, v29

    .line 647
    .line 648
    .line 649
    invoke-virtual {v12, v0, v1}, Landroidx/compose/foundation/text/TextState;->p(J)V

    .line 650
    .line 651
    move-object/from16 v0, v32

    .line 652
    .line 653
    .line 654
    invoke-virtual {v9, v0}, Landroidx/compose/foundation/text/TextController;->o(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 655
    .line 656
    .line 657
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 658
    move-result v0

    .line 659
    .line 660
    if-eqz v0, :cond_24

    .line 661
    .line 662
    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;->a()Le8/p;

    .line 666
    move-result-object v0

    .line 667
    goto :goto_17

    .line 668
    .line 669
    :cond_24
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;

    .line 670
    .line 671
    move-object/from16 v2, p2

    .line 672
    .line 673
    move/from16 v1, v33

    .line 674
    .line 675
    .line 676
    invoke-direct {v0, v10, v2, v1}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;-><init>(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;I)V

    .line 677
    .line 678
    .line 679
    const v1, 0x70c9f4f3    # 5.000209E29f

    .line 680
    const/4 v2, 0x1

    .line 681
    .line 682
    .line 683
    invoke-static {v13, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 684
    move-result-object v0

    .line 685
    .line 686
    .line 687
    :goto_17
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextController;->j()Landroidx/compose/ui/Modifier;

    .line 688
    move-result-object v1

    .line 689
    .line 690
    .line 691
    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 692
    move-result-object v1

    .line 693
    .line 694
    .line 695
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextController;->i()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 696
    move-result-object v2

    .line 697
    .line 698
    .line 699
    const v3, -0x4ee9b9da

    .line 700
    .line 701
    .line 702
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 703
    .line 704
    .line 705
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 706
    move-result-object v3

    .line 707
    .line 708
    .line 709
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 710
    move-result-object v3

    .line 711
    .line 712
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 713
    .line 714
    .line 715
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 716
    move-result-object v4

    .line 717
    .line 718
    .line 719
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 720
    move-result-object v4

    .line 721
    .line 722
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 723
    .line 724
    .line 725
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 726
    move-result-object v5

    .line 727
    .line 728
    .line 729
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 730
    move-result-object v5

    .line 731
    .line 732
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 733
    .line 734
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 738
    move-result-object v7

    .line 739
    .line 740
    .line 741
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 742
    move-result-object v1

    .line 743
    .line 744
    .line 745
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 746
    move-result-object v8

    .line 747
    .line 748
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 749
    .line 750
    if-nez v8, :cond_25

    .line 751
    .line 752
    .line 753
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 754
    .line 755
    .line 756
    :cond_25
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->e()V

    .line 757
    .line 758
    .line 759
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()Z

    .line 760
    move-result v8

    .line 761
    .line 762
    if-eqz v8, :cond_26

    .line 763
    .line 764
    .line 765
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 766
    goto :goto_18

    .line 767
    .line 768
    .line 769
    :cond_26
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->c()V

    .line 770
    .line 771
    .line 772
    :goto_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->L()V

    .line 773
    .line 774
    .line 775
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 776
    move-result-object v7

    .line 777
    .line 778
    .line 779
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 780
    move-result-object v8

    .line 781
    .line 782
    .line 783
    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 787
    move-result-object v2

    .line 788
    .line 789
    .line 790
    invoke-static {v7, v3, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 794
    move-result-object v2

    .line 795
    .line 796
    .line 797
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 801
    move-result-object v2

    .line 802
    .line 803
    .line 804
    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 805
    .line 806
    .line 807
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    .line 808
    .line 809
    .line 810
    invoke-static {v13}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 811
    move-result-object v2

    .line 812
    .line 813
    .line 814
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 815
    move-result-object v2

    .line 816
    .line 817
    .line 818
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 819
    move-result-object v3

    .line 820
    .line 821
    .line 822
    invoke-interface {v1, v2, v13, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    const v1, 0x7ab4aae9

    .line 826
    .line 827
    .line 828
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 829
    .line 830
    .line 831
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 832
    move-result-object v1

    .line 833
    .line 834
    .line 835
    invoke-interface {v0, v13, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->Q()V

    .line 839
    .line 840
    .line 841
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->d()V

    .line 842
    .line 843
    .line 844
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->Q()V

    .line 845
    move-object v4, v11

    .line 846
    move-object v2, v14

    .line 847
    move-object v3, v15

    .line 848
    .line 849
    move/from16 v5, v16

    .line 850
    .line 851
    move/from16 v6, v17

    .line 852
    .line 853
    move/from16 v7, v18

    .line 854
    .line 855
    move-object/from16 v8, v24

    .line 856
    .line 857
    .line 858
    :goto_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 859
    move-result-object v11

    .line 860
    .line 861
    if-nez v11, :cond_27

    .line 862
    goto :goto_1a

    .line 863
    .line 864
    :cond_27
    new-instance v12, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;

    .line 865
    move-object v0, v12

    .line 866
    .line 867
    move-object/from16 v1, p0

    .line 868
    .line 869
    move/from16 v9, p9

    .line 870
    .line 871
    move/from16 v10, p10

    .line 872
    .line 873
    .line 874
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Le8/l;IZILjava/util/Map;II)V

    .line 875
    .line 876
    .line 877
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 878
    :goto_1a
    return-void

    .line 879
    .line 880
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 881
    .line 882
    const-string v1, "maxLines should be greater than 0"

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 886
    move-result-object v1

    .line 887
    .line 888
    .line 889
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 890
    throw v0
.end method

.method public static final b(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Le8/l;IZILandroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p0    # Ljava/lang/String;
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
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
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
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lw7/l0;",
            ">;IZI",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p0

    .line 3
    .line 4
    move/from16 v9, p8

    .line 5
    .line 6
    const-string v0, "text"

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x3cf10926

    .line 13
    .line 14
    move-object/from16 v1, p7

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v10

    .line 19
    .line 20
    and-int/lit8 v0, p9, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v0, v9, 0x6

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    const/4 v0, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x2

    .line 39
    :goto_0
    or-int/2addr v0, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v0, v9

    .line 42
    .line 43
    :goto_1
    and-int/lit8 v2, p9, 0x2

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    or-int/lit8 v0, v0, 0x30

    .line 48
    .line 49
    :cond_3
    move-object/from16 v3, p1

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_4
    and-int/lit8 v3, v9, 0x70

    .line 53
    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    move-object/from16 v3, p1

    .line 57
    .line 58
    .line 59
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 61
    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    const/16 v4, 0x20

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_5
    const/16 v4, 0x10

    .line 68
    :goto_2
    or-int/2addr v0, v4

    .line 69
    .line 70
    :goto_3
    and-int/lit8 v4, p9, 0x4

    .line 71
    .line 72
    if-eqz v4, :cond_7

    .line 73
    .line 74
    or-int/lit16 v0, v0, 0x180

    .line 75
    .line 76
    :cond_6
    move-object/from16 v5, p2

    .line 77
    goto :goto_5

    .line 78
    .line 79
    :cond_7
    and-int/lit16 v5, v9, 0x380

    .line 80
    .line 81
    if-nez v5, :cond_6

    .line 82
    .line 83
    move-object/from16 v5, p2

    .line 84
    .line 85
    .line 86
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 87
    move-result v6

    .line 88
    .line 89
    if-eqz v6, :cond_8

    .line 90
    .line 91
    const/16 v6, 0x100

    .line 92
    goto :goto_4

    .line 93
    .line 94
    :cond_8
    const/16 v6, 0x80

    .line 95
    :goto_4
    or-int/2addr v0, v6

    .line 96
    .line 97
    :goto_5
    and-int/lit8 v6, p9, 0x8

    .line 98
    .line 99
    if-eqz v6, :cond_a

    .line 100
    .line 101
    or-int/lit16 v0, v0, 0xc00

    .line 102
    .line 103
    :cond_9
    move-object/from16 v7, p3

    .line 104
    goto :goto_7

    .line 105
    .line 106
    :cond_a
    and-int/lit16 v7, v9, 0x1c00

    .line 107
    .line 108
    if-nez v7, :cond_9

    .line 109
    .line 110
    move-object/from16 v7, p3

    .line 111
    .line 112
    .line 113
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 114
    move-result v11

    .line 115
    .line 116
    if-eqz v11, :cond_b

    .line 117
    .line 118
    const/16 v11, 0x800

    .line 119
    goto :goto_6

    .line 120
    .line 121
    :cond_b
    const/16 v11, 0x400

    .line 122
    :goto_6
    or-int/2addr v0, v11

    .line 123
    .line 124
    :goto_7
    and-int/lit8 v11, p9, 0x10

    .line 125
    .line 126
    if-eqz v11, :cond_d

    .line 127
    .line 128
    or-int/lit16 v0, v0, 0x6000

    .line 129
    .line 130
    :cond_c
    move/from16 v12, p4

    .line 131
    goto :goto_9

    .line 132
    .line 133
    .line 134
    :cond_d
    const v12, 0xe000

    .line 135
    and-int/2addr v12, v9

    .line 136
    .line 137
    if-nez v12, :cond_c

    .line 138
    .line 139
    move/from16 v12, p4

    .line 140
    .line 141
    .line 142
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 143
    move-result v13

    .line 144
    .line 145
    if-eqz v13, :cond_e

    .line 146
    .line 147
    const/16 v13, 0x4000

    .line 148
    goto :goto_8

    .line 149
    .line 150
    :cond_e
    const/16 v13, 0x2000

    .line 151
    :goto_8
    or-int/2addr v0, v13

    .line 152
    .line 153
    :goto_9
    and-int/lit8 v13, p9, 0x20

    .line 154
    .line 155
    if-eqz v13, :cond_10

    .line 156
    .line 157
    const/high16 v14, 0x30000

    .line 158
    or-int/2addr v0, v14

    .line 159
    .line 160
    :cond_f
    move/from16 v14, p5

    .line 161
    goto :goto_b

    .line 162
    .line 163
    :cond_10
    const/high16 v14, 0x70000

    .line 164
    and-int/2addr v14, v9

    .line 165
    .line 166
    if-nez v14, :cond_f

    .line 167
    .line 168
    move/from16 v14, p5

    .line 169
    .line 170
    .line 171
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 172
    move-result v15

    .line 173
    .line 174
    if-eqz v15, :cond_11

    .line 175
    .line 176
    const/high16 v15, 0x20000

    .line 177
    goto :goto_a

    .line 178
    .line 179
    :cond_11
    const/high16 v15, 0x10000

    .line 180
    :goto_a
    or-int/2addr v0, v15

    .line 181
    .line 182
    :goto_b
    and-int/lit8 v15, p9, 0x40

    .line 183
    .line 184
    if-eqz v15, :cond_12

    .line 185
    .line 186
    const/high16 v16, 0x180000

    .line 187
    .line 188
    or-int v0, v0, v16

    .line 189
    .line 190
    move/from16 v1, p6

    .line 191
    goto :goto_d

    .line 192
    .line 193
    :cond_12
    const/high16 v16, 0x380000

    .line 194
    .line 195
    and-int v16, v9, v16

    .line 196
    .line 197
    move/from16 v1, p6

    .line 198
    .line 199
    if-nez v16, :cond_14

    .line 200
    .line 201
    .line 202
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 203
    move-result v16

    .line 204
    .line 205
    if-eqz v16, :cond_13

    .line 206
    .line 207
    const/high16 v16, 0x100000

    .line 208
    goto :goto_c

    .line 209
    .line 210
    :cond_13
    const/high16 v16, 0x80000

    .line 211
    .line 212
    :goto_c
    or-int v0, v0, v16

    .line 213
    .line 214
    .line 215
    :cond_14
    :goto_d
    const v16, 0x2db6db

    .line 216
    .line 217
    and-int v0, v0, v16

    .line 218
    .line 219
    .line 220
    const v1, 0x92492

    .line 221
    .line 222
    if-ne v0, v1, :cond_16

    .line 223
    .line 224
    .line 225
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->b()Z

    .line 226
    move-result v0

    .line 227
    .line 228
    if-nez v0, :cond_15

    .line 229
    goto :goto_e

    .line 230
    .line 231
    .line 232
    :cond_15
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 233
    move-object v2, v3

    .line 234
    move-object v3, v5

    .line 235
    move-object v4, v7

    .line 236
    move v5, v12

    .line 237
    move v6, v14

    .line 238
    .line 239
    move/from16 v7, p6

    .line 240
    .line 241
    goto/16 :goto_13

    .line 242
    .line 243
    :cond_16
    :goto_e
    if-eqz v2, :cond_17

    .line 244
    .line 245
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 246
    move-object v3, v0

    .line 247
    .line 248
    :cond_17
    if-eqz v4, :cond_18

    .line 249
    .line 250
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->a()Landroidx/compose/ui/text/TextStyle;

    .line 254
    move-result-object v0

    .line 255
    .line 256
    move-object/from16 v27, v0

    .line 257
    goto :goto_f

    .line 258
    .line 259
    :cond_18
    move-object/from16 v27, v5

    .line 260
    .line 261
    :goto_f
    if-eqz v6, :cond_19

    .line 262
    .line 263
    sget-object v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;

    .line 264
    move-object v7, v0

    .line 265
    .line 266
    :cond_19
    if-eqz v11, :cond_1a

    .line 267
    .line 268
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->a()I

    .line 272
    move-result v0

    .line 273
    move v12, v0

    .line 274
    :cond_1a
    const/4 v0, 0x1

    .line 275
    .line 276
    if-eqz v13, :cond_1b

    .line 277
    move v14, v0

    .line 278
    .line 279
    :cond_1b
    if-eqz v15, :cond_1c

    .line 280
    .line 281
    .line 282
    const v1, 0x7fffffff

    .line 283
    move v11, v1

    .line 284
    goto :goto_10

    .line 285
    .line 286
    :cond_1c
    move/from16 v11, p6

    .line 287
    .line 288
    :goto_10
    if-lez v11, :cond_23

    .line 289
    .line 290
    .line 291
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 292
    move-result-object v1

    .line 293
    .line 294
    .line 295
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 296
    move-result-object v1

    .line 297
    move-object v13, v1

    .line 298
    .line 299
    check-cast v13, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 300
    .line 301
    .line 302
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 303
    move-result-object v1

    .line 304
    .line 305
    .line 306
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 307
    move-result-object v1

    .line 308
    move-object v4, v1

    .line 309
    .line 310
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 311
    .line 312
    .line 313
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 314
    move-result-object v1

    .line 315
    .line 316
    .line 317
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 318
    move-result-object v1

    .line 319
    move-object v5, v1

    .line 320
    .line 321
    check-cast v5, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 322
    const/4 v1, 0x2

    .line 323
    .line 324
    new-array v1, v1, [Ljava/lang/Object;

    .line 325
    const/4 v2, 0x0

    .line 326
    .line 327
    aput-object v8, v1, v2

    .line 328
    .line 329
    aput-object v13, v1, v0

    .line 330
    .line 331
    .line 332
    invoke-static {v13}, Landroidx/compose/foundation/text/BasicTextKt;->c(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    .line 333
    move-result-object v0

    .line 334
    const/4 v2, 0x0

    .line 335
    .line 336
    new-instance v6, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$1;

    .line 337
    .line 338
    .line 339
    invoke-direct {v6, v13}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 340
    .line 341
    const/16 v15, 0x48

    .line 342
    .line 343
    const/16 v16, 0x4

    .line 344
    .line 345
    move-object/from16 p1, v1

    .line 346
    .line 347
    move-object/from16 p2, v0

    .line 348
    .line 349
    move-object/from16 p3, v2

    .line 350
    .line 351
    move-object/from16 p4, v6

    .line 352
    .line 353
    move-object/from16 p5, v10

    .line 354
    .line 355
    move/from16 p6, v15

    .line 356
    .line 357
    move/from16 p7, v16

    .line 358
    .line 359
    .line 360
    invoke-static/range {p1 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 361
    move-result-object v0

    .line 362
    .line 363
    check-cast v0, Ljava/lang/Number;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 367
    move-result-wide v0

    .line 368
    .line 369
    .line 370
    const v2, -0x1d58f75c

    .line 371
    .line 372
    .line 373
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 377
    move-result-object v2

    .line 378
    .line 379
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 383
    move-result-object v6

    .line 384
    .line 385
    if-ne v2, v6, :cond_1d

    .line 386
    .line 387
    new-instance v2, Landroidx/compose/foundation/text/TextController;

    .line 388
    .line 389
    new-instance v6, Landroidx/compose/foundation/text/TextState;

    .line 390
    .line 391
    new-instance v17, Landroidx/compose/ui/text/AnnotatedString;

    .line 392
    const/4 v15, 0x0

    .line 393
    .line 394
    const/16 v16, 0x0

    .line 395
    .line 396
    const/16 v18, 0x6

    .line 397
    .line 398
    const/16 v19, 0x0

    .line 399
    .line 400
    move-object/from16 p1, v17

    .line 401
    .line 402
    move-object/from16 p2, p0

    .line 403
    .line 404
    move-object/from16 p3, v15

    .line 405
    .line 406
    move-object/from16 p4, v16

    .line 407
    .line 408
    move/from16 p5, v18

    .line 409
    .line 410
    move-object/from16 p6, v19

    .line 411
    .line 412
    .line 413
    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 414
    .line 415
    new-instance v15, Landroidx/compose/foundation/text/TextDelegate;

    .line 416
    .line 417
    const/16 v24, 0x0

    .line 418
    .line 419
    const/16 v25, 0x80

    .line 420
    .line 421
    const/16 v26, 0x0

    .line 422
    .line 423
    move-object/from16 v16, v15

    .line 424
    .line 425
    move-object/from16 v18, v27

    .line 426
    .line 427
    move/from16 v19, v11

    .line 428
    .line 429
    move/from16 v20, v14

    .line 430
    .line 431
    move/from16 v21, v12

    .line 432
    .line 433
    move-object/from16 v22, v4

    .line 434
    .line 435
    move-object/from16 v23, v5

    .line 436
    .line 437
    .line 438
    invoke-direct/range {v16 .. v26}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/k;)V

    .line 439
    .line 440
    .line 441
    invoke-direct {v6, v15, v0, v1}, Landroidx/compose/foundation/text/TextState;-><init>(Landroidx/compose/foundation/text/TextDelegate;J)V

    .line 442
    .line 443
    .line 444
    invoke-direct {v2, v6}, Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 451
    move-object v15, v2

    .line 452
    .line 453
    check-cast v15, Landroidx/compose/foundation/text/TextController;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 457
    move-result-object v6

    .line 458
    .line 459
    .line 460
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->r()Z

    .line 461
    move-result v0

    .line 462
    .line 463
    if-nez v0, :cond_1e

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 467
    move-result-object v0

    .line 468
    .line 469
    move-object/from16 v1, p0

    .line 470
    .line 471
    move-object/from16 v2, v27

    .line 472
    move-object v8, v3

    .line 473
    move-object v3, v4

    .line 474
    move-object v4, v5

    .line 475
    move v5, v14

    .line 476
    move-object v9, v6

    .line 477
    move v6, v12

    .line 478
    .line 479
    move/from16 p1, v12

    .line 480
    move-object v12, v7

    .line 481
    move v7, v11

    .line 482
    .line 483
    .line 484
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/CoreTextKt;->e(Landroidx/compose/foundation/text/TextDelegate;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZII)Landroidx/compose/foundation/text/TextDelegate;

    .line 485
    move-result-object v0

    .line 486
    .line 487
    .line 488
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextController;->n(Landroidx/compose/foundation/text/TextDelegate;)V

    .line 489
    goto :goto_11

    .line 490
    :cond_1e
    move-object v8, v3

    .line 491
    move-object v9, v6

    .line 492
    .line 493
    move/from16 p1, v12

    .line 494
    move-object v12, v7

    .line 495
    .line 496
    .line 497
    :goto_11
    invoke-virtual {v9, v12}, Landroidx/compose/foundation/text/TextState;->m(Le8/l;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v15, v13}, Landroidx/compose/foundation/text/TextController;->o(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 501
    .line 502
    .line 503
    const v0, 0x392cd595

    .line 504
    .line 505
    .line 506
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 507
    .line 508
    if-eqz v13, :cond_1f

    .line 509
    .line 510
    .line 511
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->b()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 512
    move-result-object v0

    .line 513
    .line 514
    .line 515
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 516
    move-result-object v0

    .line 517
    .line 518
    check-cast v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->a()J

    .line 522
    move-result-wide v0

    .line 523
    .line 524
    .line 525
    invoke-virtual {v9, v0, v1}, Landroidx/compose/foundation/text/TextState;->p(J)V

    .line 526
    .line 527
    .line 528
    :cond_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextController;->j()Landroidx/compose/ui/Modifier;

    .line 532
    move-result-object v0

    .line 533
    .line 534
    .line 535
    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 536
    move-result-object v0

    .line 537
    .line 538
    .line 539
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextController;->i()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 540
    move-result-object v1

    .line 541
    .line 542
    .line 543
    const v2, 0x207baf9a

    .line 544
    .line 545
    .line 546
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 547
    .line 548
    .line 549
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 550
    move-result-object v2

    .line 551
    .line 552
    .line 553
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 554
    move-result-object v2

    .line 555
    .line 556
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 557
    .line 558
    .line 559
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 560
    move-result-object v3

    .line 561
    .line 562
    .line 563
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 564
    move-result-object v3

    .line 565
    .line 566
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 567
    .line 568
    .line 569
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 570
    move-result-object v4

    .line 571
    .line 572
    .line 573
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 574
    move-result-object v4

    .line 575
    .line 576
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 577
    .line 578
    .line 579
    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 580
    move-result-object v0

    .line 581
    .line 582
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 586
    move-result-object v6

    .line 587
    .line 588
    .line 589
    const v7, 0x53ca7ea5

    .line 590
    .line 591
    .line 592
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 596
    move-result-object v7

    .line 597
    .line 598
    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    .line 599
    .line 600
    if-nez v7, :cond_20

    .line 601
    .line 602
    .line 603
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 604
    .line 605
    .line 606
    :cond_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->e()V

    .line 607
    .line 608
    .line 609
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->r()Z

    .line 610
    move-result v7

    .line 611
    .line 612
    if-eqz v7, :cond_21

    .line 613
    .line 614
    new-instance v7, Landroidx/compose/foundation/text/BasicTextKt$BasicText-BpD7jsM$$inlined$Layout$1;

    .line 615
    .line 616
    .line 617
    invoke-direct {v7, v6}, Landroidx/compose/foundation/text/BasicTextKt$BasicText-BpD7jsM$$inlined$Layout$1;-><init>(Le8/a;)V

    .line 618
    .line 619
    .line 620
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 621
    goto :goto_12

    .line 622
    .line 623
    .line 624
    :cond_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->c()V

    .line 625
    .line 626
    .line 627
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->L()V

    .line 628
    .line 629
    .line 630
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 631
    move-result-object v6

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 635
    move-result-object v7

    .line 636
    .line 637
    .line 638
    invoke-static {v6, v1, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 642
    move-result-object v1

    .line 643
    .line 644
    .line 645
    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 649
    move-result-object v1

    .line 650
    .line 651
    .line 652
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 656
    move-result-object v1

    .line 657
    .line 658
    .line 659
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Le8/p;

    .line 663
    move-result-object v1

    .line 664
    .line 665
    .line 666
    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 667
    .line 668
    .line 669
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->o()V

    .line 670
    .line 671
    .line 672
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->d()V

    .line 673
    .line 674
    .line 675
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 676
    .line 677
    .line 678
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 679
    .line 680
    move/from16 v5, p1

    .line 681
    move-object v2, v8

    .line 682
    move v7, v11

    .line 683
    move-object v4, v12

    .line 684
    move v6, v14

    .line 685
    .line 686
    move-object/from16 v3, v27

    .line 687
    .line 688
    .line 689
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 690
    move-result-object v10

    .line 691
    .line 692
    if-nez v10, :cond_22

    .line 693
    goto :goto_14

    .line 694
    .line 695
    :cond_22
    new-instance v11, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;

    .line 696
    move-object v0, v11

    .line 697
    .line 698
    move-object/from16 v1, p0

    .line 699
    .line 700
    move/from16 v8, p8

    .line 701
    .line 702
    move/from16 v9, p9

    .line 703
    .line 704
    .line 705
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Le8/l;IZIII)V

    .line 706
    .line 707
    .line 708
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 709
    :goto_14
    return-void

    .line 710
    .line 711
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 712
    .line 713
    const-string v1, "maxLines should be greater than 0"

    .line 714
    .line 715
    .line 716
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 717
    move-result-object v1

    .line 718
    .line 719
    .line 720
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 721
    throw v0
.end method

.method private static final c(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 6
    .line 7
    sget-object p0, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Landroidx/compose/runtime/saveable/SaverKt;->a(Le8/p;Le8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
