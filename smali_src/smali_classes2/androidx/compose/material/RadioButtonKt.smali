.class public final Landroidx/compose/material/RadioButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRadioButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n+ 5 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,227:1\n25#2:228\n50#2:237\n49#2:238\n1057#3,6:229\n1057#3,6:239\n76#4:235\n76#4:248\n155#5:236\n155#5:245\n155#5:246\n155#5:247\n155#5:249\n155#5:250\n*S KotlinDebug\n*F\n+ 1 RadioButton.kt\nandroidx/compose/material/RadioButtonKt\n*L\n79#1:228\n110#1:237\n110#1:238\n79#1:229,6\n110#1:239,6\n83#1:235\n224#1:248\n83#1:236\n221#1:245\n222#1:246\n223#1:247\n225#1:249\n226#1:250\n*E\n"
.end annotation


# static fields
.field private static final RadioAnimationDuration:I = 0x64

.field private static final RadioButtonDotSize:F

.field private static final RadioButtonPadding:F

.field private static final RadioButtonRippleRadius:F

.field private static final RadioButtonSize:F

.field private static final RadioRadius:F

.field private static final RadioStrokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x18

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
    sput v0, Landroidx/compose/material/RadioButtonKt;->RadioButtonRippleRadius:F

    .line 10
    const/4 v0, 0x2

    .line 11
    int-to-float v0, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 15
    move-result v1

    .line 16
    .line 17
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonPadding:F

    .line 18
    .line 19
    const/16 v1, 0x14

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 24
    move-result v1

    .line 25
    .line 26
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonSize:F

    .line 27
    div-float/2addr v1, v0

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 31
    move-result v1

    .line 32
    .line 33
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioRadius:F

    .line 34
    .line 35
    const/16 v1, 0xc

    .line 36
    int-to-float v1, v1

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 40
    move-result v1

    .line 41
    .line 42
    sput v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonDotSize:F

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 46
    move-result v0

    .line 47
    .line 48
    sput v0, Landroidx/compose/material/RadioButtonKt;->RadioStrokeWidth:F

    .line 49
    return-void
.end method

