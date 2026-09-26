.class public final Landroidx/compose/material/TabRowKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,517:1\n155#2:518\n*S KotlinDebug\n*F\n+ 1 TabRow.kt\nandroidx/compose/material/TabRowKt\n*L\n508#1:518\n*E\n"
.end annotation


# static fields
.field private static final ScrollableTabRowMinimumTabWidth:F

.field private static final ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x5a

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 7
    move-result v0

    .line 8
    .line 9
    sput v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowMinimumTabWidth:F

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->a()Landroidx/compose/animation/core/Easing;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    const/16 v3, 0xfa

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v3, v4, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 25
    return-void
.end method

.method public static final a(ILandroidx/compose/ui/Modifier;JJFLe8/q;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/p;
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

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Le8/q<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
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
    move/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v10, p9

    .line 5
    .line 6
    move/from16 v11, p11

    .line 7
    .line 8
    move/from16 v12, p12

    .line 9
    .line 10
    const-string v0, "tabs"

    .line 11
    .line 12
    .line 13
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const v0, -0x57d378e8

    .line 17
    .line 18
    move-object/from16 v2, p10

    .line 19
    .line 20
    .line 21
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    and-int/lit8 v2, v12, 0x1

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    or-int/lit8 v2, v11, 0x6

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    const/4 v2, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x2

    .line 43
    :goto_0
    or-int/2addr v2, v11

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v11

    .line 46
    .line 47
    :goto_1
    and-int/lit8 v3, v12, 0x2

    .line 48
    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    or-int/lit8 v2, v2, 0x30

    .line 52
    .line 53
    :cond_3
    move-object/from16 v4, p1

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_4
    and-int/lit8 v4, v11, 0x70

    .line 57
    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    move-object/from16 v4, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v5

    .line 65
    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    const/16 v5, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_5
    const/16 v5, 0x10

    .line 72
    :goto_2
    or-int/2addr v2, v5

    .line 73
    .line 74
    :goto_3
    and-int/lit16 v5, v11, 0x380

    .line 75
    .line 76
    if-nez v5, :cond_8

    .line 77
    .line 78
    and-int/lit8 v5, v12, 0x4

    .line 79
    .line 80
    if-nez v5, :cond_6

    .line 81
    .line 82
    move-wide/from16 v5, p2

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 86
    move-result v7

    .line 87
    .line 88
    if-eqz v7, :cond_7

    .line 89
    .line 90
    const/16 v7, 0x100

    .line 91
    goto :goto_4

    .line 92
    .line 93
    :cond_6
    move-wide/from16 v5, p2

    .line 94
    .line 95
    :cond_7
    const/16 v7, 0x80

    .line 96
    :goto_4
    or-int/2addr v2, v7

    .line 97
    goto :goto_5

    .line 98
    .line 99
    :cond_8
    move-wide/from16 v5, p2

    .line 100
    .line 101
    :goto_5
    and-int/lit16 v7, v11, 0x1c00

    .line 102
    .line 103
    if-nez v7, :cond_b

    .line 104
    .line 105
    and-int/lit8 v7, v12, 0x8

    .line 106
    .line 107
    if-nez v7, :cond_9

    .line 108
    .line 109
    move-wide/from16 v7, p4

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 113
    move-result v9

    .line 114
    .line 115
    if-eqz v9, :cond_a

    .line 116
    .line 117
    const/16 v9, 0x800

    .line 118
    goto :goto_6

    .line 119
    .line 120
    :cond_9
    move-wide/from16 v7, p4

    .line 121
    .line 122
    :cond_a
    const/16 v9, 0x400

    .line 123
    :goto_6
    or-int/2addr v2, v9

    .line 124
    goto :goto_7

    .line 125
    .line 126
    :cond_b
    move-wide/from16 v7, p4

    .line 127
    .line 128
    :goto_7
    and-int/lit8 v9, v12, 0x10

    .line 129
    .line 130
    if-eqz v9, :cond_d

    .line 131
    .line 132
    or-int/lit16 v2, v2, 0x6000

    .line 133
    .line 134
    :cond_c
    move/from16 v13, p6

    .line 135
    goto :goto_9

    .line 136
    .line 137
    .line 138
    :cond_d
    const v13, 0xe000

    .line 139
    and-int/2addr v13, v11

    .line 140
    .line 141
    if-nez v13, :cond_c

    .line 142
    .line 143
    move/from16 v13, p6

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 147
    move-result v14

    .line 148
    .line 149
    if-eqz v14, :cond_e

    .line 150
    .line 151
    const/16 v14, 0x4000

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :cond_e
    const/16 v14, 0x2000

    .line 155
    :goto_8
    or-int/2addr v2, v14

    .line 156
    .line 157
    :goto_9
    and-int/lit8 v14, v12, 0x20

    .line 158
    .line 159
    if-eqz v14, :cond_10

    .line 160
    .line 161
    const/high16 v15, 0x30000

    .line 162
    or-int/2addr v2, v15

    .line 163
    .line 164
    :cond_f
    move-object/from16 v15, p7

    .line 165
    goto :goto_b

    .line 166
    .line 167
    :cond_10
    const/high16 v15, 0x70000

    .line 168
    and-int/2addr v15, v11

    .line 169
    .line 170
    if-nez v15, :cond_f

    .line 171
    .line 172
    move-object/from16 v15, p7

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 176
    move-result v16

    .line 177
    .line 178
    if-eqz v16, :cond_11

    .line 179
    .line 180
    const/high16 v16, 0x20000

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_11
    const/high16 v16, 0x10000

    .line 184
    .line 185
    :goto_a
    or-int v2, v2, v16

    .line 186
    .line 187
    :goto_b
    and-int/lit8 v16, v12, 0x40

    .line 188
    .line 189
    const/high16 v17, 0x180000

    .line 190
    .line 191
    if-eqz v16, :cond_12

    .line 192
    .line 193
    or-int v2, v2, v17

    .line 194
    .line 195
    move-object/from16 v4, p8

    .line 196
    goto :goto_d

    .line 197
    .line 198
    :cond_12
    const/high16 v18, 0x380000

    .line 199
    .line 200
    and-int v18, v11, v18

    .line 201
    .line 202
    move-object/from16 v4, p8

    .line 203
    .line 204
    if-nez v18, :cond_14

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int v2, v2, v18

    .line 218
    .line 219
    :cond_14
    :goto_d
    and-int/lit16 v4, v12, 0x80

    .line 220
    .line 221
    if-eqz v4, :cond_15

    .line 222
    .line 223
    const/high16 v4, 0xc00000

    .line 224
    :goto_e
    or-int/2addr v2, v4

    .line 225
    goto :goto_f

    .line 226
    .line 227
    :cond_15
    const/high16 v4, 0x1c00000

    .line 228
    and-int/2addr v4, v11

    .line 229
    .line 230
    if-nez v4, :cond_17

    .line 231
    .line 232
    .line 233
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 234
    move-result v4

    .line 235
    .line 236
    if-eqz v4, :cond_16

    .line 237
    .line 238
    const/high16 v4, 0x800000

    .line 239
    goto :goto_e

    .line 240
    .line 241
    :cond_16
    const/high16 v4, 0x400000

    .line 242
    goto :goto_e

    .line 243
    .line 244
    .line 245
    :cond_17
    :goto_f
    const v4, 0x16db6db

    .line 246
    and-int/2addr v4, v2

    .line 247
    .line 248
    .line 249
    const v5, 0x492492

    .line 250
    .line 251
    if-ne v4, v5, :cond_19

    .line 252
    .line 253
    .line 254
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 255
    move-result v4

    .line 256
    .line 257
    if-nez v4, :cond_18

    .line 258
    goto :goto_10

    .line 259
    .line 260
    .line 261
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 262
    .line 263
    move-object/from16 v2, p1

    .line 264
    .line 265
    move-wide/from16 v3, p2

    .line 266
    .line 267
    move-object/from16 v9, p8

    .line 268
    move-wide v5, v7

    .line 269
    move v7, v13

    .line 270
    move-object v8, v15

    .line 271
    .line 272
    goto/16 :goto_17

    .line 273
    .line 274
    .line 275
    :cond_19
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 276
    .line 277
    and-int/lit8 v4, v11, 0x1

    .line 278
    .line 279
    if-eqz v4, :cond_1e

    .line 280
    .line 281
    .line 282
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 283
    move-result v4

    .line 284
    .line 285
    if-eqz v4, :cond_1a

    .line 286
    goto :goto_11

    .line 287
    .line 288
    .line 289
    :cond_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 290
    .line 291
    and-int/lit8 v3, v12, 0x4

    .line 292
    .line 293
    if-eqz v3, :cond_1b

    .line 294
    .line 295
    and-int/lit16 v2, v2, -0x381

    .line 296
    .line 297
    :cond_1b
    and-int/lit8 v3, v12, 0x8

    .line 298
    .line 299
    if-eqz v3, :cond_1c

    .line 300
    .line 301
    and-int/lit16 v2, v2, -0x1c01

    .line 302
    .line 303
    :cond_1c
    move-object/from16 v3, p1

    .line 304
    .line 305
    move-wide/from16 v5, p2

    .line 306
    move v4, v13

    .line 307
    move-object v9, v15

    .line 308
    :cond_1d
    move v13, v2

    .line 309
    .line 310
    move-object/from16 v2, p8

    .line 311
    goto :goto_16

    .line 312
    .line 313
    :cond_1e
    :goto_11
    if-eqz v3, :cond_1f

    .line 314
    .line 315
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 316
    goto :goto_12

    .line 317
    .line 318
    :cond_1f
    move-object/from16 v3, p1

    .line 319
    .line 320
    :goto_12
    and-int/lit8 v4, v12, 0x4

    .line 321
    .line 322
    if-eqz v4, :cond_20

    .line 323
    .line 324
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 325
    const/4 v6, 0x6

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4, v0, v6}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 329
    move-result-object v4

    .line 330
    .line 331
    .line 332
    invoke-static {v4}, Landroidx/compose/material/ColorsKt;->f(Landroidx/compose/material/Colors;)J

    .line 333
    move-result-wide v18

    .line 334
    .line 335
    and-int/lit16 v2, v2, -0x381

    .line 336
    .line 337
    move-wide/from16 v5, v18

    .line 338
    goto :goto_13

    .line 339
    .line 340
    :cond_20
    move-wide/from16 v5, p2

    .line 341
    .line 342
    :goto_13
    and-int/lit8 v4, v12, 0x8

    .line 343
    .line 344
    if-eqz v4, :cond_21

    .line 345
    .line 346
    shr-int/lit8 v4, v2, 0x6

    .line 347
    .line 348
    and-int/lit8 v4, v4, 0xe

    .line 349
    .line 350
    .line 351
    invoke-static {v5, v6, v0, v4}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 352
    move-result-wide v7

    .line 353
    .line 354
    and-int/lit16 v2, v2, -0x1c01

    .line 355
    .line 356
    :cond_21
    if-eqz v9, :cond_22

    .line 357
    .line 358
    sget-object v4, Landroidx/compose/material/TabRowDefaults;->INSTANCE:Landroidx/compose/material/TabRowDefaults;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v4}, Landroidx/compose/material/TabRowDefaults;->d()F

    .line 362
    move-result v4

    .line 363
    goto :goto_14

    .line 364
    :cond_22
    move v4, v13

    .line 365
    .line 366
    :goto_14
    if-eqz v14, :cond_23

    .line 367
    .line 368
    new-instance v9, Landroidx/compose/material/TabRowKt$ScrollableTabRow$1;

    .line 369
    .line 370
    .line 371
    invoke-direct {v9, v1}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$1;-><init>(I)V

    .line 372
    .line 373
    .line 374
    const v13, -0x2713d00d

    .line 375
    const/4 v14, 0x1

    .line 376
    .line 377
    .line 378
    invoke-static {v0, v13, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 379
    move-result-object v9

    .line 380
    goto :goto_15

    .line 381
    :cond_23
    move-object v9, v15

    .line 382
    .line 383
    :goto_15
    if-eqz v16, :cond_1d

    .line 384
    .line 385
    sget-object v13, Landroidx/compose/material/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$TabRowKt;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v13}, Landroidx/compose/material/ComposableSingletons$TabRowKt;->b()Le8/p;

    .line 389
    move-result-object v13

    .line 390
    .line 391
    move-object/from16 v25, v13

    .line 392
    move v13, v2

    .line 393
    .line 394
    move-object/from16 v2, v25

    .line 395
    .line 396
    .line 397
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 398
    .line 399
    const/16 v19, 0x0

    .line 400
    .line 401
    const/16 v20, 0x0

    .line 402
    .line 403
    new-instance v15, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;

    .line 404
    .line 405
    move-object/from16 p1, v15

    .line 406
    .line 407
    move/from16 p2, v4

    .line 408
    .line 409
    move-object/from16 p3, p9

    .line 410
    .line 411
    move-object/from16 p4, v2

    .line 412
    .line 413
    move/from16 p5, p0

    .line 414
    .line 415
    move-object/from16 p6, v9

    .line 416
    .line 417
    move/from16 p7, v13

    .line 418
    .line 419
    .line 420
    invoke-direct/range {p1 .. p7}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;-><init>(FLe8/p;Le8/p;ILe8/q;I)V

    .line 421
    .line 422
    .line 423
    const v14, 0x56c6ab5c

    .line 424
    const/4 v1, 0x1

    .line 425
    .line 426
    .line 427
    invoke-static {v0, v14, v1, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 428
    move-result-object v21

    .line 429
    .line 430
    shr-int/lit8 v1, v13, 0x3

    .line 431
    .line 432
    and-int/lit8 v1, v1, 0xe

    .line 433
    .line 434
    or-int v1, v1, v17

    .line 435
    .line 436
    and-int/lit16 v14, v13, 0x380

    .line 437
    or-int/2addr v1, v14

    .line 438
    .line 439
    and-int/lit16 v13, v13, 0x1c00

    .line 440
    .line 441
    or-int v23, v1, v13

    .line 442
    .line 443
    const/16 v24, 0x32

    .line 444
    move-object v13, v3

    .line 445
    const/4 v1, 0x0

    .line 446
    move-object v14, v1

    .line 447
    move-wide v15, v5

    .line 448
    .line 449
    move-wide/from16 v17, v7

    .line 450
    .line 451
    move-object/from16 v22, v0

    .line 452
    .line 453
    .line 454
    invoke-static/range {v13 .. v24}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 455
    .line 456
    move-object/from16 v25, v9

    .line 457
    move-object v9, v2

    .line 458
    move-object v2, v3

    .line 459
    .line 460
    move-wide/from16 v26, v7

    .line 461
    move v7, v4

    .line 462
    move-wide v3, v5

    .line 463
    .line 464
    move-wide/from16 v5, v26

    .line 465
    .line 466
    move-object/from16 v8, v25

    .line 467
    .line 468
    .line 469
    :goto_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 470
    move-result-object v13

    .line 471
    .line 472
    if-nez v13, :cond_24

    .line 473
    goto :goto_18

    .line 474
    .line 475
    :cond_24
    new-instance v14, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;

    .line 476
    move-object v0, v14

    .line 477
    .line 478
    move/from16 v1, p0

    .line 479
    .line 480
    move-object/from16 v10, p9

    .line 481
    .line 482
    move/from16 v11, p11

    .line 483
    .line 484
    move/from16 v12, p12

    .line 485
    .line 486
    .line 487
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;-><init>(ILandroidx/compose/ui/Modifier;JJFLe8/q;Le8/p;Le8/p;II)V

    .line 488
    .line 489
    .line 490
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 491
    :goto_18
    return-void
.end method

.method public static final b(ILandroidx/compose/ui/Modifier;JJLe8/q;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Le8/q<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
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
    move/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v9, p8

    .line 5
    .line 6
    move/from16 v10, p10

    .line 7
    .line 8
    const-string v0, "tabs"

    .line 9
    .line 10
    .line 11
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0xeda1cf9

    .line 15
    .line 16
    move-object/from16 v2, p9

    .line 17
    .line 18
    .line 19
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    and-int/lit8 v2, p11, 0x1

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    or-int/lit8 v2, v10, 0x6

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    and-int/lit8 v2, v10, 0xe

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->p(I)Z

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
    or-int/2addr v2, v10

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v10

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v3, p11, 0x2

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
    and-int/lit8 v4, v10, 0x70

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
    and-int/lit16 v5, v10, 0x380

    .line 73
    .line 74
    if-nez v5, :cond_8

    .line 75
    .line 76
    and-int/lit8 v5, p11, 0x4

    .line 77
    .line 78
    if-nez v5, :cond_6

    .line 79
    .line 80
    move-wide/from16 v5, p2

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 84
    move-result v7

    .line 85
    .line 86
    if-eqz v7, :cond_7

    .line 87
    .line 88
    const/16 v7, 0x100

    .line 89
    goto :goto_4

    .line 90
    .line 91
    :cond_6
    move-wide/from16 v5, p2

    .line 92
    .line 93
    :cond_7
    const/16 v7, 0x80

    .line 94
    :goto_4
    or-int/2addr v2, v7

    .line 95
    goto :goto_5

    .line 96
    .line 97
    :cond_8
    move-wide/from16 v5, p2

    .line 98
    .line 99
    :goto_5
    and-int/lit16 v7, v10, 0x1c00

    .line 100
    .line 101
    if-nez v7, :cond_b

    .line 102
    .line 103
    and-int/lit8 v7, p11, 0x8

    .line 104
    .line 105
    if-nez v7, :cond_9

    .line 106
    .line 107
    move-wide/from16 v7, p4

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 111
    move-result v11

    .line 112
    .line 113
    if-eqz v11, :cond_a

    .line 114
    .line 115
    const/16 v11, 0x800

    .line 116
    goto :goto_6

    .line 117
    .line 118
    :cond_9
    move-wide/from16 v7, p4

    .line 119
    .line 120
    :cond_a
    const/16 v11, 0x400

    .line 121
    :goto_6
    or-int/2addr v2, v11

    .line 122
    goto :goto_7

    .line 123
    .line 124
    :cond_b
    move-wide/from16 v7, p4

    .line 125
    .line 126
    :goto_7
    and-int/lit8 v11, p11, 0x10

    .line 127
    .line 128
    if-eqz v11, :cond_d

    .line 129
    .line 130
    or-int/lit16 v2, v2, 0x6000

    .line 131
    .line 132
    :cond_c
    move-object/from16 v12, p6

    .line 133
    goto :goto_9

    .line 134
    .line 135
    .line 136
    :cond_d
    const v12, 0xe000

    .line 137
    and-int/2addr v12, v10

    .line 138
    .line 139
    if-nez v12, :cond_c

    .line 140
    .line 141
    move-object/from16 v12, p6

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 145
    move-result v13

    .line 146
    .line 147
    if-eqz v13, :cond_e

    .line 148
    .line 149
    const/16 v13, 0x4000

    .line 150
    goto :goto_8

    .line 151
    .line 152
    :cond_e
    const/16 v13, 0x2000

    .line 153
    :goto_8
    or-int/2addr v2, v13

    .line 154
    .line 155
    :goto_9
    and-int/lit8 v13, p11, 0x20

    .line 156
    .line 157
    if-eqz v13, :cond_10

    .line 158
    .line 159
    const/high16 v14, 0x30000

    .line 160
    or-int/2addr v2, v14

    .line 161
    .line 162
    :cond_f
    move-object/from16 v14, p7

    .line 163
    goto :goto_b

    .line 164
    .line 165
    :cond_10
    const/high16 v14, 0x70000

    .line 166
    and-int/2addr v14, v10

    .line 167
    .line 168
    if-nez v14, :cond_f

    .line 169
    .line 170
    move-object/from16 v14, p7

    .line 171
    .line 172
    .line 173
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 174
    move-result v15

    .line 175
    .line 176
    if-eqz v15, :cond_11

    .line 177
    .line 178
    const/high16 v15, 0x20000

    .line 179
    goto :goto_a

    .line 180
    .line 181
    :cond_11
    const/high16 v15, 0x10000

    .line 182
    :goto_a
    or-int/2addr v2, v15

    .line 183
    .line 184
    :goto_b
    and-int/lit8 v15, p11, 0x40

    .line 185
    .line 186
    const/high16 v16, 0x180000

    .line 187
    .line 188
    if-eqz v15, :cond_12

    .line 189
    .line 190
    or-int v2, v2, v16

    .line 191
    goto :goto_d

    .line 192
    .line 193
    :cond_12
    const/high16 v15, 0x380000

    .line 194
    and-int/2addr v15, v10

    .line 195
    .line 196
    if-nez v15, :cond_14

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 200
    move-result v15

    .line 201
    .line 202
    if-eqz v15, :cond_13

    .line 203
    .line 204
    const/high16 v15, 0x100000

    .line 205
    goto :goto_c

    .line 206
    .line 207
    :cond_13
    const/high16 v15, 0x80000

    .line 208
    :goto_c
    or-int/2addr v2, v15

    .line 209
    .line 210
    .line 211
    :cond_14
    :goto_d
    const v15, 0x2db6db

    .line 212
    and-int/2addr v15, v2

    .line 213
    .line 214
    .line 215
    const v4, 0x92492

    .line 216
    .line 217
    if-ne v15, v4, :cond_16

    .line 218
    .line 219
    .line 220
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 221
    move-result v4

    .line 222
    .line 223
    if-nez v4, :cond_15

    .line 224
    goto :goto_e

    .line 225
    .line 226
    .line 227
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 228
    .line 229
    move-object/from16 v2, p1

    .line 230
    move-wide v3, v5

    .line 231
    move-wide v5, v7

    .line 232
    move-object v7, v12

    .line 233
    move-object v8, v14

    .line 234
    .line 235
    goto/16 :goto_16

    .line 236
    .line 237
    .line 238
    :cond_16
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 239
    .line 240
    and-int/lit8 v4, v10, 0x1

    .line 241
    const/4 v15, 0x1

    .line 242
    .line 243
    if-eqz v4, :cond_1a

    .line 244
    .line 245
    .line 246
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 247
    move-result v4

    .line 248
    .line 249
    if-eqz v4, :cond_17

    .line 250
    goto :goto_10

    .line 251
    .line 252
    .line 253
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 254
    .line 255
    and-int/lit8 v3, p11, 0x4

    .line 256
    .line 257
    if-eqz v3, :cond_18

    .line 258
    .line 259
    and-int/lit16 v2, v2, -0x381

    .line 260
    .line 261
    :cond_18
    and-int/lit8 v3, p11, 0x8

    .line 262
    .line 263
    if-eqz v3, :cond_19

    .line 264
    .line 265
    and-int/lit16 v2, v2, -0x1c01

    .line 266
    .line 267
    :cond_19
    move-object/from16 v3, p1

    .line 268
    move v11, v2

    .line 269
    move-wide v4, v5

    .line 270
    move-wide v6, v7

    .line 271
    move-object v8, v12

    .line 272
    :goto_f
    move-object v2, v14

    .line 273
    goto :goto_15

    .line 274
    .line 275
    :cond_1a
    :goto_10
    if-eqz v3, :cond_1b

    .line 276
    .line 277
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 278
    goto :goto_11

    .line 279
    .line 280
    :cond_1b
    move-object/from16 v3, p1

    .line 281
    .line 282
    :goto_11
    and-int/lit8 v4, p11, 0x4

    .line 283
    .line 284
    if-eqz v4, :cond_1c

    .line 285
    .line 286
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 287
    const/4 v5, 0x6

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 291
    move-result-object v4

    .line 292
    .line 293
    .line 294
    invoke-static {v4}, Landroidx/compose/material/ColorsKt;->f(Landroidx/compose/material/Colors;)J

    .line 295
    move-result-wide v4

    .line 296
    .line 297
    and-int/lit16 v2, v2, -0x381

    .line 298
    goto :goto_12

    .line 299
    :cond_1c
    move-wide v4, v5

    .line 300
    .line 301
    :goto_12
    and-int/lit8 v6, p11, 0x8

    .line 302
    .line 303
    if-eqz v6, :cond_1d

    .line 304
    .line 305
    shr-int/lit8 v6, v2, 0x6

    .line 306
    .line 307
    and-int/lit8 v6, v6, 0xe

    .line 308
    .line 309
    .line 310
    invoke-static {v4, v5, v0, v6}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 311
    move-result-wide v6

    .line 312
    .line 313
    and-int/lit16 v2, v2, -0x1c01

    .line 314
    goto :goto_13

    .line 315
    :cond_1d
    move-wide v6, v7

    .line 316
    .line 317
    :goto_13
    if-eqz v11, :cond_1e

    .line 318
    .line 319
    new-instance v8, Landroidx/compose/material/TabRowKt$TabRow$1;

    .line 320
    .line 321
    .line 322
    invoke-direct {v8, v1}, Landroidx/compose/material/TabRowKt$TabRow$1;-><init>(I)V

    .line 323
    .line 324
    .line 325
    const v11, -0x21020db4

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v11, v15, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 329
    move-result-object v8

    .line 330
    goto :goto_14

    .line 331
    :cond_1e
    move-object v8, v12

    .line 332
    .line 333
    :goto_14
    if-eqz v13, :cond_1f

    .line 334
    .line 335
    sget-object v11, Landroidx/compose/material/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$TabRowKt;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v11}, Landroidx/compose/material/ComposableSingletons$TabRowKt;->a()Le8/p;

    .line 339
    move-result-object v11

    .line 340
    .line 341
    move-object/from16 v23, v11

    .line 342
    move v11, v2

    .line 343
    .line 344
    move-object/from16 v2, v23

    .line 345
    goto :goto_15

    .line 346
    :cond_1f
    move v11, v2

    .line 347
    goto :goto_f

    .line 348
    .line 349
    .line 350
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 351
    .line 352
    .line 353
    invoke-static {v3}, Landroidx/compose/foundation/selection/SelectableGroupKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 354
    move-result-object v12

    .line 355
    .line 356
    const/16 v17, 0x0

    .line 357
    .line 358
    const/16 v18, 0x0

    .line 359
    .line 360
    new-instance v14, Landroidx/compose/material/TabRowKt$TabRow$2;

    .line 361
    .line 362
    .line 363
    invoke-direct {v14, v9, v2, v8, v11}, Landroidx/compose/material/TabRowKt$TabRow$2;-><init>(Le8/p;Le8/p;Le8/q;I)V

    .line 364
    .line 365
    .line 366
    const v13, -0x74eddfbd

    .line 367
    .line 368
    .line 369
    invoke-static {v0, v13, v15, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 370
    move-result-object v19

    .line 371
    .line 372
    and-int/lit16 v13, v11, 0x380

    .line 373
    .line 374
    or-int v13, v13, v16

    .line 375
    .line 376
    and-int/lit16 v11, v11, 0x1c00

    .line 377
    .line 378
    or-int v21, v13, v11

    .line 379
    .line 380
    const/16 v22, 0x32

    .line 381
    move-object v11, v12

    .line 382
    const/4 v12, 0x0

    .line 383
    move-wide v13, v4

    .line 384
    move-wide v15, v6

    .line 385
    .line 386
    move-object/from16 v20, v0

    .line 387
    .line 388
    .line 389
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 390
    .line 391
    move-object/from16 v23, v8

    .line 392
    move-object v8, v2

    .line 393
    move-object v2, v3

    .line 394
    move-wide v3, v4

    .line 395
    move-wide v5, v6

    .line 396
    .line 397
    move-object/from16 v7, v23

    .line 398
    .line 399
    .line 400
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 401
    move-result-object v12

    .line 402
    .line 403
    if-nez v12, :cond_20

    .line 404
    goto :goto_17

    .line 405
    .line 406
    :cond_20
    new-instance v13, Landroidx/compose/material/TabRowKt$TabRow$3;

    .line 407
    move-object v0, v13

    .line 408
    .line 409
    move/from16 v1, p0

    .line 410
    .line 411
    move-object/from16 v9, p8

    .line 412
    .line 413
    move/from16 v10, p10

    .line 414
    .line 415
    move/from16 v11, p11

    .line 416
    .line 417
    .line 418
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/TabRowKt$TabRow$3;-><init>(ILandroidx/compose/ui/Modifier;JJLe8/q;Le8/p;Le8/p;II)V

    .line 419
    .line 420
    .line 421
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 422
    :goto_17
    return-void
.end method

.method public static final synthetic c()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowMinimumTabWidth:F

    return v0
.end method

.method public static final synthetic d()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;

    return-object v0
.end method
