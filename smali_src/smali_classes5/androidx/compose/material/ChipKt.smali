.class public final Landroidx/compose/material/ChipKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chip.kt\nandroidx/compose/material/ChipKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,752:1\n25#2:753\n25#2:760\n1057#3,6:754\n1057#3,6:761\n76#4:767\n155#5:768\n155#5:769\n155#5:770\n155#5:771\n155#5:772\n*S KotlinDebug\n*F\n+ 1 Chip.kt\nandroidx/compose/material/ChipKt\n*L\n92#1:753\n189#1:760\n92#1:754,6\n189#1:761,6\n99#1:767\n722#1:768\n727#1:769\n732#1:770\n737#1:771\n752#1:772\n*E\n"
.end annotation


# static fields
.field private static final HorizontalPadding:F

.field private static final LeadingIconEndSpacing:F

.field private static final LeadingIconStartSpacing:F

.field private static final SelectedIconContainerSize:F

.field private static final SelectedOverlayOpacity:F = 0.16f

.field private static final SurfaceOverlayOpacity:F = 0.12f

.field private static final TrailingIconSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0xc

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
    sput v0, Landroidx/compose/material/ChipKt;->HorizontalPadding:F

    .line 10
    const/4 v0, 0x4

    .line 11
    int-to-float v0, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 15
    move-result v0

    .line 16
    .line 17
    sput v0, Landroidx/compose/material/ChipKt;->LeadingIconStartSpacing:F

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    int-to-float v0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 24
    move-result v1

    .line 25
    .line 26
    sput v1, Landroidx/compose/material/ChipKt;->LeadingIconEndSpacing:F

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 30
    move-result v0

    .line 31
    .line 32
    sput v0, Landroidx/compose/material/ChipKt;->TrailingIconSpacing:F

    .line 33
    .line 34
    const/16 v0, 0x18

    .line 35
    int-to-float v0, v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 39
    move-result v0

    .line 40
    .line 41
    sput v0, Landroidx/compose/material/ChipKt;->SelectedIconContainerSize:F

    .line 42
    return-void
.end method

