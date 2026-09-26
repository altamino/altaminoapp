.class public final Landroidx/compose/material/DrawerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,690:1\n473#2,4:691\n477#2,2:699\n481#2:705\n473#2,4:706\n477#2,2:714\n481#2:720\n25#3:695\n25#3:710\n36#3:722\n50#3:729\n49#3:730\n50#3:737\n49#3:738\n36#3:745\n50#3:752\n49#3:753\n50#3:760\n49#3:761\n1057#4,3:696\n1060#4,3:702\n1057#4,3:711\n1060#4,3:717\n1057#4,6:723\n1057#4,6:731\n1057#4,6:739\n1057#4,6:746\n1057#4,6:754\n1057#4,6:762\n473#5:701\n473#5:716\n654#6:721\n76#7:768\n155#8:769\n155#8:770\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt\n*L\n386#1:691,4\n386#1:699,2\n386#1:705\n509#1:706,4\n509#1:714,2\n509#1:720\n386#1:695\n509#1:710\n633#1:722\n636#1:729\n636#1:730\n648#1:737\n648#1:738\n664#1:745\n665#1:752\n665#1:753\n677#1:760\n677#1:761\n386#1:696,3\n386#1:702,3\n509#1:711,3\n509#1:717,3\n633#1:723,6\n636#1:731,6\n648#1:739,6\n664#1:746,6\n665#1:754,6\n677#1:762,6\n386#1:701\n509#1:716\n625#1:721\n626#1:768\n682#1:769\n683#1:770\n*E\n"
.end annotation


# static fields
.field private static final AnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomDrawerOpenFraction:F = 0.5f

.field private static final DrawerVelocityThreshold:F

.field private static final EndDrawerPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    const/16 v0, 0x38

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
    sput v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    .line 10
    .line 11
    const/16 v0, 0x190

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    sput v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    .line 19
    .line 20
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 21
    .line 22
    const/16 v2, 0x100

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x6

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v1, v0

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V

    .line 31
    .line 32
    sput-object v0, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 33
    return-void
.end method

