.class public final Landroidx/compose/material/IconButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconButton.kt\nandroidx/compose/material/IconButtonKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 5 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,130:1\n25#2:131\n460#2,13:156\n473#2,3:171\n25#2:176\n460#2,13:201\n473#2,3:216\n1057#3,6:132\n1057#3,6:177\n68#4,5:138\n73#4:169\n77#4:175\n68#4,5:183\n73#4:214\n77#4:220\n75#5:143\n76#5,11:145\n89#5:174\n75#5:188\n76#5,11:190\n89#5:219\n76#6:144\n76#6:170\n76#6:189\n76#6:215\n155#7:221\n*S KotlinDebug\n*F\n+ 1 IconButton.kt\nandroidx/compose/material/IconButtonKt\n*L\n63#1:131\n66#1:156,13\n66#1:171,3\n107#1:176\n110#1:201,13\n110#1:216,3\n63#1:132,6\n107#1:177,6\n66#1:138,5\n66#1:169\n66#1:175\n110#1:183,5\n110#1:214\n110#1:220\n66#1:143\n66#1:145,11\n66#1:174\n110#1:188\n110#1:190,11\n110#1:219\n66#1:144\n78#1:170\n110#1:189\n123#1:215\n129#1:221\n*E\n"
.end annotation


# static fields
.field private static final RippleRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    sput v0, Landroidx/compose/material/IconButtonKt;->RippleRadius:F

    .line 10
    return-void
.end method

