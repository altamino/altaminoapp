.class public final Landroidx/compose/material/ExposedDropdownMenuBoxScope$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/ExposedDropdownMenuBoxScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material/ExposedDropdownMenuBoxScope$DefaultImpls\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,736:1\n25#2:737\n25#2:744\n36#2:752\n1057#3,6:738\n1057#3,6:745\n1057#3,6:753\n76#4:751\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material/ExposedDropdownMenuBoxScope$DefaultImpls\n*L\n245#1:737\n249#1:744\n254#1:752\n245#1:738,6\n249#1:745,6\n254#1:753,6\n250#1:751\n*E\n"
.end annotation


# direct methods
.method public static a(Landroidx/compose/material/ExposedDropdownMenuBoxScope;ZLe8/a;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/material/ExposedDropdownMenuBoxScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/ExposedDropdownMenuBoxScope;",
            "Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
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
    move-object/from16 v6, p2

    .line 3
    .line 4
    move-object/from16 v14, p4

    .line 5
    .line 6
    move/from16 v15, p6

    .line 7
    .line 8
    const-string v0, "onDismissRequest"

    .line 9
    .line 10
    .line 11
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "content"

    .line 14
    .line 15
    .line 16
    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x457a327f

    .line 20
    .line 21
    move-object/from16 v1, p5

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    and-int/lit8 v0, p7, 0x1

    .line 28
    const/4 v1, 0x2

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    or-int/lit8 v0, v15, 0x6

    .line 33
    .line 34
    move/from16 v4, p1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    and-int/lit8 v0, v15, 0xe

    .line 38
    .line 39
    move/from16 v4, p1

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    or-int/2addr v0, v15

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v0, v15

    .line 54
    .line 55
    :goto_1
    and-int/lit8 v2, p7, 0x2

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
    and-int/lit8 v2, v15, 0x70

    .line 63
    .line 64
    if-nez v2, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, p7, 0x4

    .line 79
    .line 80
    if-eqz v2, :cond_7

    .line 81
    .line 82
    or-int/lit16 v0, v0, 0x180

    .line 83
    .line 84
    :cond_6
    move-object/from16 v3, p3

    .line 85
    goto :goto_5

    .line 86
    .line 87
    :cond_7
    and-int/lit16 v3, v15, 0x380

    .line 88
    .line 89
    if-nez v3, :cond_6

    .line 90
    .line 91
    move-object/from16 v3, p3

    .line 92
    .line 93
    .line 94
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 95
    move-result v7

    .line 96
    .line 97
    if-eqz v7, :cond_8

    .line 98
    .line 99
    const/16 v7, 0x100

    .line 100
    goto :goto_4

    .line 101
    .line 102
    :cond_8
    const/16 v7, 0x80

    .line 103
    :goto_4
    or-int/2addr v0, v7

    .line 104
    .line 105
    :goto_5
    and-int/lit8 v7, p7, 0x8

    .line 106
    .line 107
    if-eqz v7, :cond_9

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0xc00

    .line 110
    goto :goto_7

    .line 111
    .line 112
    :cond_9
    and-int/lit16 v7, v15, 0x1c00

    .line 113
    .line 114
    if-nez v7, :cond_b

    .line 115
    .line 116
    .line 117
    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 118
    move-result v7

    .line 119
    .line 120
    if-eqz v7, :cond_a

    .line 121
    .line 122
    const/16 v7, 0x800

    .line 123
    goto :goto_6

    .line 124
    .line 125
    :cond_a
    const/16 v7, 0x400

    .line 126
    :goto_6
    or-int/2addr v0, v7

    .line 127
    .line 128
    :cond_b
    :goto_7
    and-int/lit8 v7, p7, 0x10

    .line 129
    .line 130
    if-eqz v7, :cond_c

    .line 131
    .line 132
    or-int/lit16 v0, v0, 0x6000

    .line 133
    .line 134
    move-object/from16 v13, p0

    .line 135
    goto :goto_9

    .line 136
    .line 137
    .line 138
    :cond_c
    const v7, 0xe000

    .line 139
    and-int/2addr v7, v15

    .line 140
    .line 141
    move-object/from16 v13, p0

    .line 142
    .line 143
    if-nez v7, :cond_e

    .line 144
    .line 145
    .line 146
    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 147
    move-result v7

    .line 148
    .line 149
    if-eqz v7, :cond_d

    .line 150
    .line 151
    const/16 v7, 0x4000

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :cond_d
    const/16 v7, 0x2000

    .line 155
    :goto_8
    or-int/2addr v0, v7

    .line 156
    .line 157
    .line 158
    :cond_e
    :goto_9
    const v7, 0xb6db

    .line 159
    and-int/2addr v7, v0

    .line 160
    .line 161
    const/16 v8, 0x2492

    .line 162
    .line 163
    if-ne v7, v8, :cond_10

    .line 164
    .line 165
    .line 166
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->b()Z

    .line 167
    move-result v7

    .line 168
    .line 169
    if-nez v7, :cond_f

    .line 170
    goto :goto_a

    .line 171
    .line 172
    .line 173
    :cond_f
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->g()V

    .line 174
    move-object v4, v3

    .line 175
    move-object v7, v5

    .line 176
    .line 177
    goto/16 :goto_e

    .line 178
    .line 179
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 180
    .line 181
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 182
    .line 183
    move-object/from16 v16, v2

    .line 184
    goto :goto_b

    .line 185
    .line 186
    :cond_11
    move-object/from16 v16, v3

    .line 187
    .line 188
    .line 189
    :goto_b
    const v2, -0x1d58f75c

    .line 190
    .line 191
    .line 192
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 196
    move-result-object v3

    .line 197
    .line 198
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 202
    move-result-object v8

    .line 203
    .line 204
    if-ne v3, v8, :cond_12

    .line 205
    .line 206
    new-instance v3, Landroidx/compose/animation/core/MutableTransitionState;

    .line 207
    .line 208
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 209
    .line 210
    .line 211
    invoke-direct {v3, v8}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_12
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 218
    move-object v8, v3

    .line 219
    .line 220
    check-cast v8, Landroidx/compose/animation/core/MutableTransitionState;

    .line 221
    .line 222
    .line 223
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 224
    move-result-object v3

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v3}, Landroidx/compose/animation/core/MutableTransitionState;->e(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v8}, Landroidx/compose/animation/core/MutableTransitionState;->a()Ljava/lang/Object;

    .line 231
    move-result-object v3

    .line 232
    .line 233
    check-cast v3, Ljava/lang/Boolean;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 237
    move-result v3

    .line 238
    .line 239
    if-nez v3, :cond_14

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8}, Landroidx/compose/animation/core/MutableTransitionState;->b()Ljava/lang/Object;

    .line 243
    move-result-object v3

    .line 244
    .line 245
    check-cast v3, Ljava/lang/Boolean;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 249
    move-result v3

    .line 250
    .line 251
    if-eqz v3, :cond_13

    .line 252
    goto :goto_c

    .line 253
    :cond_13
    move-object v7, v5

    .line 254
    .line 255
    goto/16 :goto_d

    .line 256
    .line 257
    .line 258
    :cond_14
    :goto_c
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 262
    move-result-object v2

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 266
    move-result-object v3

    .line 267
    .line 268
    if-ne v2, v3, :cond_15

    .line 269
    .line 270
    sget-object v2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->a()J

    .line 274
    move-result-wide v2

    .line 275
    .line 276
    .line 277
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->b(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 278
    move-result-object v2

    .line 279
    const/4 v3, 0x0

    .line 280
    .line 281
    .line 282
    invoke-static {v2, v3, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 283
    move-result-object v2

    .line 284
    .line 285
    .line 286
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_15
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 290
    move-object v9, v2

    .line 291
    .line 292
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 293
    .line 294
    .line 295
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    .line 299
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 300
    move-result-object v1

    .line 301
    .line 302
    move-object/from16 v20, v1

    .line 303
    .line 304
    check-cast v20, Landroidx/compose/ui/unit/Density;

    .line 305
    .line 306
    sget-object v1, Landroidx/compose/ui/unit/DpOffset;->Companion:Landroidx/compose/ui/unit/DpOffset$Companion;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Landroidx/compose/ui/unit/DpOffset$Companion;->b()J

    .line 310
    move-result-wide v18

    .line 311
    .line 312
    .line 313
    const v1, 0x44faf204

    .line 314
    .line 315
    .line 316
    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 317
    .line 318
    .line 319
    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 320
    move-result v1

    .line 321
    .line 322
    .line 323
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 324
    move-result-object v2

    .line 325
    .line 326
    if-nez v1, :cond_16

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    if-ne v2, v1, :cond_17

    .line 333
    .line 334
    :cond_16
    new-instance v2, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;

    .line 335
    .line 336
    .line 337
    invoke-direct {v2, v9}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 338
    .line 339
    .line 340
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    :cond_17
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 344
    .line 345
    move-object/from16 v21, v2

    .line 346
    .line 347
    check-cast v21, Le8/p;

    .line 348
    .line 349
    const/16 v22, 0x0

    .line 350
    .line 351
    new-instance v1, Landroidx/compose/material/DropdownMenuPositionProvider;

    .line 352
    .line 353
    move-object/from16 v17, v1

    .line 354
    .line 355
    .line 356
    invoke-direct/range {v17 .. v22}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Le8/p;Lkotlin/jvm/internal/k;)V

    .line 357
    .line 358
    new-instance v2, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;

    .line 359
    move-object v7, v2

    .line 360
    .line 361
    move-object/from16 v10, p0

    .line 362
    .line 363
    move-object/from16 v11, v16

    .line 364
    .line 365
    move-object/from16 v12, p4

    .line 366
    move v13, v0

    .line 367
    .line 368
    .line 369
    invoke-direct/range {v7 .. v13}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/material/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;Le8/q;I)V

    .line 370
    .line 371
    .line 372
    const v3, -0x183cffd9

    .line 373
    const/4 v7, 0x1

    .line 374
    .line 375
    .line 376
    invoke-static {v5, v3, v7, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 377
    move-result-object v2

    .line 378
    .line 379
    shr-int/lit8 v0, v0, 0x3

    .line 380
    .line 381
    and-int/lit8 v0, v0, 0xe

    .line 382
    .line 383
    or-int/lit16 v7, v0, 0x180

    .line 384
    const/4 v8, 0x0

    .line 385
    .line 386
    move-object/from16 v0, p2

    .line 387
    move-object v3, v5

    .line 388
    move v4, v7

    .line 389
    move-object v7, v5

    .line 390
    move v5, v8

    .line 391
    .line 392
    .line 393
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->a(Le8/a;Landroidx/compose/ui/window/PopupPositionProvider;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 394
    .line 395
    :goto_d
    move-object/from16 v4, v16

    .line 396
    .line 397
    .line 398
    :goto_e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 399
    move-result-object v8

    .line 400
    .line 401
    if-nez v8, :cond_18

    .line 402
    goto :goto_f

    .line 403
    .line 404
    :cond_18
    new-instance v9, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;

    .line 405
    move-object v0, v9

    .line 406
    .line 407
    move-object/from16 v1, p0

    .line 408
    .line 409
    move/from16 v2, p1

    .line 410
    .line 411
    move-object/from16 v3, p2

    .line 412
    .line 413
    move-object/from16 v5, p4

    .line 414
    .line 415
    move/from16 v6, p6

    .line 416
    .line 417
    move/from16 v7, p7

    .line 418
    .line 419
    .line 420
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2;-><init>(Landroidx/compose/material/ExposedDropdownMenuBoxScope;ZLe8/a;Landroidx/compose/ui/Modifier;Le8/q;II)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 424
    :goto_f
    return-void
.end method

.method public static synthetic b(Landroidx/compose/material/ExposedDropdownMenuBoxScope;Landroidx/compose/ui/Modifier;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    const/4 p4, 0x1

    .line 4
    and-int/2addr p3, p4

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    move p2, p4

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/material/ExposedDropdownMenuBoxScope;->b(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: exposedDropdownSize"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method