.method public static final a(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 35
    .param p0    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/BottomDrawerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/BottomDrawerState;",
            "Z",
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
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v14, p12

    .line 5
    .line 6
    move/from16 v13, p14

    .line 7
    .line 8
    move/from16 v12, p15

    .line 9
    .line 10
    const-string v0, "drawerContent"

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
    const v0, 0x254aa686

    .line 22
    .line 23
    move-object/from16 v1, p13

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
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v12, 0x2

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
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v4, v13, 0x380

    .line 80
    .line 81
    if-nez v4, :cond_8

    .line 82
    .line 83
    and-int/lit8 v4, v12, 0x4

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    move-object/from16 v4, p2

    .line 88
    .line 89
    .line 90
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 91
    move-result v5

    .line 92
    .line 93
    if-eqz v5, :cond_7

    .line 94
    .line 95
    const/16 v5, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_6
    move-object/from16 v4, p2

    .line 99
    .line 100
    :cond_7
    const/16 v5, 0x80

    .line 101
    :goto_4
    or-int/2addr v0, v5

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :cond_8
    move-object/from16 v4, p2

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
    move/from16 v6, p3

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
    move/from16 v6, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    move/from16 v9, p5

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
    move/from16 v9, p5

    .line 178
    .line 179
    .line 180
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 181
    move-result v11

    .line 182
    .line 183
    if-eqz v11, :cond_11

    .line 184
    .line 185
    const/high16 v11, 0x20000

    .line 186
    goto :goto_a

    .line 187
    .line 188
    :cond_11
    const/high16 v11, 0x10000

    .line 189
    :goto_a
    or-int/2addr v0, v11

    .line 190
    .line 191
    :goto_b
    const/high16 v11, 0x380000

    .line 192
    and-int/2addr v11, v13

    .line 193
    .line 194
    if-nez v11, :cond_14

    .line 195
    .line 196
    and-int/lit8 v11, v12, 0x40

    .line 197
    .line 198
    if-nez v11, :cond_12

    .line 199
    move v11, v2

    .line 200
    .line 201
    move-wide/from16 v1, p6

    .line 202
    .line 203
    .line 204
    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 205
    move-result v16

    .line 206
    .line 207
    if-eqz v16, :cond_13

    .line 208
    .line 209
    const/high16 v16, 0x100000

    .line 210
    goto :goto_c

    .line 211
    :cond_12
    move v11, v2

    .line 212
    .line 213
    move-wide/from16 v1, p6

    .line 214
    .line 215
    :cond_13
    const/high16 v16, 0x80000

    .line 216
    .line 217
    :goto_c
    or-int v0, v0, v16

    .line 218
    goto :goto_d

    .line 219
    :cond_14
    move v11, v2

    .line 220
    .line 221
    move-wide/from16 v1, p6

    .line 222
    .line 223
    :goto_d
    const/high16 v16, 0x1c00000

    .line 224
    .line 225
    and-int v16, v13, v16

    .line 226
    .line 227
    if-nez v16, :cond_17

    .line 228
    .line 229
    and-int/lit16 v1, v12, 0x80

    .line 230
    .line 231
    if-nez v1, :cond_15

    .line 232
    .line 233
    move-wide/from16 v1, p8

    .line 234
    .line 235
    .line 236
    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 237
    move-result v16

    .line 238
    .line 239
    if-eqz v16, :cond_16

    .line 240
    .line 241
    const/high16 v16, 0x800000

    .line 242
    goto :goto_e

    .line 243
    .line 244
    :cond_15
    move-wide/from16 v1, p8

    .line 245
    .line 246
    :cond_16
    const/high16 v16, 0x400000

    .line 247
    .line 248
    :goto_e
    or-int v0, v0, v16

    .line 249
    goto :goto_f

    .line 250
    .line 251
    :cond_17
    move-wide/from16 v1, p8

    .line 252
    .line 253
    :goto_f
    const/high16 v16, 0xe000000

    .line 254
    .line 255
    and-int v16, v13, v16

    .line 256
    .line 257
    if-nez v16, :cond_1a

    .line 258
    .line 259
    and-int/lit16 v1, v12, 0x100

    .line 260
    .line 261
    if-nez v1, :cond_18

    .line 262
    .line 263
    move-wide/from16 v1, p10

    .line 264
    .line 265
    .line 266
    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 267
    move-result v16

    .line 268
    .line 269
    if-eqz v16, :cond_19

    .line 270
    .line 271
    const/high16 v16, 0x4000000

    .line 272
    goto :goto_10

    .line 273
    .line 274
    :cond_18
    move-wide/from16 v1, p10

    .line 275
    .line 276
    :cond_19
    const/high16 v16, 0x2000000

    .line 277
    .line 278
    :goto_10
    or-int v0, v0, v16

    .line 279
    goto :goto_11

    .line 280
    .line 281
    :cond_1a
    move-wide/from16 v1, p10

    .line 282
    .line 283
    :goto_11
    and-int/lit16 v1, v12, 0x200

    .line 284
    .line 285
    if-eqz v1, :cond_1b

    .line 286
    .line 287
    const/high16 v1, 0x30000000

    .line 288
    :goto_12
    or-int/2addr v0, v1

    .line 289
    goto :goto_13

    .line 290
    .line 291
    :cond_1b
    const/high16 v1, 0x70000000

    .line 292
    and-int/2addr v1, v13

    .line 293
    .line 294
    if-nez v1, :cond_1d

    .line 295
    .line 296
    .line 297
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 298
    move-result v1

    .line 299
    .line 300
    if-eqz v1, :cond_1c

    .line 301
    .line 302
    const/high16 v1, 0x20000000

    .line 303
    goto :goto_12

    .line 304
    .line 305
    :cond_1c
    const/high16 v1, 0x10000000

    .line 306
    goto :goto_12

    .line 307
    .line 308
    .line 309
    :cond_1d
    :goto_13
    const v1, 0x5b6db6db

    .line 310
    and-int/2addr v1, v0

    .line 311
    .line 312
    .line 313
    const v2, 0x12492492

    .line 314
    .line 315
    if-ne v1, v2, :cond_1f

    .line 316
    .line 317
    .line 318
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->b()Z

    .line 319
    move-result v1

    .line 320
    .line 321
    if-nez v1, :cond_1e

    .line 322
    goto :goto_14

    .line 323
    .line 324
    .line 325
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 326
    .line 327
    move-wide/from16 v11, p10

    .line 328
    move-object v2, v3

    .line 329
    move-object v3, v4

    .line 330
    move v4, v6

    .line 331
    move-object v5, v7

    .line 332
    move v6, v9

    .line 333
    move-object v1, v10

    .line 334
    .line 335
    move-wide/from16 v7, p6

    .line 336
    .line 337
    move-wide/from16 v9, p8

    .line 338
    .line 339
    goto/16 :goto_1e

    .line 340
    .line 341
    .line 342
    :cond_1f
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->J()V

    .line 343
    .line 344
    and-int/lit8 v1, v13, 0x1

    .line 345
    .line 346
    .line 347
    const v16, -0xe000001

    .line 348
    .line 349
    .line 350
    const v17, -0x1c00001

    .line 351
    .line 352
    .line 353
    const v18, -0x380001

    .line 354
    .line 355
    .line 356
    const v19, -0xe001

    .line 357
    .line 358
    if-eqz v1, :cond_26

    .line 359
    .line 360
    .line 361
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->h()Z

    .line 362
    move-result v1

    .line 363
    .line 364
    if-eqz v1, :cond_20

    .line 365
    goto :goto_16

    .line 366
    .line 367
    .line 368
    :cond_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 369
    .line 370
    and-int/lit8 v1, v12, 0x4

    .line 371
    .line 372
    if-eqz v1, :cond_21

    .line 373
    .line 374
    and-int/lit16 v0, v0, -0x381

    .line 375
    .line 376
    :cond_21
    and-int/lit8 v1, v12, 0x10

    .line 377
    .line 378
    if-eqz v1, :cond_22

    .line 379
    .line 380
    and-int v0, v0, v19

    .line 381
    .line 382
    :cond_22
    and-int/lit8 v1, v12, 0x40

    .line 383
    .line 384
    if-eqz v1, :cond_23

    .line 385
    .line 386
    and-int v0, v0, v18

    .line 387
    .line 388
    :cond_23
    and-int/lit16 v1, v12, 0x80

    .line 389
    .line 390
    if-eqz v1, :cond_24

    .line 391
    .line 392
    and-int v0, v0, v17

    .line 393
    .line 394
    :cond_24
    and-int/lit16 v1, v12, 0x100

    .line 395
    .line 396
    if-eqz v1, :cond_25

    .line 397
    .line 398
    and-int v0, v0, v16

    .line 399
    .line 400
    :cond_25
    move-wide/from16 v21, p6

    .line 401
    .line 402
    move-wide/from16 v23, p8

    .line 403
    .line 404
    move-wide/from16 v25, p10

    .line 405
    move-object v11, v3

    .line 406
    .line 407
    move-object/from16 v16, v4

    .line 408
    .line 409
    move/from16 v17, v6

    .line 410
    .line 411
    move-object/from16 v18, v7

    .line 412
    .line 413
    move/from16 v19, v9

    .line 414
    :goto_15
    move v4, v0

    .line 415
    .line 416
    goto/16 :goto_1d

    .line 417
    .line 418
    :cond_26
    :goto_16
    if-eqz v11, :cond_27

    .line 419
    .line 420
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 421
    goto :goto_17

    .line 422
    :cond_27
    move-object v1, v3

    .line 423
    .line 424
    :goto_17
    and-int/lit8 v3, v12, 0x4

    .line 425
    const/4 v11, 0x6

    .line 426
    .line 427
    if-eqz v3, :cond_28

    .line 428
    .line 429
    sget-object v3, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 430
    const/4 v2, 0x0

    .line 431
    const/4 v4, 0x2

    .line 432
    .line 433
    .line 434
    invoke-static {v3, v2, v10, v11, v4}, Landroidx/compose/material/DrawerKt;->n(Landroidx/compose/material/BottomDrawerValue;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;

    .line 435
    move-result-object v3

    .line 436
    .line 437
    and-int/lit16 v0, v0, -0x381

    .line 438
    goto :goto_18

    .line 439
    :cond_28
    move-object v3, v4

    .line 440
    .line 441
    :goto_18
    if-eqz v5, :cond_29

    .line 442
    const/4 v6, 0x1

    .line 443
    .line 444
    :cond_29
    and-int/lit8 v2, v12, 0x10

    .line 445
    .line 446
    if-eqz v2, :cond_2a

    .line 447
    .line 448
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v10, v11}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 452
    move-result-object v2

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->a()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 456
    move-result-object v2

    .line 457
    .line 458
    and-int v0, v0, v19

    .line 459
    goto :goto_19

    .line 460
    :cond_2a
    move-object v2, v7

    .line 461
    .line 462
    :goto_19
    if-eqz v8, :cond_2b

    .line 463
    .line 464
    sget-object v4, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4}, Landroidx/compose/material/DrawerDefaults;->a()F

    .line 468
    move-result v4

    .line 469
    goto :goto_1a

    .line 470
    :cond_2b
    move v4, v9

    .line 471
    .line 472
    :goto_1a
    and-int/lit8 v5, v12, 0x40

    .line 473
    .line 474
    if-eqz v5, :cond_2c

    .line 475
    .line 476
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v10, v11}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 480
    move-result-object v5

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->n()J

    .line 484
    move-result-wide v7

    .line 485
    .line 486
    and-int v0, v0, v18

    .line 487
    goto :goto_1b

    .line 488
    .line 489
    :cond_2c
    move-wide/from16 v7, p6

    .line 490
    .line 491
    :goto_1b
    and-int/lit16 v5, v12, 0x80

    .line 492
    .line 493
    if-eqz v5, :cond_2d

    .line 494
    .line 495
    shr-int/lit8 v5, v0, 0x12

    .line 496
    .line 497
    and-int/lit8 v5, v5, 0xe

    .line 498
    .line 499
    .line 500
    invoke-static {v7, v8, v10, v5}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 501
    move-result-wide v18

    .line 502
    .line 503
    and-int v0, v0, v17

    .line 504
    goto :goto_1c

    .line 505
    .line 506
    :cond_2d
    move-wide/from16 v18, p8

    .line 507
    .line 508
    :goto_1c
    and-int/lit16 v5, v12, 0x100

    .line 509
    .line 510
    if-eqz v5, :cond_2e

    .line 511
    .line 512
    sget-object v5, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v5, v10, v11}, Landroidx/compose/material/DrawerDefaults;->b(Landroidx/compose/runtime/Composer;I)J

    .line 516
    move-result-wide v21

    .line 517
    .line 518
    and-int v0, v0, v16

    .line 519
    move-object v11, v1

    .line 520
    .line 521
    move-object/from16 v16, v3

    .line 522
    .line 523
    move/from16 v17, v6

    .line 524
    .line 525
    move-wide/from16 v23, v18

    .line 526
    .line 527
    move-wide/from16 v25, v21

    .line 528
    .line 529
    move-object/from16 v18, v2

    .line 530
    .line 531
    move/from16 v19, v4

    .line 532
    .line 533
    move-wide/from16 v21, v7

    .line 534
    goto :goto_15

    .line 535
    .line 536
    :cond_2e
    move-wide/from16 v25, p10

    .line 537
    move-object v11, v1

    .line 538
    .line 539
    move-object/from16 v16, v3

    .line 540
    .line 541
    move/from16 v17, v6

    .line 542
    .line 543
    move-wide/from16 v21, v7

    .line 544
    .line 545
    move-wide/from16 v23, v18

    .line 546
    .line 547
    move-object/from16 v18, v2

    .line 548
    .line 549
    move/from16 v19, v4

    .line 550
    .line 551
    goto/16 :goto_15

    .line 552
    .line 553
    .line 554
    :goto_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->A()V

    .line 555
    .line 556
    .line 557
    const v0, 0x2e20b340

    .line 558
    .line 559
    .line 560
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 561
    .line 562
    .line 563
    const v0, -0x1d58f75c

    .line 564
    .line 565
    .line 566
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 567
    .line 568
    .line 569
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 570
    move-result-object v0

    .line 571
    .line 572
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 576
    move-result-object v1

    .line 577
    .line 578
    if-ne v0, v1, :cond_2f

    .line 579
    .line 580
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 581
    .line 582
    .line 583
    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 584
    move-result-object v0

    .line 585
    .line 586
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 587
    .line 588
    .line 589
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 590
    .line 591
    .line 592
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 593
    move-object v0, v1

    .line 594
    .line 595
    .line 596
    :cond_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 597
    .line 598
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 602
    move-result-object v27

    .line 603
    .line 604
    .line 605
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 606
    const/4 v0, 0x0

    .line 607
    const/4 v1, 0x0

    .line 608
    const/4 v2, 0x1

    .line 609
    .line 610
    .line 611
    invoke-static {v11, v0, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 612
    move-result-object v20

    .line 613
    .line 614
    const/16 v28, 0x0

    .line 615
    .line 616
    const/16 v29, 0x0

    .line 617
    .line 618
    new-instance v8, Landroidx/compose/material/DrawerKt$BottomDrawer$1;

    .line 619
    move-object v0, v8

    .line 620
    .line 621
    move/from16 v1, v17

    .line 622
    move v9, v2

    .line 623
    .line 624
    move-object/from16 v2, v16

    .line 625
    .line 626
    move-object/from16 v3, p12

    .line 627
    .line 628
    move-wide/from16 v5, v25

    .line 629
    .line 630
    move-object/from16 v7, v18

    .line 631
    .line 632
    move-object/from16 v30, v8

    .line 633
    move v15, v9

    .line 634
    .line 635
    move-wide/from16 v8, v21

    .line 636
    .line 637
    move-object/from16 v31, v10

    .line 638
    .line 639
    move-object/from16 v32, v11

    .line 640
    .line 641
    move-wide/from16 v10, v23

    .line 642
    .line 643
    move/from16 v12, v19

    .line 644
    .line 645
    move-object/from16 v13, v27

    .line 646
    .line 647
    move-object/from16 v14, p0

    .line 648
    .line 649
    .line 650
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;-><init>(ZLandroidx/compose/material/BottomDrawerState;Le8/p;IJLandroidx/compose/ui/graphics/Shape;JJFLkotlinx/coroutines/o0;Le8/q;)V

    .line 651
    .line 652
    .line 653
    const v0, 0x48b94970    # 379467.5f

    .line 654
    .line 655
    move-object/from16 v2, v30

    .line 656
    .line 657
    move-object/from16 v1, v31

    .line 658
    .line 659
    .line 660
    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 661
    move-result-object v0

    .line 662
    .line 663
    const/16 v2, 0xc00

    .line 664
    const/4 v3, 0x6

    .line 665
    .line 666
    move-object/from16 p1, v20

    .line 667
    .line 668
    move-object/from16 p2, v28

    .line 669
    .line 670
    move/from16 p3, v29

    .line 671
    .line 672
    move-object/from16 p4, v0

    .line 673
    .line 674
    move-object/from16 p5, v1

    .line 675
    .line 676
    move/from16 p6, v2

    .line 677
    .line 678
    move/from16 p7, v3

    .line 679
    .line 680
    .line 681
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;Landroidx/compose/runtime/Composer;II)V

    .line 682
    .line 683
    move-object/from16 v3, v16

    .line 684
    .line 685
    move/from16 v4, v17

    .line 686
    .line 687
    move-object/from16 v5, v18

    .line 688
    .line 689
    move/from16 v6, v19

    .line 690
    .line 691
    move-wide/from16 v7, v21

    .line 692
    .line 693
    move-wide/from16 v9, v23

    .line 694
    .line 695
    move-wide/from16 v11, v25

    .line 696
    .line 697
    move-object/from16 v2, v32

    .line 698
    .line 699
    .line 700
    :goto_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 701
    move-result-object v15

    .line 702
    .line 703
    if-nez v15, :cond_30

    .line 704
    goto :goto_1f

    .line 705
    .line 706
    :cond_30
    new-instance v14, Landroidx/compose/material/DrawerKt$BottomDrawer$2;

    .line 707
    move-object v0, v14

    .line 708
    .line 709
    move-object/from16 v1, p0

    .line 710
    .line 711
    move-object/from16 v13, p12

    .line 712
    .line 713
    move-object/from16 v33, v14

    .line 714
    .line 715
    move/from16 v14, p14

    .line 716
    .line 717
    move-object/from16 v34, v15

    .line 718
    .line 719
    move/from16 v15, p15

    .line 720
    .line 721
    .line 722
    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$BottomDrawer$2;-><init>(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;II)V

    .line 723
    .line 724
    move-object/from16 v1, v33

    .line 725
    .line 726
    move-object/from16 v0, v34

    .line 727
    .line 728
    .line 729
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 730
    :goto_1f
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
    const v0, -0x1e94c902

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
    invoke-virtual {v2}, Landroidx/compose/material/Strings$Companion;->a()I

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
    const v3, -0x4d6c6521

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
    new-instance v8, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;

    .line 164
    .line 165
    .line 166
    invoke-direct {v8, p2, v5}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;-><init>(Le8/a;Lkotlin/coroutines/d;)V

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
    new-instance v8, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;

    .line 207
    .line 208
    .line 209
    invoke-direct {v8, v2, p2}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;-><init>(Ljava/lang/String;Le8/a;)V

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
    new-instance v3, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;

    .line 270
    .line 271
    .line 272
    invoke-direct {v3, p0, p1, v1}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

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
    new-instance v6, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;

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
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;-><init>(JLe8/a;ZI)V

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