.method public static final a(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Le8/p;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .param p0    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/material/ChipColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
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
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/ChipColors;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
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
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v14, p8

    .line 5
    .line 6
    move/from16 v13, p10

    .line 7
    .line 8
    move/from16 v12, p11

    .line 9
    .line 10
    const-string v0, "onClick"

    .line 11
    .line 12
    .line 13
    invoke-static {v15, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "content"

    .line 16
    .line 17
    .line 18
    invoke-static {v14, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, -0x15f54878

    .line 22
    .line 23
    move-object/from16 v1, p9

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v11

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
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v12, 0x4

    .line 80
    .line 81
    if-eqz v3, :cond_7

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x180

    .line 84
    .line 85
    :cond_6
    move/from16 v4, p2

    .line 86
    goto :goto_5

    .line 87
    .line 88
    :cond_7
    and-int/lit16 v4, v13, 0x380

    .line 89
    .line 90
    if-nez v4, :cond_6

    .line 91
    .line 92
    move/from16 v4, p2

    .line 93
    .line 94
    .line 95
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 96
    move-result v5

    .line 97
    .line 98
    if-eqz v5, :cond_8

    .line 99
    .line 100
    const/16 v5, 0x100

    .line 101
    goto :goto_4

    .line 102
    .line 103
    :cond_8
    const/16 v5, 0x80

    .line 104
    :goto_4
    or-int/2addr v0, v5

    .line 105
    .line 106
    :goto_5
    and-int/lit8 v5, v12, 0x8

    .line 107
    .line 108
    if-eqz v5, :cond_a

    .line 109
    .line 110
    or-int/lit16 v0, v0, 0xc00

    .line 111
    .line 112
    :cond_9
    move-object/from16 v6, p3

    .line 113
    goto :goto_7

    .line 114
    .line 115
    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    .line 116
    .line 117
    if-nez v6, :cond_9

    .line 118
    .line 119
    move-object/from16 v6, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 123
    move-result v7

    .line 124
    .line 125
    if-eqz v7, :cond_b

    .line 126
    .line 127
    const/16 v7, 0x800

    .line 128
    goto :goto_6

    .line 129
    .line 130
    :cond_b
    const/16 v7, 0x400

    .line 131
    :goto_6
    or-int/2addr v0, v7

    .line 132
    .line 133
    .line 134
    :goto_7
    const v7, 0xe000

    .line 135
    and-int/2addr v7, v13

    .line 136
    .line 137
    if-nez v7, :cond_e

    .line 138
    .line 139
    and-int/lit8 v7, v12, 0x10

    .line 140
    .line 141
    if-nez v7, :cond_c

    .line 142
    .line 143
    move-object/from16 v7, p4

    .line 144
    .line 145
    .line 146
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 147
    move-result v8

    .line 148
    .line 149
    if-eqz v8, :cond_d

    .line 150
    .line 151
    const/16 v8, 0x4000

    .line 152
    goto :goto_8

    .line 153
    .line 154
    :cond_c
    move-object/from16 v7, p4

    .line 155
    .line 156
    :cond_d
    const/16 v8, 0x2000

    .line 157
    :goto_8
    or-int/2addr v0, v8

    .line 158
    goto :goto_9

    .line 159
    .line 160
    :cond_e
    move-object/from16 v7, p4

    .line 161
    .line 162
    :goto_9
    and-int/lit8 v8, v12, 0x20

    .line 163
    .line 164
    if-eqz v8, :cond_10

    .line 165
    .line 166
    const/high16 v9, 0x30000

    .line 167
    or-int/2addr v0, v9

    .line 168
    .line 169
    :cond_f
    move-object/from16 v9, p5

    .line 170
    goto :goto_b

    .line 171
    .line 172
    :cond_10
    const/high16 v9, 0x70000

    .line 173
    and-int/2addr v9, v13

    .line 174
    .line 175
    if-nez v9, :cond_f

    .line 176
    .line 177
    move-object/from16 v9, p5

    .line 178
    .line 179
    .line 180
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 181
    move-result v10

    .line 182
    .line 183
    if-eqz v10, :cond_11

    .line 184
    .line 185
    const/high16 v10, 0x20000

    .line 186
    goto :goto_a

    .line 187
    .line 188
    :cond_11
    const/high16 v10, 0x10000

    .line 189
    :goto_a
    or-int/2addr v0, v10

    .line 190
    .line 191
    :goto_b
    const/high16 v10, 0x380000

    .line 192
    .line 193
    and-int v16, v13, v10

    .line 194
    .line 195
    if-nez v16, :cond_13

    .line 196
    .line 197
    and-int/lit8 v16, v12, 0x40

    .line 198
    .line 199
    move-object/from16 v10, p6

    .line 200
    .line 201
    if-nez v16, :cond_12

    .line 202
    .line 203
    .line 204
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 205
    move-result v16

    .line 206
    .line 207
    if-eqz v16, :cond_12

    .line 208
    .line 209
    const/high16 v16, 0x100000

    .line 210
    goto :goto_c

    .line 211
    .line 212
    :cond_12
    const/high16 v16, 0x80000

    .line 213
    .line 214
    :goto_c
    or-int v0, v0, v16

    .line 215
    goto :goto_d

    .line 216
    .line 217
    :cond_13
    move-object/from16 v10, p6

    .line 218
    .line 219
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 220
    .line 221
    if-eqz v2, :cond_14

    .line 222
    .line 223
    const/high16 v16, 0xc00000

    .line 224
    .line 225
    or-int v0, v0, v16

    .line 226
    .line 227
    move-object/from16 v4, p7

    .line 228
    goto :goto_f

    .line 229
    .line 230
    :cond_14
    const/high16 v16, 0x1c00000

    .line 231
    .line 232
    and-int v16, v13, v16

    .line 233
    .line 234
    move-object/from16 v4, p7

    .line 235
    .line 236
    if-nez v16, :cond_16

    .line 237
    .line 238
    .line 239
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 240
    move-result v16

    .line 241
    .line 242
    if-eqz v16, :cond_15

    .line 243
    .line 244
    const/high16 v16, 0x800000

    .line 245
    goto :goto_e

    .line 246
    .line 247
    :cond_15
    const/high16 v16, 0x400000

    .line 248
    .line 249
    :goto_e
    or-int v0, v0, v16

    .line 250
    .line 251
    :cond_16
    :goto_f
    and-int/lit16 v4, v12, 0x100

    .line 252
    .line 253
    const/high16 v32, 0xe000000

    .line 254
    .line 255
    if-eqz v4, :cond_17

    .line 256
    .line 257
    const/high16 v4, 0x6000000

    .line 258
    :goto_10
    or-int/2addr v0, v4

    .line 259
    goto :goto_11

    .line 260
    .line 261
    :cond_17
    and-int v4, v13, v32

    .line 262
    .line 263
    if-nez v4, :cond_19

    .line 264
    .line 265
    .line 266
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 267
    move-result v4

    .line 268
    .line 269
    if-eqz v4, :cond_18

    .line 270
    .line 271
    const/high16 v4, 0x4000000

    .line 272
    goto :goto_10

    .line 273
    .line 274
    :cond_18
    const/high16 v4, 0x2000000

    .line 275
    goto :goto_10

    .line 276
    .line 277
    .line 278
    :cond_19
    :goto_11
    const v4, 0xb6db6db

    .line 279
    and-int/2addr v4, v0

    .line 280
    .line 281
    .line 282
    const v6, 0x2492492

    .line 283
    .line 284
    if-ne v4, v6, :cond_1b

    .line 285
    .line 286
    .line 287
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 288
    move-result v4

    .line 289
    .line 290
    if-nez v4, :cond_1a

    .line 291
    goto :goto_12

    .line 292
    .line 293
    .line 294
    :cond_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 295
    .line 296
    move-object/from16 v2, p1

    .line 297
    .line 298
    move/from16 v3, p2

    .line 299
    .line 300
    move-object/from16 v4, p3

    .line 301
    .line 302
    move-object/from16 v8, p7

    .line 303
    move-object v5, v7

    .line 304
    move-object v6, v9

    .line 305
    move-object v7, v10

    .line 306
    .line 307
    move-object/from16 v26, v11

    .line 308
    .line 309
    goto/16 :goto_1b

    .line 310
    .line 311
    .line 312
    :cond_1b
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->J()V

    .line 313
    .line 314
    and-int/lit8 v4, v13, 0x1

    .line 315
    .line 316
    .line 317
    const v16, -0xe001

    .line 318
    const/4 v6, 0x1

    .line 319
    .line 320
    if-eqz v4, :cond_1f

    .line 321
    .line 322
    .line 323
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->h()Z

    .line 324
    move-result v4

    .line 325
    .line 326
    if-eqz v4, :cond_1c

    .line 327
    goto :goto_13

    .line 328
    .line 329
    .line 330
    :cond_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 331
    .line 332
    and-int/lit8 v1, v12, 0x10

    .line 333
    .line 334
    if-eqz v1, :cond_1d

    .line 335
    .line 336
    and-int v0, v0, v16

    .line 337
    .line 338
    :cond_1d
    and-int/lit8 v1, v12, 0x40

    .line 339
    .line 340
    if-eqz v1, :cond_1e

    .line 341
    .line 342
    .line 343
    const v1, -0x380001

    .line 344
    and-int/2addr v0, v1

    .line 345
    .line 346
    :cond_1e
    move-object/from16 v16, p1

    .line 347
    .line 348
    move-object/from16 v17, p3

    .line 349
    .line 350
    move-object/from16 v20, p7

    .line 351
    .line 352
    move-object/from16 v18, v7

    .line 353
    .line 354
    move-object/from16 v19, v9

    .line 355
    move-object v9, v10

    .line 356
    .line 357
    move/from16 v10, p2

    .line 358
    .line 359
    goto/16 :goto_1a

    .line 360
    .line 361
    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 362
    .line 363
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 364
    goto :goto_14

    .line 365
    .line 366
    :cond_20
    move-object/from16 v1, p1

    .line 367
    .line 368
    :goto_14
    if-eqz v3, :cond_21

    .line 369
    move v3, v6

    .line 370
    goto :goto_15

    .line 371
    .line 372
    :cond_21
    move/from16 v3, p2

    .line 373
    .line 374
    :goto_15
    if-eqz v5, :cond_23

    .line 375
    .line 376
    .line 377
    const v4, -0x1d58f75c

    .line 378
    .line 379
    .line 380
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 384
    move-result-object v4

    .line 385
    .line 386
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 390
    move-result-object v5

    .line 391
    .line 392
    if-ne v4, v5, :cond_22

    .line 393
    .line 394
    .line 395
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 396
    move-result-object v4

    .line 397
    .line 398
    .line 399
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 403
    .line 404
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 405
    goto :goto_16

    .line 406
    .line 407
    :cond_23
    move-object/from16 v4, p3

    .line 408
    .line 409
    :goto_16
    and-int/lit8 v5, v12, 0x10

    .line 410
    .line 411
    if-eqz v5, :cond_24

    .line 412
    .line 413
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 414
    const/4 v7, 0x6

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5, v11, v7}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 418
    move-result-object v5

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5}, Landroidx/compose/material/Shapes;->c()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 422
    move-result-object v5

    .line 423
    .line 424
    const/16 v7, 0x32

    .line 425
    .line 426
    .line 427
    invoke-static {v7}, Landroidx/compose/foundation/shape/CornerSizeKt;->a(I)Landroidx/compose/foundation/shape/CornerSize;

    .line 428
    move-result-object v7

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5, v7}, Landroidx/compose/foundation/shape/CornerBasedShape;->b(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 432
    move-result-object v5

    .line 433
    .line 434
    and-int v0, v0, v16

    .line 435
    goto :goto_17

    .line 436
    :cond_24
    move-object v5, v7

    .line 437
    :goto_17
    const/4 v7, 0x0

    .line 438
    .line 439
    if-eqz v8, :cond_25

    .line 440
    move-object v9, v7

    .line 441
    .line 442
    :cond_25
    and-int/lit8 v8, v12, 0x40

    .line 443
    .line 444
    if-eqz v8, :cond_26

    .line 445
    .line 446
    sget-object v16, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    .line 447
    .line 448
    const-wide/16 v17, 0x0

    .line 449
    .line 450
    const-wide/16 v19, 0x0

    .line 451
    .line 452
    const-wide/16 v21, 0x0

    .line 453
    .line 454
    const-wide/16 v23, 0x0

    .line 455
    .line 456
    const-wide/16 v25, 0x0

    .line 457
    .line 458
    const-wide/16 v27, 0x0

    .line 459
    .line 460
    const/high16 v30, 0x180000

    .line 461
    .line 462
    const/16 v31, 0x3f

    .line 463
    .line 464
    move-object/from16 v29, v11

    .line 465
    .line 466
    .line 467
    invoke-virtual/range {v16 .. v31}, Landroidx/compose/material/ChipDefaults;->a(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ChipColors;

    .line 468
    move-result-object v8

    .line 469
    .line 470
    .line 471
    const v10, -0x380001

    .line 472
    and-int/2addr v0, v10

    .line 473
    goto :goto_18

    .line 474
    :cond_26
    move-object v8, v10

    .line 475
    .line 476
    :goto_18
    if-eqz v2, :cond_27

    .line 477
    .line 478
    move-object/from16 v16, v1

    .line 479
    move v10, v3

    .line 480
    .line 481
    move-object/from16 v17, v4

    .line 482
    .line 483
    move-object/from16 v18, v5

    .line 484
    .line 485
    move-object/from16 v20, v7

    .line 486
    .line 487
    :goto_19
    move-object/from16 v19, v9

    .line 488
    move-object v9, v8

    .line 489
    goto :goto_1a

    .line 490
    .line 491
    :cond_27
    move-object/from16 v20, p7

    .line 492
    .line 493
    move-object/from16 v16, v1

    .line 494
    move v10, v3

    .line 495
    .line 496
    move-object/from16 v17, v4

    .line 497
    .line 498
    move-object/from16 v18, v5

    .line 499
    goto :goto_19

    .line 500
    .line 501
    .line 502
    :goto_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->A()V

    .line 503
    .line 504
    shr-int/lit8 v1, v0, 0x6

    .line 505
    .line 506
    and-int/lit8 v1, v1, 0xe

    .line 507
    .line 508
    shr-int/lit8 v2, v0, 0xf

    .line 509
    .line 510
    and-int/lit8 v2, v2, 0x70

    .line 511
    or-int/2addr v1, v2

    .line 512
    .line 513
    .line 514
    invoke-interface {v9, v10, v11, v1}, Landroidx/compose/material/ChipColors;->b(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 515
    move-result-object v2

    .line 516
    .line 517
    .line 518
    invoke-interface {v9, v10, v11, v1}, Landroidx/compose/material/ChipColors;->a(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 519
    move-result-object v1

    .line 520
    .line 521
    .line 522
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 523
    move-result-object v1

    .line 524
    .line 525
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 529
    move-result-wide v4

    .line 530
    .line 531
    .line 532
    invoke-static {v2}, Landroidx/compose/material/ChipKt;->b(Landroidx/compose/runtime/State;)J

    .line 533
    move-result-wide v21

    .line 534
    .line 535
    const/high16 v23, 0x3f800000    # 1.0f

    .line 536
    .line 537
    const/16 v24, 0x0

    .line 538
    .line 539
    const/16 v25, 0x0

    .line 540
    .line 541
    const/16 v26, 0x0

    .line 542
    .line 543
    const/16 v27, 0xe

    .line 544
    .line 545
    const/16 v28, 0x0

    .line 546
    .line 547
    .line 548
    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 549
    move-result-wide v7

    .line 550
    .line 551
    const/16 v21, 0x0

    .line 552
    .line 553
    new-instance v1, Landroidx/compose/material/ChipKt$Chip$2;

    .line 554
    .line 555
    move-object/from16 p1, v1

    .line 556
    .line 557
    move-object/from16 p2, v2

    .line 558
    .line 559
    move-object/from16 p3, v20

    .line 560
    .line 561
    move-object/from16 p4, v9

    .line 562
    .line 563
    move/from16 p5, v10

    .line 564
    .line 565
    move/from16 p6, v0

    .line 566
    .line 567
    move-object/from16 p7, p8

    .line 568
    .line 569
    .line 570
    invoke-direct/range {p1 .. p7}, Landroidx/compose/material/ChipKt$Chip$2;-><init>(Landroidx/compose/runtime/State;Le8/p;Landroidx/compose/material/ChipColors;ZILe8/q;)V

    .line 571
    .line 572
    .line 573
    const v2, 0x84a244f

    .line 574
    .line 575
    .line 576
    invoke-static {v11, v2, v6, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 577
    move-result-object v22

    .line 578
    .line 579
    and-int/lit8 v1, v0, 0xe

    .line 580
    .line 581
    const/high16 v2, 0x30000000

    .line 582
    or-int/2addr v1, v2

    .line 583
    .line 584
    and-int/lit8 v2, v0, 0x70

    .line 585
    or-int/2addr v1, v2

    .line 586
    .line 587
    and-int/lit16 v2, v0, 0x380

    .line 588
    or-int/2addr v1, v2

    .line 589
    .line 590
    shr-int/lit8 v2, v0, 0x3

    .line 591
    .line 592
    and-int/lit16 v2, v2, 0x1c00

    .line 593
    or-int/2addr v1, v2

    .line 594
    .line 595
    shl-int/lit8 v2, v0, 0x3

    .line 596
    .line 597
    const/high16 v3, 0x380000

    .line 598
    and-int/2addr v2, v3

    .line 599
    or-int/2addr v1, v2

    .line 600
    .line 601
    shl-int/lit8 v0, v0, 0xf

    .line 602
    .line 603
    and-int v0, v0, v32

    .line 604
    .line 605
    or-int v23, v1, v0

    .line 606
    .line 607
    const/16 v24, 0x80

    .line 608
    .line 609
    move-object/from16 v0, p0

    .line 610
    .line 611
    move-object/from16 v1, v16

    .line 612
    move v2, v10

    .line 613
    .line 614
    move-object/from16 v3, v18

    .line 615
    move-wide v6, v7

    .line 616
    .line 617
    move-object/from16 v8, v19

    .line 618
    .line 619
    move-object/from16 v25, v9

    .line 620
    .line 621
    move/from16 v9, v21

    .line 622
    .line 623
    move/from16 v21, v10

    .line 624
    .line 625
    move-object/from16 v10, v17

    .line 626
    .line 627
    move-object/from16 v26, v11

    .line 628
    .line 629
    move-object/from16 v11, v22

    .line 630
    .line 631
    move-object/from16 v12, v26

    .line 632
    .line 633
    move/from16 v13, v23

    .line 634
    .line 635
    move/from16 v14, v24

    .line 636
    .line 637
    .line 638
    invoke-static/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt;->c(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 639
    .line 640
    move-object/from16 v2, v16

    .line 641
    .line 642
    move-object/from16 v4, v17

    .line 643
    .line 644
    move-object/from16 v5, v18

    .line 645
    .line 646
    move-object/from16 v6, v19

    .line 647
    .line 648
    move-object/from16 v8, v20

    .line 649
    .line 650
    move/from16 v3, v21

    .line 651
    .line 652
    move-object/from16 v7, v25

    .line 653
    .line 654
    .line 655
    :goto_1b
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 656
    move-result-object v12

    .line 657
    .line 658
    if-nez v12, :cond_28

    .line 659
    goto :goto_1c

    .line 660
    .line 661
    :cond_28
    new-instance v13, Landroidx/compose/material/ChipKt$Chip$3;

    .line 662
    move-object v0, v13

    .line 663
    .line 664
    move-object/from16 v1, p0

    .line 665
    .line 666
    move-object/from16 v9, p8

    .line 667
    .line 668
    move/from16 v10, p10

    .line 669
    .line 670
    move/from16 v11, p11

    .line 671
    .line 672
    .line 673
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/ChipKt$Chip$3;-><init>(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Le8/p;Le8/q;II)V

    .line 674
    .line 675
    .line 676
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 677
    :goto_1c
    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
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
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final c(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Le8/p;Le8/p;Le8/p;Le8/q;Landroidx/compose/runtime/Composer;III)V
    .locals 44
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/material/SelectableChipColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Le8/q;
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
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/SelectableChipColors;",
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
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
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
            "III)V"
        }
    .end annotation

    move/from16 v15, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p11

    move/from16 v10, p13

    move/from16 v9, p15

    const-string v0, "onClick"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4b0dfe36

    move-object/from16 v1, p12

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v8

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v10, 0xe

    if-nez v0, :cond_2

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v10

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v10, 0x70

    if-nez v3, :cond_5

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v10, 0x380

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v0, v7

    :goto_5
    and-int/lit8 v7, v9, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v13, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v10, 0x1c00

    if-nez v13, :cond_9

    move/from16 v13, p3

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_6

    :cond_b
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v0, v14

    :goto_7
    and-int/lit8 v14, v9, 0x10

    const v38, 0xe000

    if-eqz v14, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v1, p4

    goto :goto_9

    :cond_c
    and-int v16, v10, v38

    move-object/from16 v1, p4

    if-nez v16, :cond_e

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v0, v0, v16

    :cond_e
    :goto_9
    const/high16 v16, 0x70000

    and-int v16, v10, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v9, 0x20

    move-object/from16 v2, p5

    if-nez v16, :cond_f

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v0, v0, v17

    goto :goto_b

    :cond_10
    move-object/from16 v2, p5

    :goto_b
    and-int/lit8 v17, v9, 0x40

    if-eqz v17, :cond_11

    const/high16 v18, 0x180000

    or-int v0, v0, v18

    move-object/from16 v4, p6

    goto :goto_d

    :cond_11
    const/high16 v18, 0x380000

    and-int v18, v10, v18

    move-object/from16 v4, p6

    if-nez v18, :cond_13

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x80000

    :goto_c
    or-int v0, v0, v19

    :cond_13
    :goto_d
    const/high16 v39, 0x1c00000

    and-int v19, v10, v39

    if-nez v19, :cond_16

    and-int/lit16 v5, v9, 0x80

    if-nez v5, :cond_14

    move-object/from16 v5, p7

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v5, p7

    :cond_15
    const/high16 v20, 0x400000

    :goto_e
    or-int v0, v0, v20

    goto :goto_f

    :cond_16
    move-object/from16 v5, p7

    :goto_f
    and-int/lit16 v1, v9, 0x100

    if-eqz v1, :cond_17

    const/high16 v20, 0x6000000

    or-int v0, v0, v20

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    const/high16 v20, 0xe000000

    and-int v20, v10, v20

    move-object/from16 v2, p8

    if-nez v20, :cond_19

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v20, 0x2000000

    :goto_10
    or-int v0, v0, v20

    :cond_19
    :goto_11
    and-int/lit16 v2, v9, 0x200

    const/high16 v40, 0x70000000

    if-eqz v2, :cond_1a

    const/high16 v20, 0x30000000

    or-int v0, v0, v20

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1a
    and-int v20, v10, v40

    move-object/from16 v4, p9

    if-nez v20, :cond_1c

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    const/high16 v20, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v20, 0x10000000

    :goto_12
    or-int v0, v0, v20

    :cond_1c
    :goto_13
    and-int/lit16 v4, v9, 0x400

    if-eqz v4, :cond_1d

    or-int/lit8 v16, p14, 0x6

    move-object/from16 v5, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v20, p14, 0xe

    move-object/from16 v5, p10

    if-nez v20, :cond_1f

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/16 v16, 0x4

    goto :goto_14

    :cond_1e
    const/16 v16, 0x2

    :goto_14
    or-int v16, p14, v16

    goto :goto_15

    :cond_1f
    move/from16 v16, p14

    :goto_15
    and-int/lit16 v5, v9, 0x800

    if-eqz v5, :cond_20

    or-int/lit8 v5, v16, 0x30

    :goto_16
    move/from16 v41, v5

    goto :goto_18

    :cond_20
    and-int/lit8 v5, p14, 0x70

    if-nez v5, :cond_22

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/16 v18, 0x20

    goto :goto_17

    :cond_21
    const/16 v18, 0x10

    :goto_17
    or-int v5, v16, v18

    goto :goto_16

    :cond_22
    move/from16 v41, v16

    :goto_18
    const v5, 0x5b6db6db

    and-int/2addr v5, v0

    const v6, 0x12492492

    if-ne v5, v6, :cond_24

    and-int/lit8 v5, v41, 0x5b

    const/16 v6, 0x12

    if-ne v5, v6, :cond_24

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_19

    .line 2
    :cond_23
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v0, v8

    move v4, v13

    move-object/from16 v8, p7

    goto/16 :goto_24

    .line 3
    :cond_24
    :goto_19
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v5, v10, 0x1

    const v16, -0x70001

    if-eqz v5, :cond_28

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_1a

    .line 4
    :cond_25
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v1, v9, 0x20

    if-eqz v1, :cond_26

    and-int v0, v0, v16

    :cond_26
    and-int/lit16 v1, v9, 0x80

    if-eqz v1, :cond_27

    const v1, -0x1c00001

    and-int/2addr v0, v1

    :cond_27
    move-object/from16 v7, p2

    move-object/from16 v28, p4

    move-object/from16 v29, p5

    move-object/from16 v30, p6

    move-object/from16 v5, p7

    move-object/from16 v31, p8

    move-object/from16 v32, p9

    move-object/from16 v33, p10

    move/from16 v20, v0

    move v6, v13

    goto/16 :goto_23

    :cond_28
    :goto_1a
    if-eqz v3, :cond_29

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_29
    move-object/from16 v3, p2

    :goto_1b
    if-eqz v7, :cond_2a

    const/4 v13, 0x1

    :cond_2a
    if-eqz v14, :cond_2c

    const v5, -0x1d58f75c

    .line 6
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v5

    .line 8
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2b

    .line 9
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v5

    .line 10
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 11
    :cond_2b
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->Q()V

    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_1c

    :cond_2c
    move-object/from16 v5, p4

    :goto_1c
    and-int/lit8 v7, v9, 0x20

    if-eqz v7, :cond_2d

    .line 12
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v14, 0x6

    invoke-virtual {v7, v8, v14}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Shapes;->c()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    const/16 v14, 0x32

    invoke-static {v14}, Landroidx/compose/foundation/shape/CornerSizeKt;->a(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroidx/compose/foundation/shape/CornerBasedShape;->b(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    and-int v0, v0, v16

    goto :goto_1d

    :cond_2d
    move-object/from16 v7, p5

    :goto_1d
    if-eqz v17, :cond_2e

    const/4 v14, 0x0

    goto :goto_1e

    :cond_2e
    move-object/from16 v14, p6

    :goto_1e
    and-int/lit16 v6, v9, 0x80

    if-eqz v6, :cond_2f

    .line 13
    sget-object v16, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/high16 v36, 0x30000000

    const/16 v37, 0x1ff

    move-object/from16 v35, v8

    invoke-virtual/range {v16 .. v37}, Landroidx/compose/material/ChipDefaults;->b(JJJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/SelectableChipColors;

    move-result-object v6

    const v16, -0x1c00001

    and-int v0, v0, v16

    goto :goto_1f

    :cond_2f
    move-object/from16 v6, p7

    :goto_1f
    if-eqz v1, :cond_30

    const/4 v1, 0x0

    goto :goto_20

    :cond_30
    move-object/from16 v1, p8

    :goto_20
    if-eqz v2, :cond_31

    const/4 v2, 0x0

    goto :goto_21

    :cond_31
    move-object/from16 v2, p9

    :goto_21
    if-eqz v4, :cond_32

    move/from16 v20, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v28, v5

    move-object v5, v6

    move-object/from16 v29, v7

    move v6, v13

    move-object/from16 v30, v14

    const/16 v33, 0x0

    :goto_22
    move-object v7, v3

    goto :goto_23

    :cond_32
    move-object/from16 v33, p10

    move/from16 v20, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v28, v5

    move-object v5, v6

    move-object/from16 v29, v7

    move v6, v13

    move-object/from16 v30, v14

    goto :goto_22

    .line 14
    :goto_23
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->A()V

    shr-int/lit8 v0, v20, 0x9

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v22, v20, 0x3

    and-int/lit8 v1, v22, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v20, 0xf

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    .line 15
    invoke-interface {v5, v6, v15, v8, v0}, Landroidx/compose/material/SelectableChipColors;->c(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    sget-object v3, Landroidx/compose/material/ChipKt$FilterChip$2;->INSTANCE:Landroidx/compose/material/ChipKt$FilterChip$2;

    const/4 v4, 0x0

    const/4 v14, 0x1

    invoke-static {v7, v2, v3, v14, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 17
    invoke-interface {v5, v6, v15, v8, v0}, Landroidx/compose/material/SelectableChipColors;->d(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v16

    .line 18
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->v()J

    move-result-wide v2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0xe

    const/16 v23, 0x0

    move-wide/from16 p2, v2

    move/from16 p4, v0

    move/from16 p5, v4

    move/from16 p6, v18

    move/from16 p7, v19

    move/from16 p8, v21

    move-object/from16 p9, v23

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    move-result-wide v18

    const/4 v0, 0x0

    move/from16 v23, v14

    move v14, v0

    const/16 v21, 0x0

    .line 19
    new-instance v4, Landroidx/compose/material/ChipKt$FilterChip$3;

    move-object v0, v4

    move-object/from16 v2, v31

    move/from16 v3, p0

    move-object v14, v4

    move-object/from16 v4, v32

    move-object/from16 v34, v5

    move-object/from16 v5, v33

    move/from16 v35, v6

    move/from16 v11, v23

    move-object/from16 v6, p11

    move-object/from16 v36, v7

    move/from16 v7, v41

    move-object/from16 p3, v13

    move-object v13, v8

    move-object/from16 v8, v34

    move/from16 v9, v35

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/ChipKt$FilterChip$3;-><init>(Landroidx/compose/runtime/State;Le8/p;ZLe8/p;Le8/p;Le8/q;ILandroidx/compose/material/SelectableChipColors;ZI)V

    const v0, 0x2b0ac65f

    invoke-static {v13, v0, v11, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v23

    and-int/lit8 v0, v20, 0xe

    and-int/lit8 v1, v20, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v20, 0x3

    and-int v1, v1, v38

    or-int/2addr v0, v1

    and-int v1, v22, v39

    or-int/2addr v0, v1

    shl-int/lit8 v1, v20, 0xf

    and-int v1, v1, v40

    or-int v25, v0, v1

    const/16 v26, 0x6

    const/16 v27, 0x108

    move/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, v29

    move-object/from16 v20, v30

    move-object/from16 v22, v28

    move-object/from16 v24, v13

    move-object v0, v13

    const/4 v14, 0x0

    move-object/from16 v13, p3

    .line 20
    invoke-static/range {v11 .. v27}, Landroidx/compose/material/SurfaceKt;->d(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    move/from16 v4, v35

    move-object/from16 v3, v36

    .line 21
    :goto_24
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_33

    goto :goto_25

    :cond_33
    new-instance v14, Landroidx/compose/material/ChipKt$FilterChip$4;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v42, v14

    move/from16 v14, p14

    move-object/from16 v43, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/ChipKt$FilterChip$4;-><init>(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Le8/p;Le8/p;Le8/p;Le8/q;III)V

    move-object/from16 v1, v42

    move-object/from16 v0, v43

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_25
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ChipKt;->b(Landroidx/compose/runtime/State;)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic e()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->HorizontalPadding:F

    return v0
.end method

.method public static final synthetic f()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->LeadingIconEndSpacing:F

    return v0
.end method

.method public static final synthetic g()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->LeadingIconStartSpacing:F

    return v0
.end method

.method public static final synthetic h()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->SelectedIconContainerSize:F

    return v0
.end method

.method public static final synthetic i()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->TrailingIconSpacing:F

    return v0
.end method