.method public static final a(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/RadioButtonColors;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p5    # Landroidx/compose/material/RadioButtonColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/RadioButtonColors;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move/from16 v7, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    move/from16 v9, p7

    .line 7
    .line 8
    .line 9
    const v0, 0x4e58b201    # 9.0888608E8f

    .line 10
    .line 11
    move-object/from16 v1, p6

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    and-int/lit8 v1, p8, 0x1

    .line 18
    const/4 v6, 0x2

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    or-int/lit8 v1, v9, 0x6

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    and-int/lit8 v1, v9, 0xe

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v6

    .line 37
    :goto_0
    or-int/2addr v1, v9

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v9

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v2, p8, 0x2

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    or-int/lit8 v1, v1, 0x30

    .line 46
    goto :goto_3

    .line 47
    .line 48
    :cond_3
    and-int/lit8 v2, v9, 0x70

    .line 49
    .line 50
    if-nez v2, :cond_5

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    const/16 v2, 0x20

    .line 59
    goto :goto_2

    .line 60
    .line 61
    :cond_4
    const/16 v2, 0x10

    .line 62
    :goto_2
    or-int/2addr v1, v2

    .line 63
    .line 64
    :cond_5
    :goto_3
    and-int/lit8 v2, p8, 0x4

    .line 65
    .line 66
    if-eqz v2, :cond_7

    .line 67
    .line 68
    or-int/lit16 v1, v1, 0x180

    .line 69
    .line 70
    :cond_6
    move-object/from16 v3, p2

    .line 71
    goto :goto_5

    .line 72
    .line 73
    :cond_7
    and-int/lit16 v3, v9, 0x380

    .line 74
    .line 75
    if-nez v3, :cond_6

    .line 76
    .line 77
    move-object/from16 v3, p2

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 81
    move-result v4

    .line 82
    .line 83
    if-eqz v4, :cond_8

    .line 84
    .line 85
    const/16 v4, 0x100

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_8
    const/16 v4, 0x80

    .line 89
    :goto_4
    or-int/2addr v1, v4

    .line 90
    .line 91
    :goto_5
    and-int/lit8 v4, p8, 0x8

    .line 92
    .line 93
    if-eqz v4, :cond_a

    .line 94
    .line 95
    or-int/lit16 v1, v1, 0xc00

    .line 96
    .line 97
    :cond_9
    move/from16 v5, p3

    .line 98
    goto :goto_7

    .line 99
    .line 100
    :cond_a
    and-int/lit16 v5, v9, 0x1c00

    .line 101
    .line 102
    if-nez v5, :cond_9

    .line 103
    .line 104
    move/from16 v5, p3

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 108
    move-result v10

    .line 109
    .line 110
    if-eqz v10, :cond_b

    .line 111
    .line 112
    const/16 v10, 0x800

    .line 113
    goto :goto_6

    .line 114
    .line 115
    :cond_b
    const/16 v10, 0x400

    .line 116
    :goto_6
    or-int/2addr v1, v10

    .line 117
    .line 118
    :goto_7
    and-int/lit8 v10, p8, 0x10

    .line 119
    .line 120
    if-eqz v10, :cond_d

    .line 121
    .line 122
    or-int/lit16 v1, v1, 0x6000

    .line 123
    .line 124
    :cond_c
    move-object/from16 v11, p4

    .line 125
    goto :goto_9

    .line 126
    .line 127
    .line 128
    :cond_d
    const v11, 0xe000

    .line 129
    and-int/2addr v11, v9

    .line 130
    .line 131
    if-nez v11, :cond_c

    .line 132
    .line 133
    move-object/from16 v11, p4

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 137
    move-result v12

    .line 138
    .line 139
    if-eqz v12, :cond_e

    .line 140
    .line 141
    const/16 v12, 0x4000

    .line 142
    goto :goto_8

    .line 143
    .line 144
    :cond_e
    const/16 v12, 0x2000

    .line 145
    :goto_8
    or-int/2addr v1, v12

    .line 146
    .line 147
    :goto_9
    const/high16 v12, 0x70000

    .line 148
    and-int/2addr v12, v9

    .line 149
    .line 150
    if-nez v12, :cond_11

    .line 151
    .line 152
    and-int/lit8 v12, p8, 0x20

    .line 153
    .line 154
    if-nez v12, :cond_f

    .line 155
    .line 156
    move-object/from16 v12, p5

    .line 157
    .line 158
    .line 159
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 160
    move-result v13

    .line 161
    .line 162
    if-eqz v13, :cond_10

    .line 163
    .line 164
    const/high16 v13, 0x20000

    .line 165
    goto :goto_a

    .line 166
    .line 167
    :cond_f
    move-object/from16 v12, p5

    .line 168
    .line 169
    :cond_10
    const/high16 v13, 0x10000

    .line 170
    :goto_a
    or-int/2addr v1, v13

    .line 171
    goto :goto_b

    .line 172
    .line 173
    :cond_11
    move-object/from16 v12, p5

    .line 174
    .line 175
    .line 176
    :goto_b
    const v13, 0x5b6db

    .line 177
    and-int/2addr v13, v1

    .line 178
    .line 179
    .line 180
    const v14, 0x12492

    .line 181
    .line 182
    if-ne v13, v14, :cond_13

    .line 183
    .line 184
    .line 185
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 186
    move-result v13

    .line 187
    .line 188
    if-nez v13, :cond_12

    .line 189
    goto :goto_c

    .line 190
    .line 191
    .line 192
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 193
    move v4, v5

    .line 194
    move-object v5, v11

    .line 195
    move-object v6, v12

    .line 196
    move-object v11, v0

    .line 197
    .line 198
    goto/16 :goto_14

    .line 199
    .line 200
    .line 201
    :cond_13
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->J()V

    .line 202
    .line 203
    and-int/lit8 v13, v9, 0x1

    .line 204
    .line 205
    .line 206
    const v20, -0x70001

    .line 207
    .line 208
    if-eqz v13, :cond_16

    .line 209
    .line 210
    .line 211
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->h()Z

    .line 212
    move-result v13

    .line 213
    .line 214
    if-eqz v13, :cond_14

    .line 215
    goto :goto_d

    .line 216
    .line 217
    .line 218
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 219
    .line 220
    and-int/lit8 v2, p8, 0x20

    .line 221
    .line 222
    if-eqz v2, :cond_15

    .line 223
    .line 224
    and-int v1, v1, v20

    .line 225
    :cond_15
    move v10, v1

    .line 226
    move-object v15, v3

    .line 227
    move v14, v5

    .line 228
    .line 229
    move-object/from16 v17, v11

    .line 230
    goto :goto_11

    .line 231
    .line 232
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 233
    .line 234
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 235
    goto :goto_e

    .line 236
    :cond_17
    move-object v2, v3

    .line 237
    .line 238
    :goto_e
    if-eqz v4, :cond_18

    .line 239
    const/4 v3, 0x1

    .line 240
    goto :goto_f

    .line 241
    :cond_18
    move v3, v5

    .line 242
    .line 243
    :goto_f
    if-eqz v10, :cond_1a

    .line 244
    .line 245
    .line 246
    const v4, -0x1d58f75c

    .line 247
    .line 248
    .line 249
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 253
    move-result-object v4

    .line 254
    .line 255
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    if-ne v4, v5, :cond_19

    .line 262
    .line 263
    .line 264
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 265
    move-result-object v4

    .line 266
    .line 267
    .line 268
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 272
    .line 273
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 274
    goto :goto_10

    .line 275
    :cond_1a
    move-object v4, v11

    .line 276
    .line 277
    :goto_10
    and-int/lit8 v5, p8, 0x20

    .line 278
    .line 279
    if-eqz v5, :cond_1b

    .line 280
    .line 281
    sget-object v10, Landroidx/compose/material/RadioButtonDefaults;->INSTANCE:Landroidx/compose/material/RadioButtonDefaults;

    .line 282
    .line 283
    const-wide/16 v11, 0x0

    .line 284
    .line 285
    const-wide/16 v13, 0x0

    .line 286
    .line 287
    const-wide/16 v15, 0x0

    .line 288
    .line 289
    const/16 v18, 0xc00

    .line 290
    .line 291
    const/16 v19, 0x7

    .line 292
    .line 293
    move-object/from16 v17, v0

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {v10 .. v19}, Landroidx/compose/material/RadioButtonDefaults;->a(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/RadioButtonColors;

    .line 297
    move-result-object v5

    .line 298
    .line 299
    and-int v1, v1, v20

    .line 300
    move v10, v1

    .line 301
    move-object v15, v2

    .line 302
    move v14, v3

    .line 303
    .line 304
    move-object/from16 v17, v4

    .line 305
    move-object v12, v5

    .line 306
    goto :goto_11

    .line 307
    :cond_1b
    move v10, v1

    .line 308
    move-object v15, v2

    .line 309
    move v14, v3

    .line 310
    .line 311
    move-object/from16 v17, v4

    .line 312
    .line 313
    .line 314
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->A()V

    .line 315
    const/4 v13, 0x0

    .line 316
    .line 317
    if-eqz v7, :cond_1c

    .line 318
    .line 319
    sget v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonDotSize:F

    .line 320
    int-to-float v2, v6

    .line 321
    div-float/2addr v1, v2

    .line 322
    .line 323
    .line 324
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 325
    move-result v1

    .line 326
    goto :goto_12

    .line 327
    :cond_1c
    int-to-float v1, v13

    .line 328
    .line 329
    .line 330
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 331
    move-result v1

    .line 332
    .line 333
    :goto_12
    const/16 v2, 0x64

    .line 334
    const/4 v11, 0x0

    .line 335
    const/4 v3, 0x6

    .line 336
    .line 337
    .line 338
    invoke-static {v2, v13, v11, v3, v11}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 339
    move-result-object v2

    .line 340
    const/4 v3, 0x0

    .line 341
    .line 342
    const/16 v5, 0x30

    .line 343
    .line 344
    const/16 v16, 0x4

    .line 345
    move-object v4, v0

    .line 346
    .line 347
    move/from16 v6, v16

    .line 348
    .line 349
    .line 350
    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/AnimateAsStateKt;->c(FLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 351
    move-result-object v6

    .line 352
    .line 353
    shr-int/lit8 v1, v10, 0x9

    .line 354
    .line 355
    and-int/lit8 v2, v1, 0xe

    .line 356
    .line 357
    shl-int/lit8 v3, v10, 0x3

    .line 358
    .line 359
    and-int/lit8 v3, v3, 0x70

    .line 360
    or-int/2addr v2, v3

    .line 361
    .line 362
    and-int/lit16 v1, v1, 0x380

    .line 363
    or-int/2addr v1, v2

    .line 364
    .line 365
    .line 366
    invoke-interface {v12, v14, v7, v0, v1}, Landroidx/compose/material/RadioButtonColors;->a(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 367
    move-result-object v5

    .line 368
    .line 369
    .line 370
    const v1, 0x73baf562

    .line 371
    .line 372
    .line 373
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 374
    .line 375
    if-eqz v8, :cond_1d

    .line 376
    .line 377
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 378
    .line 379
    sget-object v2, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role$Companion;->d()I

    .line 383
    move-result v2

    .line 384
    const/4 v10, 0x0

    .line 385
    .line 386
    sget v3, Landroidx/compose/material/RadioButtonKt;->RadioButtonRippleRadius:F

    .line 387
    .line 388
    const-wide/16 v18, 0x0

    .line 389
    .line 390
    const/16 v4, 0x36

    .line 391
    .line 392
    const/16 v16, 0x4

    .line 393
    move v11, v3

    .line 394
    .line 395
    move-object/from16 v20, v12

    .line 396
    move v3, v13

    .line 397
    .line 398
    move-wide/from16 v12, v18

    .line 399
    .line 400
    move/from16 v18, v14

    .line 401
    move-object v14, v0

    .line 402
    .line 403
    move-object/from16 v21, v15

    .line 404
    move v15, v4

    .line 405
    .line 406
    .line 407
    invoke-static/range {v10 .. v16}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 408
    move-result-object v4

    .line 409
    .line 410
    .line 411
    invoke-static {v2}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 412
    move-result-object v10

    .line 413
    move-object v11, v0

    .line 414
    move-object v0, v1

    .line 415
    .line 416
    move/from16 v1, p0

    .line 417
    .line 418
    move-object/from16 v2, v17

    .line 419
    move v12, v3

    .line 420
    move-object v3, v4

    .line 421
    .line 422
    move/from16 v4, v18

    .line 423
    move-object v13, v5

    .line 424
    move-object v5, v10

    .line 425
    move-object v10, v6

    .line 426
    .line 427
    move-object/from16 v6, p1

    .line 428
    .line 429
    .line 430
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/SelectableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 431
    move-result-object v0

    .line 432
    goto :goto_13

    .line 433
    :cond_1d
    move-object v11, v0

    .line 434
    move-object v10, v6

    .line 435
    .line 436
    move-object/from16 v20, v12

    .line 437
    move v12, v13

    .line 438
    .line 439
    move/from16 v18, v14

    .line 440
    .line 441
    move-object/from16 v21, v15

    .line 442
    move-object v13, v5

    .line 443
    .line 444
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 445
    .line 446
    .line 447
    :goto_13
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 448
    .line 449
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 450
    .line 451
    if-eqz v8, :cond_1e

    .line 452
    .line 453
    .line 454
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 455
    move-result-object v1

    .line 456
    .line 457
    :cond_1e
    move-object/from16 v2, v21

    .line 458
    .line 459
    .line 460
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 461
    move-result-object v1

    .line 462
    .line 463
    .line 464
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 465
    move-result-object v0

    .line 466
    .line 467
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 471
    move-result-object v1

    .line 472
    const/4 v3, 0x2

    .line 473
    const/4 v4, 0x0

    .line 474
    .line 475
    .line 476
    invoke-static {v0, v1, v12, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->H(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 477
    move-result-object v0

    .line 478
    .line 479
    sget v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonPadding:F

    .line 480
    .line 481
    .line 482
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 483
    move-result-object v0

    .line 484
    .line 485
    sget v1, Landroidx/compose/material/RadioButtonKt;->RadioButtonSize:F

    .line 486
    .line 487
    .line 488
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->t(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 489
    move-result-object v0

    .line 490
    .line 491
    .line 492
    const v1, 0x1e7b2b64

    .line 493
    .line 494
    .line 495
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 496
    .line 497
    .line 498
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 499
    move-result v1

    .line 500
    .line 501
    .line 502
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 503
    move-result v3

    .line 504
    or-int/2addr v1, v3

    .line 505
    .line 506
    .line 507
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 508
    move-result-object v3

    .line 509
    .line 510
    if-nez v1, :cond_1f

    .line 511
    .line 512
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 516
    move-result-object v1

    .line 517
    .line 518
    if-ne v3, v1, :cond_20

    .line 519
    .line 520
    :cond_1f
    new-instance v3, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;

    .line 521
    .line 522
    .line 523
    invoke-direct {v3, v13, v10}, Landroidx/compose/material/RadioButtonKt$RadioButton$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 524
    .line 525
    .line 526
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->Q()V

    .line 530
    .line 531
    check-cast v3, Le8/l;

    .line 532
    .line 533
    .line 534
    invoke-static {v0, v3, v11, v12}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 535
    move-object v3, v2

    .line 536
    .line 537
    move-object/from16 v5, v17

    .line 538
    .line 539
    move/from16 v4, v18

    .line 540
    .line 541
    move-object/from16 v6, v20

    .line 542
    .line 543
    .line 544
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 545
    move-result-object v10

    .line 546
    .line 547
    if-nez v10, :cond_21

    .line 548
    goto :goto_15

    .line 549
    .line 550
    :cond_21
    new-instance v11, Landroidx/compose/material/RadioButtonKt$RadioButton$3;

    .line 551
    move-object v0, v11

    .line 552
    .line 553
    move/from16 v1, p0

    .line 554
    .line 555
    move-object/from16 v2, p1

    .line 556
    .line 557
    move/from16 v7, p7

    .line 558
    .line 559
    move/from16 v8, p8

    .line 560
    .line 561
    .line 562
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/RadioButtonKt$RadioButton$3;-><init>(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/RadioButtonColors;II)V

    .line 563
    .line 564
    .line 565
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 566
    :goto_15
    return-void
.end method

.method public static final synthetic b()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/RadioButtonKt;->RadioRadius:F

    return v0
.end method

.method public static final synthetic c()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/RadioButtonKt;->RadioStrokeWidth:F

    return v0
.end method