.method public static final d(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 35
    .param p0    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/DrawerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/DrawerState;",
            "Z",
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
    move-object/from16 v15, p0

    .line 3
    .line 4
    move-object/from16 v14, p12

    .line 5
    .line 6
    move/from16 v13, p14

    .line 7
    .line 8
    move/from16 v12, p15

    .line 9
    .line 10
    const-string v0, "drawerContent"

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
    const v0, 0x4dd50861    # 4.46762016E8f

    .line 22
    .line 23
    move-object/from16 v1, p13

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
    and-int/lit8 v2, v12, 0x2

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
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v4, v13, 0x380

    .line 80
    .line 81
    if-nez v4, :cond_8

    .line 82
    .line 83
    and-int/lit8 v4, v12, 0x4

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    move-object/from16 v4, p2

    .line 88
    .line 89
    .line 90
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 91
    move-result v5

    .line 92
    .line 93
    if-eqz v5, :cond_7

    .line 94
    .line 95
    const/16 v5, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_6
    move-object/from16 v4, p2

    .line 99
    .line 100
    :cond_7
    const/16 v5, 0x80

    .line 101
    :goto_4
    or-int/2addr v0, v5

    .line 102
    goto :goto_5

    .line 103
    .line 104
    :cond_8
    move-object/from16 v4, p2

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
    move/from16 v6, p3

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
    move/from16 v6, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    move/from16 v9, p5

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
    move/from16 v9, p5

    .line 178
    .line 179
    .line 180
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->n(F)Z

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
    and-int/2addr v10, v13

    .line 193
    .line 194
    if-nez v10, :cond_14

    .line 195
    .line 196
    and-int/lit8 v10, v12, 0x40

    .line 197
    .line 198
    if-nez v10, :cond_12

    .line 199
    move v10, v2

    .line 200
    .line 201
    move-wide/from16 v1, p6

    .line 202
    .line 203
    .line 204
    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 205
    move-result v16

    .line 206
    .line 207
    if-eqz v16, :cond_13

    .line 208
    .line 209
    const/high16 v16, 0x100000

    .line 210
    goto :goto_c

    .line 211
    :cond_12
    move v10, v2

    .line 212
    .line 213
    move-wide/from16 v1, p6

    .line 214
    .line 215
    :cond_13
    const/high16 v16, 0x80000

    .line 216
    .line 217
    :goto_c
    or-int v0, v0, v16

    .line 218
    goto :goto_d

    .line 219
    :cond_14
    move v10, v2

    .line 220
    .line 221
    move-wide/from16 v1, p6

    .line 222
    .line 223
    :goto_d
    const/high16 v16, 0x1c00000

    .line 224
    .line 225
    and-int v16, v13, v16

    .line 226
    .line 227
    if-nez v16, :cond_17

    .line 228
    .line 229
    and-int/lit16 v1, v12, 0x80

    .line 230
    .line 231
    if-nez v1, :cond_15

    .line 232
    .line 233
    move-wide/from16 v1, p8

    .line 234
    .line 235
    .line 236
    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 237
    move-result v16

    .line 238
    .line 239
    if-eqz v16, :cond_16

    .line 240
    .line 241
    const/high16 v16, 0x800000

    .line 242
    goto :goto_e

    .line 243
    .line 244
    :cond_15
    move-wide/from16 v1, p8

    .line 245
    .line 246
    :cond_16
    const/high16 v16, 0x400000

    .line 247
    .line 248
    :goto_e
    or-int v0, v0, v16

    .line 249
    goto :goto_f

    .line 250
    .line 251
    :cond_17
    move-wide/from16 v1, p8

    .line 252
    .line 253
    :goto_f
    const/high16 v16, 0xe000000

    .line 254
    .line 255
    and-int v16, v13, v16

    .line 256
    .line 257
    if-nez v16, :cond_1a

    .line 258
    .line 259
    and-int/lit16 v1, v12, 0x100

    .line 260
    .line 261
    if-nez v1, :cond_18

    .line 262
    .line 263
    move-wide/from16 v1, p10

    .line 264
    .line 265
    .line 266
    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 267
    move-result v16

    .line 268
    .line 269
    if-eqz v16, :cond_19

    .line 270
    .line 271
    const/high16 v16, 0x4000000

    .line 272
    goto :goto_10

    .line 273
    .line 274
    :cond_18
    move-wide/from16 v1, p10

    .line 275
    .line 276
    :cond_19
    const/high16 v16, 0x2000000

    .line 277
    .line 278
    :goto_10
    or-int v0, v0, v16

    .line 279
    goto :goto_11

    .line 280
    .line 281
    :cond_1a
    move-wide/from16 v1, p10

    .line 282
    .line 283
    :goto_11
    and-int/lit16 v1, v12, 0x200

    .line 284
    .line 285
    if-eqz v1, :cond_1b

    .line 286
    .line 287
    const/high16 v1, 0x30000000

    .line 288
    :goto_12
    or-int/2addr v0, v1

    .line 289
    goto :goto_13

    .line 290
    .line 291
    :cond_1b
    const/high16 v1, 0x70000000

    .line 292
    and-int/2addr v1, v13

    .line 293
    .line 294
    if-nez v1, :cond_1d

    .line 295
    .line 296
    .line 297
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 298
    move-result v1

    .line 299
    .line 300
    if-eqz v1, :cond_1c

    .line 301
    .line 302
    const/high16 v1, 0x20000000

    .line 303
    goto :goto_12

    .line 304
    .line 305
    :cond_1c
    const/high16 v1, 0x10000000

    .line 306
    goto :goto_12

    .line 307
    .line 308
    .line 309
    :cond_1d
    :goto_13
    const v1, 0x5b6db6db

    .line 310
    and-int/2addr v1, v0

    .line 311
    .line 312
    .line 313
    const v2, 0x12492492

    .line 314
    .line 315
    if-ne v1, v2, :cond_1f

    .line 316
    .line 317
    .line 318
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 319
    move-result v1

    .line 320
    .line 321
    if-nez v1, :cond_1e

    .line 322
    goto :goto_14

    .line 323
    .line 324
    .line 325
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 326
    move-object v2, v3

    .line 327
    move-object v3, v4

    .line 328
    move v4, v6

    .line 329
    move-object v5, v7

    .line 330
    move v6, v9

    .line 331
    move-object v1, v11

    .line 332
    .line 333
    move-wide/from16 v7, p6

    .line 334
    .line 335
    move-wide/from16 v9, p8

    .line 336
    .line 337
    move-wide/from16 v11, p10

    .line 338
    .line 339
    goto/16 :goto_1e

    .line 340
    .line 341
    .line 342
    :cond_1f
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->J()V

    .line 343
    .line 344
    and-int/lit8 v1, v13, 0x1

    .line 345
    .line 346
    .line 347
    const v16, -0xe000001

    .line 348
    .line 349
    .line 350
    const v17, -0x1c00001

    .line 351
    .line 352
    .line 353
    const v18, -0x380001

    .line 354
    .line 355
    .line 356
    const v19, -0xe001

    .line 357
    .line 358
    if-eqz v1, :cond_26

    .line 359
    .line 360
    .line 361
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->h()Z

    .line 362
    move-result v1

    .line 363
    .line 364
    if-eqz v1, :cond_20

    .line 365
    goto :goto_15

    .line 366
    .line 367
    .line 368
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 369
    .line 370
    and-int/lit8 v1, v12, 0x4

    .line 371
    .line 372
    if-eqz v1, :cond_21

    .line 373
    .line 374
    and-int/lit16 v0, v0, -0x381

    .line 375
    .line 376
    :cond_21
    and-int/lit8 v1, v12, 0x10

    .line 377
    .line 378
    if-eqz v1, :cond_22

    .line 379
    .line 380
    and-int v0, v0, v19

    .line 381
    .line 382
    :cond_22
    and-int/lit8 v1, v12, 0x40

    .line 383
    .line 384
    if-eqz v1, :cond_23

    .line 385
    .line 386
    and-int v0, v0, v18

    .line 387
    .line 388
    :cond_23
    and-int/lit16 v1, v12, 0x80

    .line 389
    .line 390
    if-eqz v1, :cond_24

    .line 391
    .line 392
    and-int v0, v0, v17

    .line 393
    .line 394
    :cond_24
    and-int/lit16 v1, v12, 0x100

    .line 395
    .line 396
    if-eqz v1, :cond_25

    .line 397
    .line 398
    and-int v0, v0, v16

    .line 399
    .line 400
    :cond_25
    move-wide/from16 v21, p6

    .line 401
    .line 402
    move-wide/from16 v23, p8

    .line 403
    .line 404
    move-wide/from16 v25, p10

    .line 405
    .line 406
    move-object/from16 v16, v4

    .line 407
    .line 408
    move/from16 v17, v6

    .line 409
    .line 410
    move-object/from16 v18, v7

    .line 411
    .line 412
    move/from16 v19, v9

    .line 413
    move-object v9, v3

    .line 414
    move v3, v0

    .line 415
    .line 416
    goto/16 :goto_1d

    .line 417
    .line 418
    :cond_26
    :goto_15
    if-eqz v10, :cond_27

    .line 419
    .line 420
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 421
    goto :goto_16

    .line 422
    :cond_27
    move-object v1, v3

    .line 423
    .line 424
    :goto_16
    and-int/lit8 v3, v12, 0x4

    .line 425
    const/4 v10, 0x6

    .line 426
    .line 427
    if-eqz v3, :cond_28

    .line 428
    .line 429
    sget-object v3, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    .line 430
    const/4 v2, 0x0

    .line 431
    const/4 v4, 0x2

    .line 432
    .line 433
    .line 434
    invoke-static {v3, v2, v11, v10, v4}, Landroidx/compose/material/DrawerKt;->o(Landroidx/compose/material/DrawerValue;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    .line 435
    move-result-object v3

    .line 436
    .line 437
    and-int/lit16 v0, v0, -0x381

    .line 438
    goto :goto_17

    .line 439
    :cond_28
    move-object v3, v4

    .line 440
    .line 441
    :goto_17
    if-eqz v5, :cond_29

    .line 442
    const/4 v6, 0x1

    .line 443
    .line 444
    :cond_29
    and-int/lit8 v2, v12, 0x10

    .line 445
    .line 446
    if-eqz v2, :cond_2a

    .line 447
    .line 448
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v2, v11, v10}, Landroidx/compose/material/MaterialTheme;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 452
    move-result-object v2

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->a()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 456
    move-result-object v2

    .line 457
    .line 458
    and-int v0, v0, v19

    .line 459
    goto :goto_18

    .line 460
    :cond_2a
    move-object v2, v7

    .line 461
    .line 462
    :goto_18
    if-eqz v8, :cond_2b

    .line 463
    .line 464
    sget-object v4, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4}, Landroidx/compose/material/DrawerDefaults;->a()F

    .line 468
    move-result v4

    .line 469
    goto :goto_19

    .line 470
    :cond_2b
    move v4, v9

    .line 471
    .line 472
    :goto_19
    and-int/lit8 v5, v12, 0x40

    .line 473
    .line 474
    if-eqz v5, :cond_2c

    .line 475
    .line 476
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v5, v11, v10}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 480
    move-result-object v5

    .line 481
    .line 482
    .line 483
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->n()J

    .line 484
    move-result-wide v7

    .line 485
    .line 486
    and-int v0, v0, v18

    .line 487
    goto :goto_1a

    .line 488
    .line 489
    :cond_2c
    move-wide/from16 v7, p6

    .line 490
    .line 491
    :goto_1a
    and-int/lit16 v5, v12, 0x80

    .line 492
    .line 493
    if-eqz v5, :cond_2d

    .line 494
    .line 495
    shr-int/lit8 v5, v0, 0x12

    .line 496
    .line 497
    and-int/lit8 v5, v5, 0xe

    .line 498
    .line 499
    .line 500
    invoke-static {v7, v8, v11, v5}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    .line 501
    move-result-wide v18

    .line 502
    .line 503
    and-int v0, v0, v17

    .line 504
    goto :goto_1b

    .line 505
    .line 506
    :cond_2d
    move-wide/from16 v18, p8

    .line 507
    .line 508
    :goto_1b
    and-int/lit16 v5, v12, 0x100

    .line 509
    .line 510
    if-eqz v5, :cond_2e

    .line 511
    .line 512
    sget-object v5, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v5, v11, v10}, Landroidx/compose/material/DrawerDefaults;->b(Landroidx/compose/runtime/Composer;I)J

    .line 516
    move-result-wide v9

    .line 517
    .line 518
    and-int v0, v0, v16

    .line 519
    .line 520
    move-object/from16 v16, v3

    .line 521
    .line 522
    move/from16 v17, v6

    .line 523
    .line 524
    move-wide/from16 v21, v7

    .line 525
    .line 526
    move-wide/from16 v25, v9

    .line 527
    .line 528
    move-wide/from16 v23, v18

    .line 529
    move v3, v0

    .line 530
    move-object v9, v1

    .line 531
    .line 532
    :goto_1c
    move-object/from16 v18, v2

    .line 533
    .line 534
    move/from16 v19, v4

    .line 535
    goto :goto_1d

    .line 536
    .line 537
    :cond_2e
    move-wide/from16 v25, p10

    .line 538
    move-object v9, v1

    .line 539
    .line 540
    move-object/from16 v16, v3

    .line 541
    .line 542
    move/from16 v17, v6

    .line 543
    .line 544
    move-wide/from16 v21, v7

    .line 545
    .line 546
    move-wide/from16 v23, v18

    .line 547
    move v3, v0

    .line 548
    goto :goto_1c

    .line 549
    .line 550
    .line 551
    :goto_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->A()V

    .line 552
    .line 553
    .line 554
    const v0, 0x2e20b340

    .line 555
    .line 556
    .line 557
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 558
    .line 559
    .line 560
    const v0, -0x1d58f75c

    .line 561
    .line 562
    .line 563
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 564
    .line 565
    .line 566
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 567
    move-result-object v0

    .line 568
    .line 569
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 573
    move-result-object v1

    .line 574
    .line 575
    if-ne v0, v1, :cond_2f

    .line 576
    .line 577
    sget-object v0, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 578
    .line 579
    .line 580
    invoke-static {v0, v11}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 581
    move-result-object v0

    .line 582
    .line 583
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 584
    .line 585
    .line 586
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 587
    .line 588
    .line 589
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 590
    move-object v0, v1

    .line 591
    .line 592
    .line 593
    :cond_2f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 594
    .line 595
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 599
    move-result-object v27

    .line 600
    .line 601
    .line 602
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 603
    const/4 v0, 0x0

    .line 604
    const/4 v1, 0x0

    .line 605
    const/4 v2, 0x1

    .line 606
    .line 607
    .line 608
    invoke-static {v9, v0, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 609
    move-result-object v20

    .line 610
    .line 611
    const/16 v28, 0x0

    .line 612
    .line 613
    const/16 v29, 0x0

    .line 614
    .line 615
    new-instance v10, Landroidx/compose/material/DrawerKt$ModalDrawer$1;

    .line 616
    move-object v0, v10

    .line 617
    .line 618
    move-object/from16 v1, v16

    .line 619
    move v7, v2

    .line 620
    .line 621
    move/from16 v2, v17

    .line 622
    .line 623
    move-wide/from16 v4, v25

    .line 624
    .line 625
    move-object/from16 v6, v18

    .line 626
    move v15, v7

    .line 627
    .line 628
    move-wide/from16 v7, v21

    .line 629
    .line 630
    move-object/from16 v30, v9

    .line 631
    .line 632
    move-object/from16 v31, v10

    .line 633
    .line 634
    move-wide/from16 v9, v23

    .line 635
    .line 636
    move-object/from16 v32, v11

    .line 637
    .line 638
    move/from16 v11, v19

    .line 639
    .line 640
    move-object/from16 v12, p12

    .line 641
    .line 642
    move-object/from16 v13, v27

    .line 643
    .line 644
    move-object/from16 v14, p0

    .line 645
    .line 646
    .line 647
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/DrawerKt$ModalDrawer$1;-><init>(Landroidx/compose/material/DrawerState;ZIJLandroidx/compose/ui/graphics/Shape;JJFLe8/p;Lkotlinx/coroutines/o0;Le8/q;)V

    .line 648
    .line 649
    .line 650
    const v0, 0x30ad78b7

    .line 651
    .line 652
    move-object/from16 v2, v31

    .line 653
    .line 654
    move-object/from16 v1, v32

    .line 655
    .line 656
    .line 657
    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 658
    move-result-object v0

    .line 659
    .line 660
    const/16 v2, 0xc00

    .line 661
    const/4 v3, 0x6

    .line 662
    .line 663
    move-object/from16 p1, v20

    .line 664
    .line 665
    move-object/from16 p2, v28

    .line 666
    .line 667
    move/from16 p3, v29

    .line 668
    .line 669
    move-object/from16 p4, v0

    .line 670
    .line 671
    move-object/from16 p5, v1

    .line 672
    .line 673
    move/from16 p6, v2

    .line 674
    .line 675
    move/from16 p7, v3

    .line 676
    .line 677
    .line 678
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;Landroidx/compose/runtime/Composer;II)V

    .line 679
    .line 680
    move-object/from16 v3, v16

    .line 681
    .line 682
    move/from16 v4, v17

    .line 683
    .line 684
    move-object/from16 v5, v18

    .line 685
    .line 686
    move/from16 v6, v19

    .line 687
    .line 688
    move-wide/from16 v11, v25

    .line 689
    .line 690
    move-object/from16 v2, v30

    .line 691
    .line 692
    .line 693
    :goto_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 694
    move-result-object v15

    .line 695
    .line 696
    if-nez v15, :cond_30

    .line 697
    goto :goto_1f

    .line 698
    .line 699
    :cond_30
    new-instance v14, Landroidx/compose/material/DrawerKt$ModalDrawer$2;

    .line 700
    move-object v0, v14

    .line 701
    .line 702
    move-object/from16 v1, p0

    .line 703
    .line 704
    move-object/from16 v13, p12

    .line 705
    .line 706
    move-object/from16 v33, v14

    .line 707
    .line 708
    move/from16 v14, p14

    .line 709
    .line 710
    move-object/from16 v34, v15

    .line 711
    .line 712
    move/from16 v15, p15

    .line 713
    .line 714
    .line 715
    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$ModalDrawer$2;-><init>(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;II)V

    .line 716
    .line 717
    move-object/from16 v1, v33

    .line 718
    .line 719
    move-object/from16 v0, v34

    .line 720
    .line 721
    .line 722
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 723
    :goto_1f
    return-void
