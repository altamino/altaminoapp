.class public final Landroidx/compose/material/MaterialThemeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialTheme.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialTheme.kt\nandroidx/compose/material/MaterialThemeKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n25#2:139\n1057#3,6:140\n1#4:146\n*S KotlinDebug\n*F\n+ 1 MaterialTheme.kt\nandroidx/compose/material/MaterialThemeKt\n*L\n65#1:139\n65#1:140,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 43
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/Typography;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/Shapes;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/Colors;",
            "Landroidx/compose/material/Typography;",
            "Landroidx/compose/material/Shapes;",
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
    move-object/from16 v4, p3

    .line 3
    .line 4
    move/from16 v5, p5

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x3521f1f7    # -7276292.5f

    .line 13
    .line 14
    move-object/from16 v1, p4

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    and-int/lit8 v1, v5, 0xe

    .line 21
    const/4 v2, 0x2

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    and-int/lit8 v1, p6, 0x1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    move-object/from16 v1, p0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 33
    move-result v6

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    const/4 v6, 0x4

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    move-object/from16 v1, p0

    .line 40
    :cond_1
    move v6, v2

    .line 41
    :goto_0
    or-int/2addr v6, v5

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    move-object/from16 v1, p0

    .line 45
    move v6, v5

    .line 46
    .line 47
    :goto_1
    and-int/lit8 v7, v5, 0x70

    .line 48
    .line 49
    if-nez v7, :cond_5

    .line 50
    .line 51
    and-int/lit8 v7, p6, 0x2

    .line 52
    .line 53
    if-nez v7, :cond_3

    .line 54
    .line 55
    move-object/from16 v7, p1

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 59
    move-result v8

    .line 60
    .line 61
    if-eqz v8, :cond_4

    .line 62
    .line 63
    const/16 v8, 0x20

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_3
    move-object/from16 v7, p1

    .line 67
    .line 68
    :cond_4
    const/16 v8, 0x10

    .line 69
    :goto_2
    or-int/2addr v6, v8

    .line 70
    goto :goto_3

    .line 71
    .line 72
    :cond_5
    move-object/from16 v7, p1

    .line 73
    .line 74
    :goto_3
    and-int/lit16 v8, v5, 0x380

    .line 75
    .line 76
    if-nez v8, :cond_8

    .line 77
    .line 78
    and-int/lit8 v8, p6, 0x4

    .line 79
    .line 80
    if-nez v8, :cond_6

    .line 81
    .line 82
    move-object/from16 v8, p2

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 86
    move-result v9

    .line 87
    .line 88
    if-eqz v9, :cond_7

    .line 89
    .line 90
    const/16 v9, 0x100

    .line 91
    goto :goto_4

    .line 92
    .line 93
    :cond_6
    move-object/from16 v8, p2

    .line 94
    .line 95
    :cond_7
    const/16 v9, 0x80

    .line 96
    :goto_4
    or-int/2addr v6, v9

    .line 97
    goto :goto_5

    .line 98
    .line 99
    :cond_8
    move-object/from16 v8, p2

    .line 100
    .line 101
    :goto_5
    and-int/lit8 v9, p6, 0x8

    .line 102
    .line 103
    if-eqz v9, :cond_9

    .line 104
    .line 105
    or-int/lit16 v6, v6, 0xc00

    .line 106
    goto :goto_7

    .line 107
    .line 108
    :cond_9
    and-int/lit16 v9, v5, 0x1c00

    .line 109
    .line 110
    if-nez v9, :cond_b

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 114
    move-result v9

    .line 115
    .line 116
    if-eqz v9, :cond_a

    .line 117
    .line 118
    const/16 v9, 0x800

    .line 119
    goto :goto_6

    .line 120
    .line 121
    :cond_a
    const/16 v9, 0x400

    .line 122
    :goto_6
    or-int/2addr v6, v9

    .line 123
    .line 124
    :cond_b
    :goto_7
    and-int/lit16 v9, v6, 0x16db

    .line 125
    .line 126
    const/16 v10, 0x492

    .line 127
    .line 128
    if-ne v9, v10, :cond_d

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 132
    move-result v9

    .line 133
    .line 134
    if-nez v9, :cond_c

    .line 135
    goto :goto_8

    .line 136
    .line 137
    .line 138
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 139
    move-object v2, v7

    .line 140
    move-object v3, v8

    .line 141
    .line 142
    goto/16 :goto_c

    .line 143
    .line 144
    .line 145
    :cond_d
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 146
    .line 147
    and-int/lit8 v9, v5, 0x1

    .line 148
    const/4 v13, 0x6

    .line 149
    .line 150
    if-eqz v9, :cond_12

    .line 151
    .line 152
    .line 153
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 154
    move-result v9

    .line 155
    .line 156
    if-eqz v9, :cond_e

    .line 157
    goto :goto_a

    .line 158
    .line 159
    .line 160
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 161
    .line 162
    and-int/lit8 v9, p6, 0x1

    .line 163
    .line 164
    if-eqz v9, :cond_f

    .line 165
    .line 166
    and-int/lit8 v6, v6, -0xf

    .line 167
    .line 168
    :cond_f
    and-int/lit8 v9, p6, 0x2

    .line 169
    .line 170
    if-eqz v9, :cond_10

    .line 171
    .line 172
    and-int/lit8 v6, v6, -0x71

    .line 173
    .line 174
    :cond_10
    and-int/lit8 v9, p6, 0x4

    .line 175
    .line 176
    if-eqz v9, :cond_11

    .line 177
    .line 178
    :goto_9
    and-int/lit16 v6, v6, -0x381

    .line 179
    :cond_11
    move v10, v6

    .line 180
    move-object v12, v7

    .line 181
    move-object v11, v8

    .line 182
    goto :goto_b

    .line 183
    .line 184
    :cond_12
    :goto_a
    and-int/lit8 v9, p6, 0x1

    .line 185
    .line 186
    if-eqz v9, :cond_13

    .line 187
    .line 188
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v0, v13}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    and-int/lit8 v6, v6, -0xf

    .line 195
    .line 196
    :cond_13
    and-int/lit8 v9, p6, 0x2

    .line 197
    .line 198
    if-eqz v9, :cond_14

    .line 199
    .line 200
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7, v0, v13}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 204
    move-result-object v7

    .line 205
    .line 206
    and-int/lit8 v6, v6, -0x71

    .line 207
    .line 208
    :cond_14
    and-int/lit8 v9, p6, 0x4

    .line 209
    .line 210
    if-eqz v9, :cond_11

    .line 211
    .line 212
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v0, v13}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 216
    move-result-object v8

    .line 217
    goto :goto_9

    .line 218
    .line 219
    .line 220
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 221
    .line 222
    .line 223
    const v6, -0x1d58f75c

    .line 224
    .line 225
    .line 226
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 227
    .line 228
    .line 229
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 230
    move-result-object v6

    .line 231
    .line 232
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 236
    move-result-object v7

    .line 237
    .line 238
    if-ne v6, v7, :cond_15

    .line 239
    .line 240
    const-wide/16 v15, 0x0

    .line 241
    .line 242
    const-wide/16 v17, 0x0

    .line 243
    .line 244
    const-wide/16 v19, 0x0

    .line 245
    .line 246
    const-wide/16 v21, 0x0

    .line 247
    .line 248
    const-wide/16 v23, 0x0

    .line 249
    .line 250
    const-wide/16 v25, 0x0

    .line 251
    .line 252
    const-wide/16 v27, 0x0

    .line 253
    .line 254
    const-wide/16 v29, 0x0

    .line 255
    .line 256
    const-wide/16 v31, 0x0

    .line 257
    .line 258
    const-wide/16 v33, 0x0

    .line 259
    .line 260
    const-wide/16 v35, 0x0

    .line 261
    .line 262
    const-wide/16 v37, 0x0

    .line 263
    .line 264
    const/16 v39, 0x0

    .line 265
    .line 266
    const/16 v40, 0x1fff

    .line 267
    .line 268
    const/16 v41, 0x0

    .line 269
    move-object v14, v1

    .line 270
    .line 271
    .line 272
    invoke-static/range {v14 .. v41}, Landroidx/compose/material/Colors;->b(Landroidx/compose/material/Colors;JJJJJJJJJJJJZILjava/lang/Object;)Landroidx/compose/material/Colors;

    .line 273
    move-result-object v6

    .line 274
    .line 275
    .line 276
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 280
    move-object v14, v6

    .line 281
    .line 282
    check-cast v14, Landroidx/compose/material/Colors;

    .line 283
    .line 284
    .line 285
    invoke-static {v14, v1}, Landroidx/compose/material/ColorsKt;->i(Landroidx/compose/material/Colors;Landroidx/compose/material/Colors;)V

    .line 286
    const/4 v6, 0x0

    .line 287
    const/4 v7, 0x0

    .line 288
    .line 289
    const-wide/16 v8, 0x0

    .line 290
    const/4 v15, 0x0

    .line 291
    .line 292
    const/16 v16, 0x7

    .line 293
    .line 294
    move/from16 v42, v10

    .line 295
    move-object v10, v0

    .line 296
    move-object v3, v11

    .line 297
    move v11, v15

    .line 298
    move-object v15, v12

    .line 299
    .line 300
    move/from16 v12, v16

    .line 301
    .line 302
    .line 303
    invoke-static/range {v6 .. v12}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 304
    move-result-object v6

    .line 305
    const/4 v7, 0x0

    .line 306
    .line 307
    .line 308
    invoke-static {v14, v0, v7}, Landroidx/compose/material/MaterialTextSelectionColorsKt;->e(Landroidx/compose/material/Colors;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 309
    move-result-object v8

    .line 310
    const/4 v9, 0x7

    .line 311
    .line 312
    new-array v9, v9, [Landroidx/compose/runtime/ProvidedValue;

    .line 313
    .line 314
    .line 315
    invoke-static {}, Landroidx/compose/material/ColorsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 316
    move-result-object v10

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 320
    move-result-object v10

    .line 321
    .line 322
    aput-object v10, v9, v7

    .line 323
    .line 324
    .line 325
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 326
    move-result-object v7

    .line 327
    .line 328
    sget-object v10, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v10, v0, v13}, Landroidx/compose/material/ContentAlpha;->c(Landroidx/compose/runtime/Composer;I)F

    .line 332
    move-result v10

    .line 333
    .line 334
    .line 335
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    move-result-object v10

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 340
    move-result-object v7

    .line 341
    const/4 v10, 0x1

    .line 342
    .line 343
    aput-object v7, v9, v10

    .line 344
    .line 345
    .line 346
    invoke-static {}, Landroidx/compose/foundation/IndicationKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 347
    move-result-object v7

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 351
    move-result-object v6

    .line 352
    .line 353
    aput-object v6, v9, v2

    .line 354
    .line 355
    .line 356
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 357
    move-result-object v2

    .line 358
    .line 359
    sget-object v6, Landroidx/compose/material/MaterialRippleTheme;->INSTANCE:Landroidx/compose/material/MaterialRippleTheme;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 363
    move-result-object v2

    .line 364
    const/4 v6, 0x3

    .line 365
    .line 366
    aput-object v2, v9, v6

    .line 367
    .line 368
    .line 369
    invoke-static {}, Landroidx/compose/material/ShapesKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 370
    move-result-object v2

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 374
    move-result-object v2

    .line 375
    const/4 v6, 0x4

    .line 376
    .line 377
    aput-object v2, v9, v6

    .line 378
    .line 379
    .line 380
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->b()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 381
    move-result-object v2

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 385
    move-result-object v2

    .line 386
    const/4 v6, 0x5

    .line 387
    .line 388
    aput-object v2, v9, v6

    .line 389
    .line 390
    .line 391
    invoke-static {}, Landroidx/compose/material/TypographyKt;->b()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 392
    move-result-object v2

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v15}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 396
    move-result-object v2

    .line 397
    .line 398
    aput-object v2, v9, v13

    .line 399
    .line 400
    new-instance v2, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;

    .line 401
    .line 402
    move/from16 v6, v42

    .line 403
    .line 404
    .line 405
    invoke-direct {v2, v15, v4, v6}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1;-><init>(Landroidx/compose/material/Typography;Le8/p;I)V

    .line 406
    .line 407
    .line 408
    const v6, -0x67b7dd37

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v6, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 412
    move-result-object v2

    .line 413
    .line 414
    const/16 v6, 0x38

    .line 415
    .line 416
    .line 417
    invoke-static {v9, v2, v0, v6}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 418
    move-object v2, v15

    .line 419
    .line 420
    .line 421
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 422
    move-result-object v7

    .line 423
    .line 424
    if-nez v7, :cond_16

    .line 425
    goto :goto_d

    .line 426
    .line 427
    :cond_16
    new-instance v8, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;

    .line 428
    move-object v0, v8

    .line 429
    .line 430
    move-object/from16 v4, p3

    .line 431
    .line 432
    move/from16 v5, p5

    .line 433
    .line 434
    move/from16 v6, p6

    .line 435
    .line 436
    .line 437
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$2;-><init>(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Le8/p;II)V

    .line 438
    .line 439
    .line 440
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 441
    :goto_d
    return-void
.end method
