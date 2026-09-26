.class public final Landroidx/compose/material/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMenu.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMenu.android.kt\nandroidx/compose/material/AndroidMenu_androidKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,146:1\n155#2:147\n25#3:148\n25#3:155\n36#3:163\n25#3:170\n1057#4,6:149\n1057#4,6:156\n1057#4,6:164\n1057#4,6:171\n76#5:162\n*S KotlinDebug\n*F\n+ 1 AndroidMenu.android.kt\nandroidx/compose/material/AndroidMenu_androidKt\n*L\n79#1:147\n83#1:148\n87#1:155\n92#1:163\n134#1:170\n83#1:149,6\n87#1:156,6\n92#1:164,6\n134#1:171,6\n88#1:162\n*E\n"
.end annotation


# direct methods
.method public static final a(ZLe8/a;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/window/PopupProperties;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Landroidx/compose/ui/window/PopupProperties;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p6

    .line 5
    .line 6
    move/from16 v9, p8

    .line 7
    .line 8
    const-string v0, "onDismissRequest"

    .line 9
    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x3215b403

    .line 20
    .line 21
    move-object/from16 v1, p7

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v10

    .line 26
    .line 27
    and-int/lit8 v0, p9, 0x1

    .line 28
    const/4 v1, 0x2

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    or-int/lit8 v0, v9, 0x6

    .line 33
    .line 34
    move/from16 v11, p0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 38
    .line 39
    move/from16 v11, p0

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v0, v1

    .line 51
    :goto_0
    or-int/2addr v0, v9

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v0, v9

    .line 54
    .line 55
    :goto_1
    and-int/lit8 v2, p9, 0x2

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    or-int/lit8 v0, v0, 0x30

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_3
    and-int/lit8 v2, v9, 0x70

    .line 63
    .line 64
    if-nez v2, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    const/16 v2, 0x20

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :cond_4
    const/16 v2, 0x10

    .line 76
    :goto_2
    or-int/2addr v0, v2

    .line 77
    .line 78
    :cond_5
    :goto_3
    and-int/lit8 v2, p9, 0x4

    .line 79
    .line 80
    if-eqz v2, :cond_7

    .line 81
    .line 82
    or-int/lit16 v0, v0, 0x180

    .line 83
    .line 84
    :cond_6
    move-object/from16 v3, p2

    .line 85
    goto :goto_5

    .line 86
    .line 87
    :cond_7
    and-int/lit16 v3, v9, 0x380

    .line 88
    .line 89
    if-nez v3, :cond_6

    .line 90
    .line 91
    move-object/from16 v3, p2

    .line 92
    .line 93
    .line 94
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 95
    move-result v4

    .line 96
    .line 97
    if-eqz v4, :cond_8

    .line 98
    .line 99
    const/16 v4, 0x100

    .line 100
    goto :goto_4

    .line 101
    .line 102
    :cond_8
    const/16 v4, 0x80

    .line 103
    :goto_4
    or-int/2addr v0, v4

    .line 104
    .line 105
    :goto_5
    and-int/lit8 v4, p9, 0x8

    .line 106
    .line 107
    if-eqz v4, :cond_a

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0xc00

    .line 110
    .line 111
    :cond_9
    move-wide/from16 v5, p3

    .line 112
    goto :goto_7

    .line 113
    .line 114
    :cond_a
    and-int/lit16 v5, v9, 0x1c00

    .line 115
    .line 116
    if-nez v5, :cond_9

    .line 117
    .line 118
    move-wide/from16 v5, p3

    .line 119
    .line 120
    .line 121
    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 122
    move-result v12

    .line 123
    .line 124
    if-eqz v12, :cond_b

    .line 125
    .line 126
    const/16 v12, 0x800

    .line 127
    goto :goto_6

    .line 128
    .line 129
    :cond_b
    const/16 v12, 0x400

    .line 130
    :goto_6
    or-int/2addr v0, v12

    .line 131
    .line 132
    .line 133
    :goto_7
    const v12, 0xe000

    .line 134
    and-int/2addr v12, v9

    .line 135
    .line 136
    if-nez v12, :cond_e

    .line 137
    .line 138
    and-int/lit8 v12, p9, 0x10

    .line 139
    .line 140
    if-nez v12, :cond_c

    .line 141
    .line 142
    move-object/from16 v12, p5

    .line 143
    .line 144
    .line 145
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 146
    move-result v13

    .line 147
    .line 148
    if-eqz v13, :cond_d

    .line 149
    .line 150
    const/16 v13, 0x4000

    .line 151
    goto :goto_8

    .line 152
    .line 153
    :cond_c
    move-object/from16 v12, p5

    .line 154
    .line 155
    :cond_d
    const/16 v13, 0x2000

    .line 156
    :goto_8
    or-int/2addr v0, v13

    .line 157
    goto :goto_9

    .line 158
    .line 159
    :cond_e
    move-object/from16 v12, p5

    .line 160
    .line 161
    :goto_9
    and-int/lit8 v13, p9, 0x20

    .line 162
    .line 163
    if-eqz v13, :cond_f

    .line 164
    .line 165
    const/high16 v13, 0x30000

    .line 166
    :goto_a
    or-int/2addr v0, v13

    .line 167
    goto :goto_b

    .line 168
    .line 169
    :cond_f
    const/high16 v13, 0x70000

    .line 170
    and-int/2addr v13, v9

    .line 171
    .line 172
    if-nez v13, :cond_11

    .line 173
    .line 174
    .line 175
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v13

    .line 177
    .line 178
    if-eqz v13, :cond_10

    .line 179
    .line 180
    const/high16 v13, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_10
    const/high16 v13, 0x10000

    .line 184
    goto :goto_a

    .line 185
    .line 186
    .line 187
    :cond_11
    :goto_b
    const v13, 0x5b6db

    .line 188
    and-int/2addr v13, v0

    .line 189
    .line 190
    .line 191
    const v14, 0x12492

    .line 192
    .line 193
    if-ne v13, v14, :cond_13

    .line 194
    .line 195
    .line 196
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->b()Z

    .line 197
    move-result v13

    .line 198
    .line 199
    if-nez v13, :cond_12

    .line 200
    goto :goto_c

    .line 201
    .line 202
    .line 203
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 204
    move-wide v4, v5

    .line 205
    move-object v6, v12

    .line 206
    .line 207
    goto/16 :goto_11

    .line 208
    .line 209
    .line 210
    :cond_13
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->J()V

    .line 211
    .line 212
    and-int/lit8 v13, v9, 0x1

    .line 213
    .line 214
    .line 215
    const v14, -0xe001

    .line 216
    .line 217
    if-eqz v13, :cond_16

    .line 218
    .line 219
    .line 220
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->h()Z

    .line 221
    move-result v13

    .line 222
    .line 223
    if-eqz v13, :cond_14

    .line 224
    goto :goto_d

    .line 225
    .line 226
    .line 227
    :cond_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 228
    .line 229
    and-int/lit8 v2, p9, 0x10

    .line 230
    .line 231
    if-eqz v2, :cond_15

    .line 232
    and-int/2addr v0, v14

    .line 233
    .line 234
    :cond_15
    move-wide/from16 v19, v5

    .line 235
    .line 236
    move-object/from16 v21, v12

    .line 237
    move v6, v0

    .line 238
    move-object v12, v3

    .line 239
    goto :goto_10

    .line 240
    .line 241
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 242
    .line 243
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 244
    goto :goto_e

    .line 245
    :cond_17
    move-object v2, v3

    .line 246
    .line 247
    :goto_e
    if-eqz v4, :cond_18

    .line 248
    const/4 v3, 0x0

    .line 249
    int-to-float v3, v3

    .line 250
    .line 251
    .line 252
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 253
    move-result v4

    .line 254
    .line 255
    .line 256
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 257
    move-result v3

    .line 258
    .line 259
    .line 260
    invoke-static {v4, v3}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    .line 261
    move-result-wide v3

    .line 262
    goto :goto_f

    .line 263
    :cond_18
    move-wide v3, v5

    .line 264
    .line 265
    :goto_f
    and-int/lit8 v5, p9, 0x10

    .line 266
    .line 267
    if-eqz v5, :cond_19

    .line 268
    .line 269
    new-instance v5, Landroidx/compose/ui/window/PopupProperties;

    .line 270
    .line 271
    const/16 v16, 0x1

    .line 272
    .line 273
    const/16 v17, 0x0

    .line 274
    .line 275
    const/16 v18, 0x0

    .line 276
    .line 277
    const/16 v19, 0x0

    .line 278
    .line 279
    const/16 v20, 0x0

    .line 280
    .line 281
    const/16 v21, 0x0

    .line 282
    .line 283
    const/16 v22, 0x3e

    .line 284
    .line 285
    const/16 v23, 0x0

    .line 286
    move-object v15, v5

    .line 287
    .line 288
    .line 289
    invoke-direct/range {v15 .. v23}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/k;)V

    .line 290
    and-int/2addr v0, v14

    .line 291
    move v6, v0

    .line 292
    move-object v12, v2

    .line 293
    .line 294
    move-wide/from16 v19, v3

    .line 295
    .line 296
    move-object/from16 v21, v5

    .line 297
    goto :goto_10

    .line 298
    :cond_19
    move v6, v0

    .line 299
    .line 300
    move-wide/from16 v19, v3

    .line 301
    .line 302
    move-object/from16 v21, v12

    .line 303
    move-object v12, v2

    .line 304
    .line 305
    .line 306
    :goto_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->A()V

    .line 307
    .line 308
    .line 309
    const v0, -0x1d58f75c

    .line 310
    .line 311
    .line 312
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 313
    .line 314
    .line 315
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 316
    move-result-object v2

    .line 317
    .line 318
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 322
    move-result-object v4

    .line 323
    .line 324
    if-ne v2, v4, :cond_1a

    .line 325
    .line 326
    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    .line 327
    .line 328
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 329
    .line 330
    .line 331
    invoke-direct {v2, v4}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 338
    .line 339
    check-cast v2, Landroidx/compose/animation/core/MutableTransitionState;

    .line 340
    .line 341
    .line 342
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 343
    move-result-object v4

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v4}, Landroidx/compose/animation/core/MutableTransitionState;->e(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->a()Ljava/lang/Object;

    .line 350
    move-result-object v4

    .line 351
    .line 352
    check-cast v4, Ljava/lang/Boolean;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 356
    move-result v4

    .line 357
    .line 358
    if-nez v4, :cond_1b

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->b()Ljava/lang/Object;

    .line 362
    move-result-object v4

    .line 363
    .line 364
    check-cast v4, Ljava/lang/Boolean;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 368
    move-result v4

    .line 369
    .line 370
    if-eqz v4, :cond_1f

    .line 371
    .line 372
    .line 373
    :cond_1b
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 377
    move-result-object v0

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 381
    move-result-object v4

    .line 382
    .line 383
    if-ne v0, v4, :cond_1c

    .line 384
    .line 385
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    .line 389
    move-result-wide v4

    .line 390
    .line 391
    .line 392
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 393
    move-result-object v0

    .line 394
    const/4 v4, 0x0

    .line 395
    .line 396
    .line 397
    invoke-static {v0, v4, v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 398
    move-result-object v0

    .line 399
    .line 400
    .line 401
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 405
    move-object v4, v0

    .line 406
    .line 407
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 408
    .line 409
    .line 410
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 411
    move-result-object v0

    .line 412
    .line 413
    .line 414
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 415
    move-result-object v0

    .line 416
    .line 417
    move-object/from16 v16, v0

    .line 418
    .line 419
    check-cast v16, Landroidx/compose/ui/unit/Density;

    .line 420
    .line 421
    .line 422
    const v0, 0x44faf204

    .line 423
    .line 424
    .line 425
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 429
    move-result v0

    .line 430
    .line 431
    .line 432
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 433
    move-result-object v1

    .line 434
    .line 435
    if-nez v0, :cond_1d

    .line 436
    .line 437
    .line 438
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 439
    move-result-object v0

    .line 440
    .line 441
    if-ne v1, v0, :cond_1e

    .line 442
    .line 443
    :cond_1d
    new-instance v1, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;

    .line 444
    .line 445
    .line 446
    invoke-direct {v1, v4}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 447
    .line 448
    .line 449
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 450
    .line 451
    .line 452
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 453
    .line 454
    move-object/from16 v17, v1

    .line 455
    .line 456
    check-cast v17, Le8/p;

    .line 457
    .line 458
    const/16 v18, 0x0

    .line 459
    .line 460
    new-instance v22, Landroidx/compose/material/DropdownMenuPositionProvider;

    .line 461
    .line 462
    move-object/from16 v13, v22

    .line 463
    .line 464
    move-wide/from16 v14, v19

    .line 465
    .line 466
    .line 467
    invoke-direct/range {v13 .. v18}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Le8/p;Lkotlin/jvm/internal/k;)V

    .line 468
    .line 469
    new-instance v13, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;

    .line 470
    move-object v0, v13

    .line 471
    move-object v1, v2

    .line 472
    move-object v2, v4

    .line 473
    move-object v3, v12

    .line 474
    .line 475
    move-object/from16 v4, p6

    .line 476
    move v5, v6

    .line 477
    .line 478
    .line 479
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Le8/q;I)V

    .line 480
    .line 481
    .line 482
    const v0, 0x4bf17f6

    .line 483
    const/4 v1, 0x1

    .line 484
    .line 485
    .line 486
    invoke-static {v10, v0, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 487
    move-result-object v3

    .line 488
    .line 489
    and-int/lit8 v0, v6, 0x70

    .line 490
    .line 491
    or-int/lit16 v0, v0, 0xc00

    .line 492
    .line 493
    shr-int/lit8 v1, v6, 0x6

    .line 494
    .line 495
    and-int/lit16 v1, v1, 0x380

    .line 496
    .line 497
    or-int v5, v0, v1

    .line 498
    const/4 v6, 0x0

    .line 499
    .line 500
    move-object/from16 v0, v22

    .line 501
    .line 502
    move-object/from16 v1, p1

    .line 503
    .line 504
    move-object/from16 v2, v21

    .line 505
    move-object v4, v10

    .line 506
    .line 507
    .line 508
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Le8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 509
    :cond_1f
    move-object v3, v12

    .line 510
    .line 511
    move-wide/from16 v4, v19

    .line 512
    .line 513
    move-object/from16 v6, v21

    .line 514
    .line 515
    .line 516
    :goto_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 517
    move-result-object v10

    .line 518
    .line 519
    if-nez v10, :cond_20

    .line 520
    goto :goto_12

    .line 521
    .line 522
    :cond_20
    new-instance v12, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;

    .line 523
    move-object v0, v12

    .line 524
    .line 525
    move/from16 v1, p0

    .line 526
    .line 527
    move-object/from16 v2, p1

    .line 528
    .line 529
    move-object/from16 v7, p6

    .line 530
    .line 531
    move/from16 v8, p8

    .line 532
    .line 533
    move/from16 v9, p9

    .line 534
    .line 535
    .line 536
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;-><init>(ZLe8/a;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Le8/q;II)V

    .line 537
    .line 538
    .line 539
    invoke-interface {v10, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 540
    :goto_12
    return-void
.end method

.method public static final b(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
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
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
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
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v10, p5

    .line 5
    .line 6
    move/from16 v11, p7

    .line 7
    .line 8
    const-string v0, "onClick"

    .line 9
    .line 10
    .line 11
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x76870fcc

    .line 20
    .line 21
    move-object/from16 v1, p6

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v12

    .line 26
    .line 27
    and-int/lit8 v0, p8, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v11, 0x6

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    and-int/lit8 v0, v11, 0xe

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    :goto_0
    or-int/2addr v0, v11

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v11

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    or-int/lit8 v0, v0, 0x30

    .line 55
    .line 56
    :cond_3
    move-object/from16 v2, p1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    and-int/lit8 v2, v11, 0x70

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    move-object/from16 v2, p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v3

    .line 68
    .line 69
    if-eqz v3, :cond_5

    .line 70
    .line 71
    const/16 v3, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    const/16 v3, 0x10

    .line 75
    :goto_2
    or-int/2addr v0, v3

    .line 76
    .line 77
    :goto_3
    and-int/lit8 v3, p8, 0x4

    .line 78
    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x180

    .line 82
    .line 83
    :cond_6
    move/from16 v4, p2

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_7
    and-int/lit16 v4, v11, 0x380

    .line 87
    .line 88
    if-nez v4, :cond_6

    .line 89
    .line 90
    move/from16 v4, p2

    .line 91
    .line 92
    .line 93
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 94
    move-result v5

    .line 95
    .line 96
    if-eqz v5, :cond_8

    .line 97
    .line 98
    const/16 v5, 0x100

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_8
    const/16 v5, 0x80

    .line 102
    :goto_4
    or-int/2addr v0, v5

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v5, p8, 0x8

    .line 105
    .line 106
    if-eqz v5, :cond_a

    .line 107
    .line 108
    or-int/lit16 v0, v0, 0xc00

    .line 109
    .line 110
    :cond_9
    move-object/from16 v6, p3

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v6, v11, 0x1c00

    .line 114
    .line 115
    if-nez v6, :cond_9

    .line 116
    .line 117
    move-object/from16 v6, p3

    .line 118
    .line 119
    .line 120
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 121
    move-result v7

    .line 122
    .line 123
    if-eqz v7, :cond_b

    .line 124
    .line 125
    const/16 v7, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_b
    const/16 v7, 0x400

    .line 129
    :goto_6
    or-int/2addr v0, v7

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v7, p8, 0x10

    .line 132
    .line 133
    .line 134
    const v8, 0xe000

    .line 135
    .line 136
    if-eqz v7, :cond_d

    .line 137
    .line 138
    or-int/lit16 v0, v0, 0x6000

    .line 139
    .line 140
    :cond_c
    move-object/from16 v13, p4

    .line 141
    goto :goto_9

    .line 142
    .line 143
    :cond_d
    and-int v13, v11, v8

    .line 144
    .line 145
    if-nez v13, :cond_c

    .line 146
    .line 147
    move-object/from16 v13, p4

    .line 148
    .line 149
    .line 150
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 151
    move-result v14

    .line 152
    .line 153
    if-eqz v14, :cond_e

    .line 154
    .line 155
    const/16 v14, 0x4000

    .line 156
    goto :goto_8

    .line 157
    .line 158
    :cond_e
    const/16 v14, 0x2000

    .line 159
    :goto_8
    or-int/2addr v0, v14

    .line 160
    .line 161
    :goto_9
    and-int/lit8 v14, p8, 0x20

    .line 162
    .line 163
    const/high16 v15, 0x70000

    .line 164
    .line 165
    if-eqz v14, :cond_f

    .line 166
    .line 167
    const/high16 v14, 0x30000

    .line 168
    :goto_a
    or-int/2addr v0, v14

    .line 169
    goto :goto_b

    .line 170
    .line 171
    :cond_f
    and-int v14, v11, v15

    .line 172
    .line 173
    if-nez v14, :cond_11

    .line 174
    .line 175
    .line 176
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 177
    move-result v14

    .line 178
    .line 179
    if-eqz v14, :cond_10

    .line 180
    .line 181
    const/high16 v14, 0x20000

    .line 182
    goto :goto_a

    .line 183
    .line 184
    :cond_10
    const/high16 v14, 0x10000

    .line 185
    goto :goto_a

    .line 186
    .line 187
    .line 188
    :cond_11
    :goto_b
    const v14, 0x5b6db

    .line 189
    and-int/2addr v14, v0

    .line 190
    .line 191
    .line 192
    const v15, 0x12492

    .line 193
    .line 194
    if-ne v14, v15, :cond_13

    .line 195
    .line 196
    .line 197
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 198
    move-result v14

    .line 199
    .line 200
    if-nez v14, :cond_12

    .line 201
    goto :goto_c

    .line 202
    .line 203
    .line 204
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 205
    move v3, v4

    .line 206
    move-object v4, v6

    .line 207
    move-object v5, v13

    .line 208
    .line 209
    goto/16 :goto_10

    .line 210
    .line 211
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 212
    .line 213
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 214
    move-object v14, v1

    .line 215
    goto :goto_d

    .line 216
    :cond_14
    move-object v14, v2

    .line 217
    .line 218
    :goto_d
    if-eqz v3, :cond_15

    .line 219
    const/4 v1, 0x1

    .line 220
    move v15, v1

    .line 221
    goto :goto_e

    .line 222
    :cond_15
    move v15, v4

    .line 223
    .line 224
    :goto_e
    if-eqz v5, :cond_16

    .line 225
    .line 226
    sget-object v1, Landroidx/compose/material/MenuDefaults;->INSTANCE:Landroidx/compose/material/MenuDefaults;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Landroidx/compose/material/MenuDefaults;->a()Landroidx/compose/foundation/layout/PaddingValues;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    move-object/from16 v16, v1

    .line 233
    goto :goto_f

    .line 234
    .line 235
    :cond_16
    move-object/from16 v16, v6

    .line 236
    .line 237
    :goto_f
    if-eqz v7, :cond_18

    .line 238
    .line 239
    .line 240
    const v1, -0x1d58f75c

    .line 241
    .line 242
    .line 243
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 253
    move-result-object v2

    .line 254
    .line 255
    if-ne v1, v2, :cond_17

    .line 256
    .line 257
    .line 258
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 259
    move-result-object v1

    .line 260
    .line 261
    .line 262
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 266
    .line 267
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 268
    move-object v13, v1

    .line 269
    .line 270
    :cond_18
    and-int/lit8 v1, v0, 0xe

    .line 271
    .line 272
    and-int/lit8 v2, v0, 0x70

    .line 273
    or-int/2addr v1, v2

    .line 274
    .line 275
    and-int/lit16 v2, v0, 0x380

    .line 276
    or-int/2addr v1, v2

    .line 277
    .line 278
    and-int/lit16 v2, v0, 0x1c00

    .line 279
    or-int/2addr v1, v2

    .line 280
    .line 281
    and-int v2, v0, v8

    .line 282
    or-int/2addr v1, v2

    .line 283
    .line 284
    const/high16 v2, 0x70000

    .line 285
    and-int/2addr v0, v2

    .line 286
    .line 287
    or-int v7, v1, v0

    .line 288
    const/4 v8, 0x0

    .line 289
    .line 290
    move-object/from16 v0, p0

    .line 291
    move-object v1, v14

    .line 292
    move v2, v15

    .line 293
    .line 294
    move-object/from16 v3, v16

    .line 295
    move-object v4, v13

    .line 296
    .line 297
    move-object/from16 v5, p5

    .line 298
    move-object v6, v12

    .line 299
    .line 300
    .line 301
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/MenuKt;->d(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 302
    move-object v5, v13

    .line 303
    move-object v2, v14

    .line 304
    move v3, v15

    .line 305
    .line 306
    move-object/from16 v4, v16

    .line 307
    .line 308
    .line 309
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 310
    move-result-object v12

    .line 311
    .line 312
    if-nez v12, :cond_19

    .line 313
    goto :goto_11

    .line 314
    .line 315
    :cond_19
    new-instance v13, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenuItem$2;

    .line 316
    move-object v0, v13

    .line 317
    .line 318
    move-object/from16 v1, p0

    .line 319
    .line 320
    move-object/from16 v6, p5

    .line 321
    .line 322
    move/from16 v7, p7

    .line 323
    .line 324
    move/from16 v8, p8

    .line 325
    .line 326
    .line 327
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenuItem$2;-><init>(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Le8/q;II)V

    .line 328
    .line 329
    .line 330
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 331
    :goto_11
    return-void
.end method