.end method

.method private static final e(ZLe8/a;Le8/a;JLandroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Ljava/lang/Float;",
            ">;J",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x763856e6

    .line 4
    .line 5
    .line 6
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 7
    move-result-object p5

    .line 8
    .line 9
    and-int/lit8 v0, p6, 0xe

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->m(Z)Z

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
    or-int/2addr v0, p6

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p6

    .line 24
    .line 25
    :goto_1
    and-int/lit8 v1, p6, 0x70

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p6, 0x380

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    .line 46
    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p6, 0x1c00

    .line 58
    .line 59
    if-nez v1, :cond_7

    .line 60
    .line 61
    .line 62
    invoke-interface {p5, p3, p4}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    const/16 v1, 0x800

    .line 68
    goto :goto_4

    .line 69
    .line 70
    :cond_6
    const/16 v1, 0x400

    .line 71
    :goto_4
    or-int/2addr v0, v1

    .line 72
    .line 73
    :cond_7
    and-int/lit16 v0, v0, 0x16db

    .line 74
    .line 75
    const/16 v1, 0x492

    .line 76
    .line 77
    if-ne v0, v1, :cond_9

    .line 78
    .line 79
    .line 80
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->b()Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_8

    .line 84
    goto :goto_5

    .line 85
    .line 86
    .line 87
    :cond_8
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->g()V

    .line 88
    .line 89
    goto/16 :goto_7

    .line 90
    .line 91
    :cond_9
    :goto_5
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->a()I

    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x6

    .line 97
    .line 98
    .line 99
    invoke-static {v0, p5, v1}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    .line 103
    const v1, 0x3c3bd4bf

    .line 104
    .line 105
    .line 106
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 107
    .line 108
    .line 109
    const v1, 0x1e7b2b64

    .line 110
    const/4 v2, 0x1

    .line 111
    const/4 v3, 0x0

    .line 112
    .line 113
    if-eqz p0, :cond_e

    .line 114
    .line 115
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 116
    .line 117
    .line 118
    const v5, 0x44faf204

    .line 119
    .line 120
    .line 121
    invoke-interface {p5, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 125
    move-result v5

    .line 126
    .line 127
    .line 128
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 129
    move-result-object v6

    .line 130
    .line 131
    if-nez v5, :cond_a

    .line 132
    .line 133
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 137
    move-result-object v5

    .line 138
    .line 139
    if-ne v6, v5, :cond_b

    .line 140
    .line 141
    :cond_a
    new-instance v6, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;

    .line 142
    .line 143
    .line 144
    invoke-direct {v6, p1, v3}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;-><init>(Le8/a;Lkotlin/coroutines/d;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p5, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_b
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 151
    .line 152
    check-cast v6, Le8/p;

    .line 153
    .line 154
    .line 155
    invoke-static {v4, p1, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    .line 159
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 163
    move-result v5

    .line 164
    .line 165
    .line 166
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 167
    move-result v6

    .line 168
    or-int/2addr v5, v6

    .line 169
    .line 170
    .line 171
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    if-nez v5, :cond_c

    .line 175
    .line 176
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 180
    move-result-object v5

    .line 181
    .line 182
    if-ne v6, v5, :cond_d

    .line 183
    .line 184
    :cond_c
    new-instance v6, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;

    .line 185
    .line 186
    .line 187
    invoke-direct {v6, v0, p1}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;-><init>(Ljava/lang/String;Le8/a;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {p5, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_d
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 194
    .line 195
    check-cast v6, Le8/l;

    .line 196
    .line 197
    .line 198
    invoke-static {v4, v2, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 199
    move-result-object v0

    .line 200
    goto :goto_6

    .line 201
    .line 202
    :cond_e
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 203
    .line 204
    .line 205
    :goto_6
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 206
    .line 207
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 208
    const/4 v5, 0x0

    .line 209
    .line 210
    .line 211
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-interface {v2, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    .line 219
    invoke-static {p3, p4}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    .line 223
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 227
    move-result v1

    .line 228
    .line 229
    .line 230
    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 231
    move-result v2

    .line 232
    or-int/2addr v1, v2

    .line 233
    .line 234
    .line 235
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 236
    move-result-object v2

    .line 237
    .line 238
    if-nez v1, :cond_f

    .line 239
    .line 240
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    if-ne v2, v1, :cond_10

    .line 247
    .line 248
    :cond_f
    new-instance v2, Landroidx/compose/material/DrawerKt$Scrim$1$1;

    .line 249
    .line 250
    .line 251
    invoke-direct {v2, p3, p4, p2}, Landroidx/compose/material/DrawerKt$Scrim$1$1;-><init>(JLe8/a;)V

    .line 252
    .line 253
    .line 254
    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_10
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->Q()V

    .line 258
    .line 259
    check-cast v2, Le8/l;

    .line 260
    const/4 v1, 0x0

    .line 261
    .line 262
    .line 263
    invoke-static {v0, v2, p5, v1}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 264
    .line 265
    .line 266
    :goto_7
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 267
    move-result-object p5

    .line 268
    .line 269
    if-nez p5, :cond_11

    .line 270
    goto :goto_8

    .line 271
    .line 272
    :cond_11
    new-instance v7, Landroidx/compose/material/DrawerKt$Scrim$2;

    .line 273
    move-object v0, v7

    .line 274
    move v1, p0

    .line 275
    move-object v2, p1

    .line 276
    move-object v3, p2

    .line 277
    move-wide v4, p3

    .line 278
    move v6, p6

    .line 279
    .line 280
    .line 281
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/DrawerKt$Scrim$2;-><init>(ZLe8/a;Le8/a;JI)V

    .line 282
    .line 283
    .line 284
    invoke-interface {p5, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 285
    :goto_8
    return-void
.end method

.method public static final synthetic f(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/DrawerKt;->b(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic g(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/DrawerKt;->c(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic h(ZLe8/a;Le8/a;JLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/DrawerKt;->e(ZLe8/a;Le8/a;JLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic i(FFF)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/material/DrawerKt;->m(FFF)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic j()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    return-object v0
.end method

.method public static final synthetic k()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    return v0
.end method

.method public static final synthetic l()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    return v0
.end method

.method private static final m(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p2, p0

    .line 2
    sub-float/2addr p1, p0

    .line 3
    div-float/2addr p2, p1

    .line 4
    const/4 p0, 0x0

    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p0, p1}, Lj8/m;->m(FFF)F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final n(Landroidx/compose/material/BottomDrawerValue;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;
    .locals 7
    .param p0    # Landroidx/compose/material/BottomDrawerValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/BottomDrawerValue;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BottomDrawerState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "initialValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x23a68354

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 p3, p4, 0x2

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;

    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    .line 20
    new-array v0, p3, [Ljava/lang/Object;

    .line 21
    .line 22
    sget-object p3, Landroidx/compose/material/BottomDrawerState;->Companion:Landroidx/compose/material/BottomDrawerState$Companion;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Landroidx/compose/material/BottomDrawerState$Companion;->a(Le8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p0, p1}, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;-><init>(Landroidx/compose/material/BottomDrawerValue;Le8/l;)V

    .line 33
    .line 34
    const/16 v5, 0x48

    .line 35
    const/4 v6, 0x4

    .line 36
    move-object v4, p2

    .line 37
    .line 38
    .line 39
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    check-cast p0, Landroidx/compose/material/BottomDrawerState;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 46
    return-object p0
.end method

.method public static final o(Landroidx/compose/material/DrawerValue;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;
    .locals 7
    .param p0    # Landroidx/compose/material/DrawerValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerValue;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/DrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/DrawerState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "initialValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, -0x5595b3b5

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 p3, p4, 0x2

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/material/DrawerKt$rememberDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberDrawerState$1;

    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    .line 20
    new-array v0, p3, [Ljava/lang/Object;

    .line 21
    .line 22
    sget-object p3, Landroidx/compose/material/DrawerState;->Companion:Landroidx/compose/material/DrawerState$Companion;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, p1}, Landroidx/compose/material/DrawerState$Companion;->a(Le8/l;)Landroidx/compose/runtime/saveable/Saver;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    .line 29
    new-instance v3, Landroidx/compose/material/DrawerKt$rememberDrawerState$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p0, p1}, Landroidx/compose/material/DrawerKt$rememberDrawerState$2;-><init>(Landroidx/compose/material/DrawerValue;Le8/l;)V

    .line 33
    .line 34
    const/16 v5, 0x48

    .line 35
    const/4 v6, 0x4

    .line 36
    move-object v4, p2

    .line 37
    .line 38
    .line 39
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    check-cast p0, Landroidx/compose/material/DrawerState;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 46
    return-object p0
.end method