.method public static final a(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 18
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
    .param p4    # Le8/p;
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
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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
    move-object/from16 v9, p0

    .line 3
    .line 4
    move-object/from16 v10, p4

    .line 5
    .line 6
    move/from16 v11, p6

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
    const v0, -0x69eb252

    .line 20
    .line 21
    move-object/from16 v1, p5

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v12

    .line 26
    .line 27
    and-int/lit8 v0, p7, 0x1

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
    and-int/lit8 v1, p7, 0x2

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
    and-int/lit8 v3, p7, 0x4

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
    and-int/lit8 v5, p7, 0x8

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
    and-int/lit8 v7, p7, 0x10

    .line 132
    .line 133
    if-eqz v7, :cond_d

    .line 134
    .line 135
    or-int/lit16 v0, v0, 0x6000

    .line 136
    :cond_c
    :goto_8
    move v13, v0

    .line 137
    goto :goto_a

    .line 138
    .line 139
    .line 140
    :cond_d
    const v7, 0xe000

    .line 141
    and-int/2addr v7, v11

    .line 142
    .line 143
    if-nez v7, :cond_c

    .line 144
    .line 145
    .line 146
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 147
    move-result v7

    .line 148
    .line 149
    if-eqz v7, :cond_e

    .line 150
    .line 151
    const/16 v7, 0x4000

    .line 152
    goto :goto_9

    .line 153
    .line 154
    :cond_e
    const/16 v7, 0x2000

    .line 155
    :goto_9
    or-int/2addr v0, v7

    .line 156
    goto :goto_8

    .line 157
    .line 158
    .line 159
    :goto_a
    const v0, 0xb6db

    .line 160
    and-int/2addr v0, v13

    .line 161
    .line 162
    const/16 v7, 0x2492

    .line 163
    .line 164
    if-ne v0, v7, :cond_10

    .line 165
    .line 166
    .line 167
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 168
    move-result v0

    .line 169
    .line 170
    if-nez v0, :cond_f

    .line 171
    goto :goto_b

    .line 172
    .line 173
    .line 174
    :cond_f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 175
    move v3, v4

    .line 176
    move-object v4, v6

    .line 177
    .line 178
    goto/16 :goto_12

    .line 179
    .line 180
    :cond_10
    :goto_b
    if-eqz v1, :cond_11

    .line 181
    .line 182
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 183
    move-object v14, v0

    .line 184
    goto :goto_c

    .line 185
    :cond_11
    move-object v14, v2

    .line 186
    .line 187
    :goto_c
    if-eqz v3, :cond_12

    .line 188
    .line 189
    const/16 v16, 0x1

    .line 190
    goto :goto_d

    .line 191
    .line 192
    :cond_12
    move/from16 v16, v4

    .line 193
    .line 194
    :goto_d
    if-eqz v5, :cond_14

    .line 195
    .line 196
    .line 197
    const v0, -0x1d58f75c

    .line 198
    .line 199
    .line 200
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    if-ne v0, v1, :cond_13

    .line 213
    .line 214
    .line 215
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    .line 219
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    :cond_13
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 223
    .line 224
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 225
    .line 226
    move-object/from16 v17, v0

    .line 227
    goto :goto_e

    .line 228
    .line 229
    :cond_14
    move-object/from16 v17, v6

    .line 230
    .line 231
    .line 232
    :goto_e
    invoke-static {v14}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->a()I

    .line 239
    move-result v8

    .line 240
    const/4 v1, 0x0

    .line 241
    .line 242
    sget v2, Landroidx/compose/material/IconButtonKt;->RippleRadius:F

    .line 243
    .line 244
    const-wide/16 v3, 0x0

    .line 245
    .line 246
    const/16 v6, 0x36

    .line 247
    const/4 v7, 0x4

    .line 248
    move-object v5, v12

    .line 249
    .line 250
    .line 251
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 252
    move-result-object v2

    .line 253
    const/4 v4, 0x0

    .line 254
    .line 255
    .line 256
    invoke-static {v8}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 257
    move-result-object v5

    .line 258
    .line 259
    const/16 v7, 0x8

    .line 260
    const/4 v8, 0x0

    .line 261
    .line 262
    move-object/from16 v1, v17

    .line 263
    .line 264
    move/from16 v3, v16

    .line 265
    .line 266
    move-object/from16 v6, p0

    .line 267
    .line 268
    .line 269
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ClickableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    .line 279
    const v2, 0x2bb5b5d7

    .line 280
    .line 281
    .line 282
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 283
    const/4 v2, 0x0

    .line 284
    const/4 v3, 0x6

    .line 285
    .line 286
    .line 287
    invoke-static {v1, v2, v12, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 288
    move-result-object v1

    .line 289
    .line 290
    .line 291
    const v4, -0x4ee9b9da

    .line 292
    .line 293
    .line 294
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 295
    .line 296
    .line 297
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 298
    move-result-object v4

    .line 299
    .line 300
    .line 301
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 302
    move-result-object v4

    .line 303
    .line 304
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 305
    .line 306
    .line 307
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 308
    move-result-object v5

    .line 309
    .line 310
    .line 311
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 312
    move-result-object v5

    .line 313
    .line 314
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 315
    .line 316
    .line 317
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 318
    move-result-object v6

    .line 319
    .line 320
    .line 321
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 322
    move-result-object v6

    .line 323
    .line 324
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 325
    .line 326
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 330
    move-result-object v8

    .line 331
    .line 332
    .line 333
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 334
    move-result-object v0

    .line 335
    .line 336
    .line 337
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 338
    move-result-object v15

    .line 339
    .line 340
    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    .line 341
    .line 342
    if-nez v15, :cond_15

    .line 343
    .line 344
    .line 345
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 346
    .line 347
    .line 348
    :cond_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->e()V

    .line 349
    .line 350
    .line 351
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->r()Z

    .line 352
    move-result v15

    .line 353
    .line 354
    if-eqz v15, :cond_16

    .line 355
    .line 356
    .line 357
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 358
    goto :goto_f

    .line 359
    .line 360
    .line 361
    :cond_16
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->c()V

    .line 362
    .line 363
    .line 364
    :goto_f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->L()V

    .line 365
    .line 366
    .line 367
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 368
    move-result-object v8

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 372
    move-result-object v15

    .line 373
    .line 374
    .line 375
    invoke-static {v8, v1, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 379
    move-result-object v1

    .line 380
    .line 381
    .line 382
    invoke-static {v8, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 386
    move-result-object v1

    .line 387
    .line 388
    .line 389
    invoke-static {v8, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 393
    move-result-object v1

    .line 394
    .line 395
    .line 396
    invoke-static {v8, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 397
    .line 398
    .line 399
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->o()V

    .line 400
    .line 401
    .line 402
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 403
    move-result-object v1

    .line 404
    .line 405
    .line 406
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 407
    move-result-object v1

    .line 408
    .line 409
    .line 410
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    move-result-object v4

    .line 412
    .line 413
    .line 414
    invoke-interface {v0, v1, v12, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    const v0, 0x7ab4aae9

    .line 418
    .line 419
    .line 420
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 421
    .line 422
    .line 423
    const v0, -0x7f65a980

    .line 424
    .line 425
    .line 426
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 427
    .line 428
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 429
    .line 430
    .line 431
    const v0, -0x7fed5098

    .line 432
    .line 433
    .line 434
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 435
    .line 436
    if-eqz v16, :cond_17

    .line 437
    .line 438
    .line 439
    const v0, 0x2cea593f

    .line 440
    .line 441
    .line 442
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 443
    .line 444
    .line 445
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 446
    move-result-object v0

    .line 447
    .line 448
    .line 449
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 450
    move-result-object v0

    .line 451
    .line 452
    check-cast v0, Ljava/lang/Number;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 456
    move-result v0

    .line 457
    .line 458
    .line 459
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 460
    const/4 v1, 0x1

    .line 461
    goto :goto_11

    .line 462
    .line 463
    .line 464
    :cond_17
    const v0, 0x2cea5959

    .line 465
    .line 466
    .line 467
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 468
    .line 469
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v12, v3}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 473
    move-result v0

    .line 474
    goto :goto_10

    .line 475
    .line 476
    :goto_11
    new-array v1, v1, [Landroidx/compose/runtime/ProvidedValue;

    .line 477
    .line 478
    .line 479
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 480
    move-result-object v3

    .line 481
    .line 482
    .line 483
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 484
    move-result-object v0

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 488
    move-result-object v0

    .line 489
    .line 490
    aput-object v0, v1, v2

    .line 491
    .line 492
    shr-int/lit8 v0, v13, 0x9

    .line 493
    .line 494
    and-int/lit8 v0, v0, 0x70

    .line 495
    .line 496
    or-int/lit8 v0, v0, 0x8

    .line 497
    .line 498
    .line 499
    invoke-static {v1, v10, v12, v0}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 500
    .line 501
    .line 502
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 503
    .line 504
    .line 505
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 506
    .line 507
    .line 508
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 509
    .line 510
    .line 511
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->d()V

    .line 512
    .line 513
    .line 514
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 515
    .line 516
    .line 517
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 518
    move-object v2, v14

    .line 519
    .line 520
    move/from16 v3, v16

    .line 521
    .line 522
    move-object/from16 v4, v17

    .line 523
    .line 524
    .line 525
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 526
    move-result-object v8

    .line 527
    .line 528
    if-nez v8, :cond_18

    .line 529
    goto :goto_13

    .line 530
    .line 531
    :cond_18
    new-instance v12, Landroidx/compose/material/IconButtonKt$IconButton$3;

    .line 532
    move-object v0, v12

    .line 533
    .line 534
    move-object/from16 v1, p0

    .line 535
    .line 536
    move-object/from16 v5, p4

    .line 537
    .line 538
    move/from16 v6, p6

    .line 539
    .line 540
    move/from16 v7, p7

    .line 541
    .line 542
    .line 543
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/IconButtonKt$IconButton$3;-><init>(Le8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;II)V

    .line 544
    .line 545
    .line 546
    invoke-interface {v8, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 547
    :goto_13
    return-void
.end method

.method public static final b(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p1    # Le8/l;
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
    .param p5    # Le8/p;
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
            "(Z",
            "Le8/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
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
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v8, p5

    .line 5
    .line 6
    move/from16 v9, p7

    .line 7
    .line 8
    const-string v0, "onCheckedChange"

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
    const v0, -0x3420301

    .line 20
    .line 21
    move-object/from16 v1, p6

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v6

    .line 26
    .line 27
    and-int/lit8 v0, p8, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v9, 0x6

    .line 32
    .line 33
    move/from16 v5, p0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 37
    .line 38
    move/from16 v5, p0

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x2

    .line 50
    :goto_0
    or-int/2addr v0, v9

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v0, v9

    .line 53
    .line 54
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    or-int/lit8 v0, v0, 0x30

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_3
    and-int/lit8 v1, v9, 0x70

    .line 62
    .line 63
    if-nez v1, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    const/16 v1, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_4
    const/16 v1, 0x10

    .line 75
    :goto_2
    or-int/2addr v0, v1

    .line 76
    .line 77
    :cond_5
    :goto_3
    and-int/lit8 v1, p8, 0x4

    .line 78
    .line 79
    if-eqz v1, :cond_7

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x180

    .line 82
    .line 83
    :cond_6
    move-object/from16 v2, p2

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_7
    and-int/lit16 v2, v9, 0x380

    .line 87
    .line 88
    if-nez v2, :cond_6

    .line 89
    .line 90
    move-object/from16 v2, p2

    .line 91
    .line 92
    .line 93
    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 94
    move-result v3

    .line 95
    .line 96
    if-eqz v3, :cond_8

    .line 97
    .line 98
    const/16 v3, 0x100

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_8
    const/16 v3, 0x80

    .line 102
    :goto_4
    or-int/2addr v0, v3

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v3, p8, 0x8

    .line 105
    .line 106
    if-eqz v3, :cond_a

    .line 107
    .line 108
    or-int/lit16 v0, v0, 0xc00

    .line 109
    .line 110
    :cond_9
    move/from16 v4, p3

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v4, v9, 0x1c00

    .line 114
    .line 115
    if-nez v4, :cond_9

    .line 116
    .line 117
    move/from16 v4, p3

    .line 118
    .line 119
    .line 120
    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 121
    move-result v10

    .line 122
    .line 123
    if-eqz v10, :cond_b

    .line 124
    .line 125
    const/16 v10, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_b
    const/16 v10, 0x400

    .line 129
    :goto_6
    or-int/2addr v0, v10

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v10, p8, 0x10

    .line 132
    .line 133
    if-eqz v10, :cond_d

    .line 134
    .line 135
    or-int/lit16 v0, v0, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v11, p4

    .line 138
    goto :goto_9

    .line 139
    .line 140
    .line 141
    :cond_d
    const v11, 0xe000

    .line 142
    and-int/2addr v11, v9

    .line 143
    .line 144
    if-nez v11, :cond_c

    .line 145
    .line 146
    move-object/from16 v11, p4

    .line 147
    .line 148
    .line 149
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 150
    move-result v12

    .line 151
    .line 152
    if-eqz v12, :cond_e

    .line 153
    .line 154
    const/16 v12, 0x4000

    .line 155
    goto :goto_8

    .line 156
    .line 157
    :cond_e
    const/16 v12, 0x2000

    .line 158
    :goto_8
    or-int/2addr v0, v12

    .line 159
    .line 160
    :goto_9
    and-int/lit8 v12, p8, 0x20

    .line 161
    .line 162
    if-eqz v12, :cond_10

    .line 163
    .line 164
    const/high16 v12, 0x30000

    .line 165
    :goto_a
    or-int/2addr v0, v12

    .line 166
    .line 167
    :cond_f
    move/from16 v17, v0

    .line 168
    goto :goto_b

    .line 169
    .line 170
    :cond_10
    const/high16 v12, 0x70000

    .line 171
    and-int/2addr v12, v9

    .line 172
    .line 173
    if-nez v12, :cond_f

    .line 174
    .line 175
    .line 176
    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 177
    move-result v12

    .line 178
    .line 179
    if-eqz v12, :cond_11

    .line 180
    .line 181
    const/high16 v12, 0x20000

    .line 182
    goto :goto_a

    .line 183
    .line 184
    :cond_11
    const/high16 v12, 0x10000

    .line 185
    goto :goto_a

    .line 186
    .line 187
    .line 188
    :goto_b
    const v0, 0x5b6db

    .line 189
    .line 190
    and-int v0, v17, v0

    .line 191
    .line 192
    .line 193
    const v12, 0x12492

    .line 194
    .line 195
    if-ne v0, v12, :cond_13

    .line 196
    .line 197
    .line 198
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->b()Z

    .line 199
    move-result v0

    .line 200
    .line 201
    if-nez v0, :cond_12

    .line 202
    goto :goto_c

    .line 203
    .line 204
    .line 205
    :cond_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->g()V

    .line 206
    move-object v3, v2

    .line 207
    move-object v10, v6

    .line 208
    move-object v5, v11

    .line 209
    .line 210
    goto/16 :goto_13

    .line 211
    .line 212
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 213
    .line 214
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 215
    .line 216
    move-object/from16 v18, v0

    .line 217
    goto :goto_d

    .line 218
    .line 219
    :cond_14
    move-object/from16 v18, v2

    .line 220
    :goto_d
    const/4 v2, 0x1

    .line 221
    .line 222
    if-eqz v3, :cond_15

    .line 223
    .line 224
    move/from16 v19, v2

    .line 225
    goto :goto_e

    .line 226
    .line 227
    :cond_15
    move/from16 v19, v4

    .line 228
    .line 229
    :goto_e
    if-eqz v10, :cond_17

    .line 230
    .line 231
    .line 232
    const v0, -0x1d58f75c

    .line 233
    .line 234
    .line 235
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    if-ne v0, v1, :cond_16

    .line 248
    .line 249
    .line 250
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    .line 254
    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_16
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 258
    .line 259
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 260
    .line 261
    move-object/from16 v20, v0

    .line 262
    goto :goto_f

    .line 263
    .line 264
    :cond_17
    move-object/from16 v20, v11

    .line 265
    .line 266
    .line 267
    :goto_f
    invoke-static/range {v18 .. v18}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 268
    move-result-object v0

    .line 269
    .line 270
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->b()I

    .line 274
    move-result v1

    .line 275
    const/4 v10, 0x0

    .line 276
    .line 277
    sget v11, Landroidx/compose/material/IconButtonKt;->RippleRadius:F

    .line 278
    .line 279
    const-wide/16 v12, 0x0

    .line 280
    .line 281
    const/16 v15, 0x36

    .line 282
    .line 283
    const/16 v16, 0x4

    .line 284
    move-object v14, v6

    .line 285
    .line 286
    .line 287
    invoke-static/range {v10 .. v16}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 288
    move-result-object v3

    .line 289
    .line 290
    .line 291
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 292
    move-result-object v10

    .line 293
    .line 294
    move/from16 v1, p0

    .line 295
    move v11, v2

    .line 296
    .line 297
    move-object/from16 v2, v20

    .line 298
    .line 299
    move/from16 v4, v19

    .line 300
    move-object v5, v10

    .line 301
    move-object v10, v6

    .line 302
    .line 303
    move-object/from16 v6, p1

    .line 304
    .line 305
    .line 306
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->b(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->e()Landroidx/compose/ui/Alignment;

    .line 313
    move-result-object v1

    .line 314
    .line 315
    .line 316
    const v2, 0x2bb5b5d7

    .line 317
    .line 318
    .line 319
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 320
    const/4 v2, 0x0

    .line 321
    const/4 v3, 0x6

    .line 322
    .line 323
    .line 324
    invoke-static {v1, v2, v10, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 325
    move-result-object v1

    .line 326
    .line 327
    .line 328
    const v4, -0x4ee9b9da

    .line 329
    .line 330
    .line 331
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 332
    .line 333
    .line 334
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 335
    move-result-object v4

    .line 336
    .line 337
    .line 338
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 339
    move-result-object v4

    .line 340
    .line 341
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 342
    .line 343
    .line 344
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 345
    move-result-object v5

    .line 346
    .line 347
    .line 348
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 349
    move-result-object v5

    .line 350
    .line 351
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 352
    .line 353
    .line 354
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 355
    move-result-object v6

    .line 356
    .line 357
    .line 358
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 359
    move-result-object v6

    .line 360
    .line 361
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 362
    .line 363
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 367
    move-result-object v13

    .line 368
    .line 369
    .line 370
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 371
    move-result-object v0

    .line 372
    .line 373
    .line 374
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 375
    move-result-object v14

    .line 376
    .line 377
    instance-of v14, v14, Landroidx/compose/runtime/Applier;

    .line 378
    .line 379
    if-nez v14, :cond_18

    .line 380
    .line 381
    .line 382
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 383
    .line 384
    .line 385
    :cond_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->e()V

    .line 386
    .line 387
    .line 388
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->r()Z

    .line 389
    move-result v14

    .line 390
    .line 391
    if-eqz v14, :cond_19

    .line 392
    .line 393
    .line 394
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 395
    goto :goto_10

    .line 396
    .line 397
    .line 398
    :cond_19
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->c()V

    .line 399
    .line 400
    .line 401
    :goto_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->L()V

    .line 402
    .line 403
    .line 404
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 405
    move-result-object v13

    .line 406
    .line 407
    .line 408
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 409
    move-result-object v14

    .line 410
    .line 411
    .line 412
    invoke-static {v13, v1, v14}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 416
    move-result-object v1

    .line 417
    .line 418
    .line 419
    invoke-static {v13, v4, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 423
    move-result-object v1

    .line 424
    .line 425
    .line 426
    invoke-static {v13, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 430
    move-result-object v1

    .line 431
    .line 432
    .line 433
    invoke-static {v13, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->o()V

    .line 437
    .line 438
    .line 439
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 440
    move-result-object v1

    .line 441
    .line 442
    .line 443
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 444
    move-result-object v1

    .line 445
    .line 446
    .line 447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 448
    move-result-object v4

    .line 449
    .line 450
    .line 451
    invoke-interface {v0, v1, v10, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    const v0, 0x7ab4aae9

    .line 455
    .line 456
    .line 457
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 458
    .line 459
    .line 460
    const v0, -0x7f65a980

    .line 461
    .line 462
    .line 463
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 464
    .line 465
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 466
    .line 467
    .line 468
    const v0, -0x19a32ec7

    .line 469
    .line 470
    .line 471
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 472
    .line 473
    if-eqz v19, :cond_1a

    .line 474
    .line 475
    .line 476
    const v0, -0x6f4477d6

    .line 477
    .line 478
    .line 479
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 480
    .line 481
    .line 482
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 483
    move-result-object v0

    .line 484
    .line 485
    .line 486
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 487
    move-result-object v0

    .line 488
    .line 489
    check-cast v0, Ljava/lang/Number;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 493
    move-result v0

    .line 494
    .line 495
    .line 496
    :goto_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 497
    goto :goto_12

    .line 498
    .line 499
    .line 500
    :cond_1a
    const v0, -0x6f4477bc

    .line 501
    .line 502
    .line 503
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 504
    .line 505
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v10, v3}, Landroidx/compose/material/ContentAlpha;->b(Landroidx/compose/runtime/Composer;I)F

    .line 509
    move-result v0

    .line 510
    goto :goto_11

    .line 511
    .line 512
    :goto_12
    new-array v1, v11, [Landroidx/compose/runtime/ProvidedValue;

    .line 513
    .line 514
    .line 515
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 516
    move-result-object v3

    .line 517
    .line 518
    .line 519
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 520
    move-result-object v0

    .line 521
    .line 522
    .line 523
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 524
    move-result-object v0

    .line 525
    .line 526
    aput-object v0, v1, v2

    .line 527
    .line 528
    shr-int/lit8 v0, v17, 0xc

    .line 529
    .line 530
    and-int/lit8 v0, v0, 0x70

    .line 531
    .line 532
    or-int/lit8 v0, v0, 0x8

    .line 533
    .line 534
    .line 535
    invoke-static {v1, v8, v10, v0}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 536
    .line 537
    .line 538
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 539
    .line 540
    .line 541
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 542
    .line 543
    .line 544
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 545
    .line 546
    .line 547
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->d()V

    .line 548
    .line 549
    .line 550
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 551
    .line 552
    .line 553
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 554
    .line 555
    move-object/from16 v3, v18

    .line 556
    .line 557
    move/from16 v4, v19

    .line 558
    .line 559
    move-object/from16 v5, v20

    .line 560
    .line 561
    .line 562
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 563
    move-result-object v10

    .line 564
    .line 565
    if-nez v10, :cond_1b

    .line 566
    goto :goto_14

    .line 567
    .line 568
    :cond_1b
    new-instance v11, Landroidx/compose/material/IconButtonKt$IconToggleButton$3;

    .line 569
    move-object v0, v11

    .line 570
    .line 571
    move/from16 v1, p0

    .line 572
    .line 573
    move-object/from16 v2, p1

    .line 574
    .line 575
    move-object/from16 v6, p5

    .line 576
    .line 577
    move/from16 v7, p7

    .line 578
    .line 579
    move/from16 v8, p8

    .line 580
    .line 581
    .line 582
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/IconButtonKt$IconToggleButton$3;-><init>(ZLe8/l;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;II)V

    .line 583
    .line 584
    .line 585
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 586
    :goto_14
    return-void
.end method
