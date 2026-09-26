.class public final Landroidx/compose/material/BackdropScaffoldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackdropScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 9 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 10 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,522:1\n25#2:523\n36#2:533\n36#2:541\n50#2:548\n49#2:549\n460#2,13:577\n460#2,13:610\n473#2,3:624\n460#2,13:648\n473#2,3:662\n473#2,3:667\n67#2,3:672\n66#2:675\n1057#3,6:524\n1057#3,6:534\n1057#3,6:542\n1057#3,6:550\n1057#3,6:676\n76#4:530\n76#4:532\n76#4:556\n76#4:565\n76#4:598\n76#4:636\n1#5:531\n654#6:540\n66#7,7:557\n73#7:590\n67#7,6:591\n73#7:623\n77#7:628\n67#7,6:629\n73#7:661\n77#7:666\n77#7:671\n75#8:564\n76#8,11:566\n75#8:597\n76#8,11:599\n89#8:627\n75#8:635\n76#8,11:637\n89#8:665\n89#8:670\n76#9:682\n76#9:683\n155#10:684\n*S KotlinDebug\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt\n*L\n172#1:523\n289#1:533\n394#1:541\n402#1:548\n402#1:549\n430#1:577,13\n431#1:610,13\n431#1:624,3\n439#1:648,13\n439#1:662,3\n430#1:667,3\n458#1:672,3\n458#1:675\n172#1:524,6\n289#1:534,6\n394#1:542,6\n402#1:550,6\n458#1:676,6\n276#1:530\n277#1:532\n425#1:556\n430#1:565\n431#1:598\n439#1:636\n388#1:540\n430#1:557,7\n430#1:590\n431#1:591,6\n431#1:623\n431#1:628\n439#1:629,6\n439#1:661\n439#1:666\n430#1:671\n430#1:564\n430#1:566,11\n431#1:597\n431#1:599,11\n431#1:627\n439#1:635\n439#1:637,11\n439#1:665\n430#1:670\n389#1:682\n422#1:683\n521#1:684\n*E\n"
.end annotation


# static fields
.field private static final AnimationSlideOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x14

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
    sput v0, Landroidx/compose/material/BackdropScaffoldKt;->AnimationSlideOffset:F

    .line 10
    return-void
.end method

.method private static final a(Landroidx/compose/material/BackdropValue;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 37
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/BackdropValue;",
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
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move/from16 v3, p4

    .line 9
    .line 10
    .line 11
    const v4, -0x38aeaa60    # -53589.625f

    .line 12
    .line 13
    move-object/from16 v5, p3

    .line 14
    .line 15
    .line 16
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    and-int/lit8 v5, v3, 0xe

    .line 20
    .line 21
    if-nez v5, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 25
    move-result v5

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    const/4 v5, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x2

    .line 31
    :goto_0
    or-int/2addr v5, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v3

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v6, v3, 0x70

    .line 36
    .line 37
    if-nez v6, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 41
    move-result v6

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    const/16 v6, 0x20

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    const/16 v6, 0x10

    .line 49
    :goto_2
    or-int/2addr v5, v6

    .line 50
    .line 51
    :cond_3
    and-int/lit16 v6, v3, 0x380

    .line 52
    .line 53
    if-nez v6, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 57
    move-result v6

    .line 58
    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    const/16 v6, 0x100

    .line 62
    goto :goto_3

    .line 63
    .line 64
    :cond_4
    const/16 v6, 0x80

    .line 65
    :goto_3
    or-int/2addr v5, v6

    .line 66
    :cond_5
    move v12, v5

    .line 67
    .line 68
    and-int/lit16 v5, v12, 0x2db

    .line 69
    .line 70
    const/16 v6, 0x92

    .line 71
    .line 72
    if-ne v5, v6, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->b()Z

    .line 76
    move-result v5

    .line 77
    .line 78
    if-nez v5, :cond_6

    .line 79
    goto :goto_4

    .line 80
    .line 81
    .line 82
    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->g()V

    .line 83
    .line 84
    goto/16 :goto_9

    .line 85
    .line 86
    :cond_7
    :goto_4
    sget-object v5, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    .line 87
    const/4 v13, 0x0

    .line 88
    .line 89
    if-ne v0, v5, :cond_8

    .line 90
    move v5, v13

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :cond_8
    const/high16 v5, 0x40000000    # 2.0f

    .line 94
    .line 95
    :goto_5
    new-instance v14, Landroidx/compose/animation/core/TweenSpec;

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x0

    .line 98
    const/4 v9, 0x0

    .line 99
    const/4 v10, 0x7

    .line 100
    const/4 v11, 0x0

    .line 101
    move-object v6, v14

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v6 .. v11}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/k;)V

    .line 105
    const/4 v7, 0x0

    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v10, 0x0

    .line 108
    .line 109
    const/16 v11, 0xc

    .line 110
    move-object v9, v4

    .line 111
    .line 112
    .line 113
    invoke-static/range {v5 .. v11}, Landroidx/compose/animation/core/AnimateAsStateKt;->d(FLandroidx/compose/animation/core/AnimationSpec;FLe8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 114
    move-result-object v5

    .line 115
    .line 116
    .line 117
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 118
    move-result-object v6

    .line 119
    .line 120
    .line 121
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 122
    move-result-object v6

    .line 123
    .line 124
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 125
    .line 126
    sget v7, Landroidx/compose/material/BackdropScaffoldKt;->AnimationSlideOffset:F

    .line 127
    .line 128
    .line 129
    invoke-interface {v6, v7}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 130
    move-result v6

    .line 131
    .line 132
    .line 133
    invoke-static {v5}, Landroidx/compose/material/BackdropScaffoldKt;->b(Landroidx/compose/runtime/State;)F

    .line 134
    move-result v7

    .line 135
    const/4 v8, 0x1

    .line 136
    int-to-float v8, v8

    .line 137
    sub-float/2addr v7, v8

    .line 138
    .line 139
    const/high16 v9, 0x3f800000    # 1.0f

    .line 140
    .line 141
    .line 142
    invoke-static {v7, v13, v9}, Lj8/m;->m(FFF)F

    .line 143
    move-result v7

    .line 144
    .line 145
    .line 146
    invoke-static {v5}, Landroidx/compose/material/BackdropScaffoldKt;->b(Landroidx/compose/runtime/State;)F

    .line 147
    move-result v5

    .line 148
    .line 149
    sub-float v5, v8, v5

    .line 150
    .line 151
    .line 152
    invoke-static {v5, v13, v9}, Lj8/m;->m(FFF)F

    .line 153
    move-result v5

    .line 154
    .line 155
    .line 156
    const v9, 0x2bb5b5d7

    .line 157
    .line 158
    .line 159
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 160
    .line 161
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 162
    .line 163
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 167
    move-result-object v13

    .line 168
    const/4 v15, 0x0

    .line 169
    .line 170
    .line 171
    invoke-static {v13, v15, v4, v15}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 172
    move-result-object v13

    .line 173
    .line 174
    .line 175
    const v14, -0x4ee9b9da

    .line 176
    .line 177
    .line 178
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 182
    move-result-object v14

    .line 183
    .line 184
    .line 185
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 186
    move-result-object v14

    .line 187
    .line 188
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 189
    .line 190
    .line 191
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 192
    move-result-object v9

    .line 193
    .line 194
    .line 195
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 196
    move-result-object v9

    .line 197
    .line 198
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 199
    .line 200
    .line 201
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 202
    move-result-object v15

    .line 203
    .line 204
    .line 205
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 206
    move-result-object v15

    .line 207
    .line 208
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 209
    .line 210
    sget-object v36, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    .line 217
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 218
    move-result-object v3

    .line 219
    .line 220
    .line 221
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 222
    move-result-object v2

    .line 223
    .line 224
    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    .line 225
    .line 226
    if-nez v2, :cond_9

    .line 227
    .line 228
    .line 229
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 230
    .line 231
    .line 232
    :cond_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->e()V

    .line 233
    .line 234
    .line 235
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()Z

    .line 236
    move-result v2

    .line 237
    .line 238
    if-eqz v2, :cond_a

    .line 239
    .line 240
    .line 241
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 242
    goto :goto_6

    .line 243
    .line 244
    .line 245
    :cond_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->c()V

    .line 246
    .line 247
    .line 248
    :goto_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->L()V

    .line 249
    .line 250
    .line 251
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    .line 255
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 256
    move-result-object v2

    .line 257
    .line 258
    .line 259
    invoke-static {v0, v13, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 263
    move-result-object v2

    .line 264
    .line 265
    .line 266
    invoke-static {v0, v14, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 270
    move-result-object v2

    .line 271
    .line 272
    .line 273
    invoke-static {v0, v9, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 277
    move-result-object v2

    .line 278
    .line 279
    .line 280
    invoke-static {v0, v15, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    .line 284
    .line 285
    .line 286
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 287
    move-result-object v0

    .line 288
    .line 289
    .line 290
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 291
    move-result-object v0

    .line 292
    const/4 v2, 0x0

    .line 293
    .line 294
    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    move-result-object v9

    .line 297
    .line 298
    .line 299
    invoke-interface {v3, v0, v4, v9}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const v0, 0x7ab4aae9

    .line 303
    .line 304
    .line 305
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 306
    .line 307
    .line 308
    const v3, -0x7f65a980

    .line 309
    .line 310
    .line 311
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 312
    .line 313
    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 314
    .line 315
    .line 316
    const v9, 0x7b21ada6

    .line 317
    .line 318
    .line 319
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 320
    .line 321
    .line 322
    invoke-static {v10, v7}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 323
    move-result-object v14

    .line 324
    .line 325
    .line 326
    const v9, -0x4ee9b9da

    .line 327
    const/4 v15, 0x0

    .line 328
    .line 329
    const/16 v16, 0x0

    .line 330
    .line 331
    const/16 v18, 0x0

    .line 332
    .line 333
    sub-float v13, v8, v7

    .line 334
    .line 335
    mul-float v19, v13, v6

    .line 336
    .line 337
    const/16 v20, 0x0

    .line 338
    .line 339
    const/16 v21, 0x0

    .line 340
    .line 341
    const/16 v22, 0x0

    .line 342
    .line 343
    const/16 v23, 0x0

    .line 344
    .line 345
    const/16 v24, 0x0

    .line 346
    .line 347
    const-wide/16 v25, 0x0

    .line 348
    .line 349
    const/16 v27, 0x0

    .line 350
    .line 351
    const/16 v28, 0x0

    .line 352
    .line 353
    const/16 v29, 0x0

    .line 354
    .line 355
    const-wide/16 v30, 0x0

    .line 356
    .line 357
    const-wide/16 v32, 0x0

    .line 358
    .line 359
    .line 360
    const v34, 0xffeb

    .line 361
    .line 362
    const/16 v35, 0x0

    .line 363
    .line 364
    move/from16 v17, v7

    .line 365
    .line 366
    .line 367
    invoke-static/range {v14 .. v35}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->c(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 368
    move-result-object v7

    .line 369
    .line 370
    .line 371
    const v13, 0x2bb5b5d7

    .line 372
    .line 373
    .line 374
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 378
    move-result-object v13

    .line 379
    .line 380
    .line 381
    invoke-static {v13, v2, v4, v2}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 382
    move-result-object v13

    .line 383
    .line 384
    .line 385
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 386
    .line 387
    .line 388
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 389
    move-result-object v14

    .line 390
    .line 391
    .line 392
    invoke-interface {v4, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 393
    move-result-object v14

    .line 394
    .line 395
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 396
    .line 397
    .line 398
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 399
    move-result-object v15

    .line 400
    .line 401
    .line 402
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 403
    move-result-object v15

    .line 404
    .line 405
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 406
    .line 407
    .line 408
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 409
    move-result-object v9

    .line 410
    .line 411
    .line 412
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 413
    move-result-object v9

    .line 414
    .line 415
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 416
    .line 417
    .line 418
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 419
    move-result-object v3

    .line 420
    .line 421
    .line 422
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 423
    move-result-object v7

    .line 424
    .line 425
    .line 426
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 427
    move-result-object v0

    .line 428
    .line 429
    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    .line 430
    .line 431
    if-nez v0, :cond_b

    .line 432
    .line 433
    .line 434
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 435
    .line 436
    .line 437
    :cond_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->e()V

    .line 438
    .line 439
    .line 440
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()Z

    .line 441
    move-result v0

    .line 442
    .line 443
    if-eqz v0, :cond_c

    .line 444
    .line 445
    .line 446
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 447
    goto :goto_7

    .line 448
    .line 449
    .line 450
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->c()V

    .line 451
    .line 452
    .line 453
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->L()V

    .line 454
    .line 455
    .line 456
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 457
    move-result-object v0

    .line 458
    .line 459
    .line 460
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 461
    move-result-object v3

    .line 462
    .line 463
    .line 464
    invoke-static {v0, v13, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 468
    move-result-object v3

    .line 469
    .line 470
    .line 471
    invoke-static {v0, v14, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 475
    move-result-object v3

    .line 476
    .line 477
    .line 478
    invoke-static {v0, v15, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 482
    move-result-object v3

    .line 483
    .line 484
    .line 485
    invoke-static {v0, v9, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 486
    .line 487
    .line 488
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    .line 489
    .line 490
    .line 491
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 492
    move-result-object v0

    .line 493
    .line 494
    .line 495
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 496
    move-result-object v0

    .line 497
    .line 498
    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    move-result-object v3

    .line 501
    .line 502
    .line 503
    invoke-interface {v7, v0, v4, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    const v0, 0x7ab4aae9

    .line 507
    .line 508
    .line 509
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 510
    .line 511
    .line 512
    const v0, -0x7f65a980

    .line 513
    .line 514
    .line 515
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 516
    .line 517
    .line 518
    const v0, -0x3f0b14d4

    .line 519
    .line 520
    .line 521
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 522
    .line 523
    shr-int/lit8 v0, v12, 0x3

    .line 524
    .line 525
    and-int/lit8 v0, v0, 0xe

    .line 526
    .line 527
    .line 528
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 529
    move-result-object v0

    .line 530
    .line 531
    .line 532
    invoke-interface {v1, v4, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 536
    .line 537
    .line 538
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 539
    .line 540
    .line 541
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 542
    .line 543
    .line 544
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->d()V

    .line 545
    .line 546
    .line 547
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 548
    .line 549
    .line 550
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 551
    .line 552
    .line 553
    invoke-static {v10, v5}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 554
    move-result-object v14

    .line 555
    const/4 v15, 0x0

    .line 556
    .line 557
    const/16 v16, 0x0

    .line 558
    .line 559
    const/16 v18, 0x0

    .line 560
    sub-float/2addr v8, v5

    .line 561
    neg-float v0, v6

    .line 562
    .line 563
    mul-float v19, v8, v0

    .line 564
    .line 565
    const/16 v20, 0x0

    .line 566
    .line 567
    const/16 v21, 0x0

    .line 568
    .line 569
    const/16 v22, 0x0

    .line 570
    .line 571
    const/16 v23, 0x0

    .line 572
    .line 573
    const/16 v24, 0x0

    .line 574
    .line 575
    const-wide/16 v25, 0x0

    .line 576
    .line 577
    const/16 v27, 0x0

    .line 578
    .line 579
    const/16 v28, 0x0

    .line 580
    .line 581
    const/16 v29, 0x0

    .line 582
    .line 583
    const-wide/16 v30, 0x0

    .line 584
    .line 585
    const-wide/16 v32, 0x0

    .line 586
    .line 587
    .line 588
    const v34, 0xffeb

    .line 589
    .line 590
    const/16 v35, 0x0

    .line 591
    .line 592
    move/from16 v17, v5

    .line 593
    .line 594
    .line 595
    invoke-static/range {v14 .. v35}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->c(Landroidx/compose/ui/Modifier;FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/graphics/RenderEffect;JJILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 596
    move-result-object v0

    .line 597
    .line 598
    .line 599
    const v3, 0x2bb5b5d7

    .line 600
    .line 601
    .line 602
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 606
    move-result-object v3

    .line 607
    .line 608
    .line 609
    invoke-static {v3, v2, v4, v2}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 610
    move-result-object v3

    .line 611
    .line 612
    .line 613
    const v5, -0x4ee9b9da

    .line 614
    .line 615
    .line 616
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 617
    .line 618
    .line 619
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 620
    move-result-object v5

    .line 621
    .line 622
    .line 623
    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 624
    move-result-object v5

    .line 625
    .line 626
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 627
    .line 628
    .line 629
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 630
    move-result-object v6

    .line 631
    .line 632
    .line 633
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 634
    move-result-object v6

    .line 635
    .line 636
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 637
    .line 638
    .line 639
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 640
    move-result-object v7

    .line 641
    .line 642
    .line 643
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 644
    move-result-object v7

    .line 645
    .line 646
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 647
    .line 648
    .line 649
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 650
    move-result-object v8

    .line 651
    .line 652
    .line 653
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 654
    move-result-object v0

    .line 655
    .line 656
    .line 657
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 658
    move-result-object v9

    .line 659
    .line 660
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 661
    .line 662
    if-nez v9, :cond_d

    .line 663
    .line 664
    .line 665
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 666
    .line 667
    .line 668
    :cond_d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->e()V

    .line 669
    .line 670
    .line 671
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()Z

    .line 672
    move-result v9

    .line 673
    .line 674
    if-eqz v9, :cond_e

    .line 675
    .line 676
    .line 677
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 678
    goto :goto_8

    .line 679
    .line 680
    .line 681
    :cond_e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->c()V

    .line 682
    .line 683
    .line 684
    :goto_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->L()V

    .line 685
    .line 686
    .line 687
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 688
    move-result-object v8

    .line 689
    .line 690
    .line 691
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 692
    move-result-object v9

    .line 693
    .line 694
    .line 695
    invoke-static {v8, v3, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 699
    move-result-object v3

    .line 700
    .line 701
    .line 702
    invoke-static {v8, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 706
    move-result-object v3

    .line 707
    .line 708
    .line 709
    invoke-static {v8, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 713
    move-result-object v3

    .line 714
    .line 715
    .line 716
    invoke-static {v8, v7, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 717
    .line 718
    .line 719
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    .line 720
    .line 721
    .line 722
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 723
    move-result-object v3

    .line 724
    .line 725
    .line 726
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 727
    move-result-object v3

    .line 728
    .line 729
    .line 730
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 731
    move-result-object v2

    .line 732
    .line 733
    .line 734
    invoke-interface {v0, v3, v4, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    const v0, 0x7ab4aae9

    .line 738
    .line 739
    .line 740
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 741
    .line 742
    .line 743
    const v0, -0x7f65a980

    .line 744
    .line 745
    .line 746
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 747
    .line 748
    .line 749
    const v0, -0x28533e5d

    .line 750
    .line 751
    .line 752
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 753
    .line 754
    shr-int/lit8 v0, v12, 0x6

    .line 755
    .line 756
    and-int/lit8 v0, v0, 0xe

    .line 757
    .line 758
    .line 759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    move-result-object v0

    .line 761
    .line 762
    move-object/from16 v2, p2

    .line 763
    .line 764
    .line 765
    invoke-interface {v2, v4, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 769
    .line 770
    .line 771
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 772
    .line 773
    .line 774
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 775
    .line 776
    .line 777
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->d()V

    .line 778
    .line 779
    .line 780
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 781
    .line 782
    .line 783
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 784
    .line 785
    .line 786
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 787
    .line 788
    .line 789
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 790
    .line 791
    .line 792
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 793
    .line 794
    .line 795
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->d()V

    .line 796
    .line 797
    .line 798
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 799
    .line 800
    .line 801
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 802
    .line 803
    .line 804
    :goto_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 805
    move-result-object v0

    .line 806
    .line 807
    if-nez v0, :cond_f

    .line 808
    goto :goto_a

    .line 809
    .line 810
    :cond_f
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$2;

    .line 811
    .line 812
    move-object/from16 v4, p0

    .line 813
    .line 814
    move/from16 v5, p4

    .line 815
    .line 816
    .line 817
    invoke-direct {v3, v4, v1, v2, v5}, Landroidx/compose/material/BackdropScaffoldKt$BackLayerTransition$2;-><init>(Landroidx/compose/material/BackdropValue;Le8/p;Le8/p;I)V

    .line 818
    .line 819
    .line 820
    invoke-interface {v0, v3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 821
    :goto_a
    return-void
.end method

.method private static final b(Landroidx/compose/runtime/State;)F
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

.method public static final c(Le8/p;Le8/p;Le8/p;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLe8/q;Landroidx/compose/runtime/Composer;III)V
    .locals 53
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/material/BackdropScaffoldState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "ZFFZZJJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
            "Le8/q<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v14, p24

    move/from16 v15, p25

    move/from16 v13, p26

    const-string v3, "appBar"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "backLayerContent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "frontLayerContent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x534af03d

    move-object/from16 v4, p23

    .line 1
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v14, 0xe

    if-nez v3, :cond_2

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v14

    goto :goto_1

    :cond_2
    move v3, v14

    :goto_1
    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v14, 0x70

    if-nez v6, :cond_5

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v13, 0x4

    const/16 v9, 0x80

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_8

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    move v6, v9

    :goto_4
    or-int/2addr v3, v6

    :cond_8
    :goto_5
    and-int/lit8 v6, v13, 0x8

    const/16 v16, 0x800

    if-eqz v6, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v4, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v4, v14, 0x1c00

    if-nez v4, :cond_9

    move-object/from16 v4, p3

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v17, v16

    goto :goto_6

    :cond_b
    const/16 v17, 0x400

    :goto_6
    or-int v3, v3, v17

    :goto_7
    const v17, 0xe000

    and-int v17, v14, v17

    const/16 v18, 0x2000

    const/16 v19, 0x4000

    if-nez v17, :cond_d

    and-int/lit8 v17, v13, 0x10

    move-object/from16 v5, p4

    if-nez v17, :cond_c

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    move/from16 v20, v19

    goto :goto_8

    :cond_c
    move/from16 v20, v18

    :goto_8
    or-int v3, v3, v20

    goto :goto_9

    :cond_d
    move-object/from16 v5, p4

    :goto_9
    and-int/lit8 v20, v13, 0x20

    const/high16 v21, 0x20000

    const/high16 v22, 0x10000

    if-eqz v20, :cond_e

    const/high16 v23, 0x30000

    or-int v3, v3, v23

    move/from16 v11, p5

    goto :goto_b

    :cond_e
    const/high16 v23, 0x70000

    and-int v23, v14, v23

    move/from16 v11, p5

    if-nez v23, :cond_10

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v24

    if-eqz v24, :cond_f

    move/from16 v24, v21

    goto :goto_a

    :cond_f
    move/from16 v24, v22

    :goto_a
    or-int v3, v3, v24

    :cond_10
    :goto_b
    and-int/lit8 v24, v13, 0x40

    if-eqz v24, :cond_11

    const/high16 v25, 0x180000

    or-int v3, v3, v25

    move/from16 v10, p6

    goto :goto_d

    :cond_11
    const/high16 v25, 0x380000

    and-int v25, v14, v25

    move/from16 v10, p6

    if-nez v25, :cond_13

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v26

    if-eqz v26, :cond_12

    const/high16 v26, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v26, 0x80000

    :goto_c
    or-int v3, v3, v26

    :cond_13
    :goto_d
    and-int/lit16 v10, v13, 0x80

    if-eqz v10, :cond_15

    const/high16 v26, 0xc00000

    or-int v3, v3, v26

    :cond_14
    move/from16 v26, v10

    move/from16 v10, p7

    goto :goto_f

    :cond_15
    const/high16 v26, 0x1c00000

    and-int v26, v14, v26

    if-nez v26, :cond_14

    move/from16 v26, v10

    move/from16 v10, p7

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v27

    if-eqz v27, :cond_16

    const/high16 v27, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v27, 0x400000

    :goto_e
    or-int v3, v3, v27

    :goto_f
    and-int/lit16 v10, v13, 0x100

    if-eqz v10, :cond_18

    const/high16 v27, 0x6000000

    or-int v3, v3, v27

    :cond_17
    move/from16 v27, v10

    move/from16 v10, p8

    goto :goto_11

    :cond_18
    const/high16 v27, 0xe000000

    and-int v27, v14, v27

    if-nez v27, :cond_17

    move/from16 v27, v10

    move/from16 v10, p8

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v28

    if-eqz v28, :cond_19

    const/high16 v28, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v28, 0x2000000

    :goto_10
    or-int v3, v3, v28

    :goto_11
    and-int/lit16 v10, v13, 0x200

    if-eqz v10, :cond_1b

    const/high16 v28, 0x30000000

    or-int v3, v3, v28

    :cond_1a
    move/from16 v28, v10

    move/from16 v10, p9

    goto :goto_13

    :cond_1b
    const/high16 v28, 0x70000000

    and-int v28, v14, v28

    if-nez v28, :cond_1a

    move/from16 v28, v10

    move/from16 v10, p9

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->m(Z)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/high16 v29, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v29, 0x10000000

    :goto_12
    or-int v3, v3, v29

    :goto_13
    and-int/lit8 v29, v15, 0xe

    if-nez v29, :cond_1e

    and-int/lit16 v7, v13, 0x400

    move-wide/from16 v10, p10

    if-nez v7, :cond_1d

    invoke-interface {v12, v10, v11}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/16 v17, 0x4

    goto :goto_14

    :cond_1d
    const/16 v17, 0x2

    :goto_14
    or-int v7, v15, v17

    goto :goto_15

    :cond_1e
    move-wide/from16 v10, p10

    move v7, v15

    :goto_15
    and-int/lit8 v17, v15, 0x70

    if-nez v17, :cond_20

    and-int/lit16 v8, v13, 0x800

    move-wide/from16 v10, p12

    if-nez v8, :cond_1f

    invoke-interface {v12, v10, v11}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v8

    if-eqz v8, :cond_1f

    const/16 v29, 0x20

    goto :goto_16

    :cond_1f
    const/16 v29, 0x10

    :goto_16
    or-int v7, v7, v29

    goto :goto_17

    :cond_20
    move-wide/from16 v10, p12

    :goto_17
    and-int/lit16 v8, v15, 0x380

    if-nez v8, :cond_23

    and-int/lit16 v8, v13, 0x1000

    if-nez v8, :cond_21

    move-object/from16 v8, p14

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    const/16 v9, 0x100

    goto :goto_18

    :cond_21
    move-object/from16 v8, p14

    :cond_22
    :goto_18
    or-int/2addr v7, v9

    goto :goto_19

    :cond_23
    move-object/from16 v8, p14

    :goto_19
    and-int/lit16 v9, v13, 0x2000

    if-eqz v9, :cond_25

    or-int/lit16 v7, v7, 0xc00

    :cond_24
    move/from16 v0, p15

    goto :goto_1b

    :cond_25
    and-int/lit16 v0, v15, 0x1c00

    if-nez v0, :cond_24

    move/from16 v0, p15

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->n(F)Z

    move-result v17

    if-eqz v17, :cond_26

    move/from16 v23, v16

    goto :goto_1a

    :cond_26
    const/16 v23, 0x400

    :goto_1a
    or-int v7, v7, v23

    :goto_1b
    const v16, 0xe000

    and-int v16, v15, v16

    if-nez v16, :cond_28

    and-int/lit16 v0, v13, 0x4000

    move-wide/from16 v10, p16

    if-nez v0, :cond_27

    invoke-interface {v12, v10, v11}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v0

    if-eqz v0, :cond_27

    move/from16 v18, v19

    :cond_27
    or-int v7, v7, v18

    goto :goto_1c

    :cond_28
    move-wide/from16 v10, p16

    :goto_1c
    const/high16 v0, 0x70000

    and-int/2addr v0, v15

    const v16, 0x8000

    if-nez v0, :cond_2a

    and-int v0, v13, v16

    move-wide/from16 v10, p18

    if-nez v0, :cond_29

    invoke-interface {v12, v10, v11}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v0

    if-eqz v0, :cond_29

    move/from16 v0, v21

    goto :goto_1d

    :cond_29
    move/from16 v0, v22

    :goto_1d
    or-int/2addr v7, v0

    goto :goto_1e

    :cond_2a
    move-wide/from16 v10, p18

    :goto_1e
    const/high16 v0, 0x380000

    and-int/2addr v0, v15

    if-nez v0, :cond_2c

    and-int v0, v13, v22

    move-wide/from16 v10, p20

    if-nez v0, :cond_2b

    invoke-interface {v12, v10, v11}, Landroidx/compose/runtime/Composer;->q(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/high16 v0, 0x100000

    goto :goto_1f

    :cond_2b
    const/high16 v0, 0x80000

    :goto_1f
    or-int/2addr v7, v0

    goto :goto_20

    :cond_2c
    move-wide/from16 v10, p20

    :goto_20
    and-int v0, v13, v21

    if-eqz v0, :cond_2e

    const/high16 v17, 0xc00000

    or-int v7, v7, v17

    move-object/from16 v10, p22

    :cond_2d
    :goto_21
    move v11, v7

    goto :goto_23

    :cond_2e
    const/high16 v17, 0x1c00000

    and-int v17, v15, v17

    move-object/from16 v10, p22

    if-nez v17, :cond_2d

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    const/high16 v11, 0x800000

    goto :goto_22

    :cond_2f
    const/high16 v11, 0x400000

    :goto_22
    or-int/2addr v7, v11

    goto :goto_21

    :goto_23
    const v7, 0x5b6db6db

    and-int/2addr v7, v3

    const v1, 0x12492492

    if-ne v7, v1, :cond_31

    const v1, 0x16db6db

    and-int/2addr v1, v11

    const v7, 0x492492

    if-ne v1, v7, :cond_31

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_24

    .line 2
    :cond_30
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v13, p12

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move-wide/from16 v21, p20

    move-object v15, v8

    move-object/from16 v23, v10

    move-object v1, v12

    move/from16 v8, p7

    move/from16 v10, p9

    move-wide/from16 v11, p10

    goto/16 :goto_37

    .line 3
    :cond_31
    :goto_24
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->J()V

    and-int/lit8 v1, v14, 0x1

    const v17, -0xe001

    const/4 v7, 0x6

    const/4 v10, 0x1

    if-eqz v1, :cond_3a

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->h()Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_25

    .line 4
    :cond_32
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_33

    and-int v3, v3, v17

    :cond_33
    and-int/lit16 v0, v13, 0x400

    if-eqz v0, :cond_34

    and-int/lit8 v11, v11, -0xf

    :cond_34
    and-int/lit16 v0, v13, 0x800

    if-eqz v0, :cond_35

    and-int/lit8 v11, v11, -0x71

    :cond_35
    and-int/lit16 v0, v13, 0x1000

    if-eqz v0, :cond_36

    and-int/lit16 v11, v11, -0x381

    :cond_36
    and-int/lit16 v0, v13, 0x4000

    if-eqz v0, :cond_37

    and-int v11, v11, v17

    :cond_37
    and-int v0, v13, v16

    if-eqz v0, :cond_38

    const v0, -0x70001

    and-int/2addr v11, v0

    :cond_38
    and-int v0, v13, v22

    if-eqz v0, :cond_39

    const v0, -0x380001

    and-int/2addr v11, v0

    :cond_39
    move/from16 v2, p5

    move/from16 v10, p7

    move/from16 v27, p8

    move/from16 v28, p9

    move-wide/from16 v30, p10

    move-wide/from16 v32, p12

    move/from16 v34, p15

    move-wide/from16 v35, p16

    move-wide/from16 v37, p18

    move-wide/from16 v39, p20

    move-object/from16 v41, p22

    move/from16 v16, v3

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v29, v8

    move/from16 v42, v11

    move/from16 v11, p6

    goto/16 :goto_36

    :cond_3a
    :goto_25
    if-eqz v6, :cond_3b

    .line 5
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_26

    :cond_3b
    move-object v1, v4

    :goto_26
    and-int/lit8 v4, v13, 0x10

    if-eqz v4, :cond_3c

    .line 6
    sget-object v4, Landroidx/compose/material/BackdropValue;->Concealed:Landroidx/compose/material/BackdropValue;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v21, 0xe

    move-object/from16 v7, v18

    move-object v8, v12

    move/from16 v18, v9

    move/from16 v9, v19

    move-object/from16 p3, v1

    move v1, v10

    move/from16 v19, v26

    move/from16 v23, v27

    move/from16 v25, v28

    move/from16 v10, v21

    invoke-static/range {v4 .. v10}, Landroidx/compose/material/BackdropScaffoldKt;->k(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;

    move-result-object v4

    and-int v3, v3, v17

    move-object v5, v4

    goto :goto_27

    :cond_3c
    move-object/from16 p3, v1

    move/from16 v18, v9

    move v1, v10

    move/from16 v19, v26

    move/from16 v23, v27

    move/from16 v25, v28

    :goto_27
    if-eqz v20, :cond_3d

    move v4, v1

    goto :goto_28

    :cond_3d
    move/from16 v4, p5

    :goto_28
    if-eqz v24, :cond_3e

    .line 7
    sget-object v6, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v6}, Landroidx/compose/material/BackdropScaffoldDefaults;->e()F

    move-result v6

    goto :goto_29

    :cond_3e
    move/from16 v6, p6

    :goto_29
    if-eqz v19, :cond_3f

    .line 8
    sget-object v7, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v7}, Landroidx/compose/material/BackdropScaffoldDefaults;->d()F

    move-result v7

    goto :goto_2a

    :cond_3f
    move/from16 v7, p7

    :goto_2a
    if-eqz v23, :cond_40

    move v8, v1

    goto :goto_2b

    :cond_40
    move/from16 v8, p8

    :goto_2b
    if-eqz v25, :cond_41

    move v9, v1

    goto :goto_2c

    :cond_41
    move/from16 v9, p9

    :goto_2c
    and-int/lit16 v10, v13, 0x400

    if-eqz v10, :cond_42

    .line 9
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v1, 0x6

    invoke-virtual {v10, v12, v1}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/material/Colors;->j()J

    move-result-wide v19

    and-int/lit8 v11, v11, -0xf

    move-wide/from16 v51, v19

    move/from16 v19, v11

    move-wide/from16 v10, v51

    goto :goto_2d

    :cond_42
    const/4 v1, 0x6

    move/from16 v19, v11

    move-wide/from16 v10, p10

    :goto_2d
    and-int/lit16 v1, v13, 0x800

    if-eqz v1, :cond_43

    and-int/lit8 v1, v19, 0xe

    .line 10
    invoke-static {v10, v11, v12, v1}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v20

    and-int/lit8 v19, v19, -0x71

    :goto_2e
    move/from16 v1, v19

    goto :goto_2f

    :cond_43
    move-wide/from16 v20, p12

    goto :goto_2e

    :goto_2f
    and-int/lit16 v2, v13, 0x1000

    if-eqz v2, :cond_44

    .line 11
    sget-object v2, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    move/from16 p4, v3

    const/4 v3, 0x6

    invoke-virtual {v2, v12, v3}, Landroidx/compose/material/BackdropScaffoldDefaults;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    and-int/lit16 v1, v1, -0x381

    goto :goto_30

    :cond_44
    move/from16 p4, v3

    move-object/from16 v2, p14

    :goto_30
    if-eqz v18, :cond_45

    .line 12
    sget-object v3, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    invoke-virtual {v3}, Landroidx/compose/material/BackdropScaffoldDefaults;->a()F

    move-result v3

    goto :goto_31

    :cond_45
    move/from16 v3, p15

    :goto_31
    move-object/from16 p5, v2

    and-int/lit16 v2, v13, 0x4000

    if-eqz v2, :cond_46

    .line 13
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    move/from16 p6, v3

    const/4 v3, 0x6

    invoke-virtual {v2, v12, v3}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/material/Colors;->n()J

    move-result-wide v2

    and-int v1, v1, v17

    goto :goto_32

    :cond_46
    move/from16 p6, v3

    move-wide/from16 v2, p16

    :goto_32
    and-int v16, v13, v16

    if-eqz v16, :cond_47

    shr-int/lit8 v16, v1, 0xc

    move/from16 p23, v4

    and-int/lit8 v4, v16, 0xe

    .line 14
    invoke-static {v2, v3, v12, v4}, Landroidx/compose/material/ColorsKt;->b(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v16

    const v4, -0x70001

    and-int/2addr v1, v4

    goto :goto_33

    :cond_47
    move/from16 p23, v4

    move-wide/from16 v16, p18

    :goto_33
    and-int v4, v13, v22

    if-eqz v4, :cond_48

    .line 15
    sget-object v4, Landroidx/compose/material/BackdropScaffoldDefaults;->INSTANCE:Landroidx/compose/material/BackdropScaffoldDefaults;

    move-wide/from16 v18, v2

    const/4 v2, 0x6

    invoke-virtual {v4, v12, v2}, Landroidx/compose/material/BackdropScaffoldDefaults;->b(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v3

    const v2, -0x380001

    and-int/2addr v1, v2

    goto :goto_34

    :cond_48
    move-wide/from16 v18, v2

    move-wide/from16 v3, p20

    :goto_34
    if-eqz v0, :cond_49

    sget-object v0, Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;

    invoke-virtual {v0}, Landroidx/compose/material/ComposableSingletons$BackdropScaffoldKt;->a()Le8/q;

    move-result-object v0

    move-object/from16 v29, p5

    move/from16 v34, p6

    move/from16 v2, p23

    move-object/from16 v41, v0

    move/from16 v42, v1

    move-wide/from16 v39, v3

    move-object v1, v5

    move/from16 v27, v8

    move/from16 v28, v9

    move-wide/from16 v30, v10

    move-wide/from16 v37, v16

    move-wide/from16 v35, v18

    move-wide/from16 v32, v20

    move-object/from16 v0, p3

    :goto_35
    move/from16 v16, p4

    move v11, v6

    move v10, v7

    goto :goto_36

    :cond_49
    move-object/from16 v0, p3

    move-object/from16 v29, p5

    move/from16 v34, p6

    move-object/from16 v41, p22

    move/from16 v2, p23

    move/from16 v42, v1

    move-wide/from16 v39, v3

    move-object v1, v5

    move/from16 v27, v8

    move/from16 v28, v9

    move-wide/from16 v30, v10

    move-wide/from16 v37, v16

    move-wide/from16 v35, v18

    move-wide/from16 v32, v20

    goto :goto_35

    :goto_36
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->A()V

    .line 16
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 17
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Landroidx/compose/ui/unit/Density;

    invoke-interface {v3, v11}, Landroidx/compose/ui/unit/Density;->H0(F)F

    move-result v17

    .line 19
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 20
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Landroidx/compose/ui/unit/Density;

    invoke-interface {v3, v10}, Landroidx/compose/ui/unit/Density;->H0(F)F

    move-result v7

    .line 22
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;

    move-object/from16 p3, v3

    move/from16 p4, v27

    move-object/from16 p5, v1

    move-object/from16 p6, p0

    move-object/from16 p7, p1

    move/from16 p8, v16

    invoke-direct/range {p3 .. p8}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;-><init>(ZLandroidx/compose/material/BackdropScaffoldState;Le8/p;Le8/p;I)V

    const v4, 0x67ff344b

    const/4 v5, 0x1

    invoke-static {v12, v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v4, 0x44faf204

    .line 23
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    move-result v3

    .line 25
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4a

    .line 26
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_4b

    .line 27
    :cond_4a
    new-instance v4, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;

    invoke-direct {v4, v7}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$calculateBackLayerConstraints$1$1;-><init>(F)V

    .line 28
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 29
    :cond_4b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->Q()V

    .line 30
    move-object v6, v4

    check-cast v6, Le8/l;

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    .line 31
    new-instance v9, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1;

    move-object v3, v9

    move-object v4, v0

    move-object v5, v8

    move/from16 v8, v28

    move-object/from16 p15, v0

    move-object v0, v9

    move v9, v2

    move/from16 v47, v10

    move-object v10, v1

    move/from16 v48, v11

    move/from16 v11, v17

    move-object/from16 p16, v1

    move-object v1, v12

    move/from16 v12, v16

    move-object/from16 v13, v29

    move-wide/from16 v14, v35

    move-wide/from16 v16, v37

    move/from16 v18, v34

    move/from16 v19, v42

    move/from16 v20, v47

    move/from16 v21, v48

    move-object/from16 v22, p2

    move-wide/from16 v23, v39

    move-object/from16 v25, v41

    invoke-direct/range {v3 .. v25}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1;-><init>(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;FZZLandroidx/compose/material/BackdropScaffoldState;FILandroidx/compose/ui/graphics/Shape;JJFIFFLe8/p;JLe8/q;)V

    const v3, -0x3e94597f

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/4 v3, 0x6

    shl-int/lit8 v3, v42, 0x6

    and-int/lit16 v4, v3, 0x380

    const/high16 v5, 0x180000

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v3, v4

    const/16 v4, 0x33

    move-object/from16 p3, v43

    move-object/from16 p4, v44

    move-wide/from16 p5, v30

    move-wide/from16 p7, v32

    move-object/from16 p9, v45

    move/from16 p10, v46

    move-object/from16 p11, v0

    move-object/from16 p12, v1

    move/from16 p13, v3

    move/from16 p14, v4

    .line 32
    invoke-static/range {p3 .. p14}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v4, p15

    move-object/from16 v5, p16

    move v6, v2

    move/from16 v9, v27

    move/from16 v10, v28

    move-object/from16 v15, v29

    move-wide/from16 v11, v30

    move-wide/from16 v13, v32

    move/from16 v16, v34

    move-wide/from16 v17, v35

    move-wide/from16 v19, v37

    move-wide/from16 v21, v39

    move-object/from16 v23, v41

    move/from16 v8, v47

    move/from16 v7, v48

    .line 33
    :goto_37
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-nez v3, :cond_4c

    goto :goto_38

    :cond_4c
    new-instance v2, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v49, v2

    move-object/from16 v2, p1

    move-object/from16 v50, v3

    move-object/from16 v3, p2

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$2;-><init>(Le8/p;Le8/p;Le8/p;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLe8/q;III)V

    move-object/from16 v1, v49

    move-object/from16 v0, v50

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    :goto_38
    return-void
.end method

.method private static final d(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Le8/r;Landroidx/compose/runtime/Composer;I)V
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;",
            "Le8/r<",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, -0x4a72277a

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
    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p5, 0x1c00

    .line 58
    .line 59
    if-nez v1, :cond_7

    .line 60
    .line 61
    .line 62
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, v0, 0x16db

    .line 74
    .line 75
    const/16 v2, 0x492

    .line 76
    .line 77
    if-ne v1, v2, :cond_9

    .line 78
    .line 79
    .line 80
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->b()Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-nez v1, :cond_8

    .line 84
    goto :goto_5

    .line 85
    .line 86
    .line 87
    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->g()V

    .line 88
    goto :goto_6

    .line 89
    .line 90
    .line 91
    :cond_9
    :goto_5
    const v1, 0x607fb4c4

    .line 92
    .line 93
    .line 94
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 99
    .line 100
    .line 101
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 102
    move-result v2

    .line 103
    or-int/2addr v1, v2

    .line 104
    .line 105
    .line 106
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    or-int/2addr v1, v2

    .line 109
    .line 110
    .line 111
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    if-nez v1, :cond_a

    .line 115
    .line 116
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    if-ne v2, v1, :cond_b

    .line 123
    .line 124
    :cond_a
    new-instance v2, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$1$1;

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, p1, p2, p3, v0}, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$1$1;-><init>(Le8/p;Le8/l;Le8/r;I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_b
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 134
    .line 135
    check-cast v2, Le8/p;

    .line 136
    .line 137
    and-int/lit8 v0, v0, 0xe

    .line 138
    const/4 v1, 0x0

    .line 139
    .line 140
    .line 141
    invoke-static {p0, v2, p4, v0, v1}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 142
    .line 143
    .line 144
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 145
    move-result-object p4

    .line 146
    .line 147
    if-nez p4, :cond_c

    .line 148
    goto :goto_7

    .line 149
    .line 150
    :cond_c
    new-instance v6, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$2;

    .line 151
    move-object v0, v6

    .line 152
    move-object v1, p0

    .line 153
    move-object v2, p1

    .line 154
    move-object v3, p2

    .line 155
    move-object v4, p3

    .line 156
    move v5, p5

    .line 157
    .line 158
    .line 159
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/BackdropScaffoldKt$BackdropStack$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Le8/r;I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 163
    :goto_7
    return-void
.end method

.method private static final e(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V
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
    const v0, -0x57df7c1

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
    if-eqz v0, :cond_e

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
    .line 114
    const v2, 0x3c3bb93c

    .line 115
    .line 116
    .line 117
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 118
    const/4 v2, 0x0

    .line 119
    .line 120
    if-eqz p3, :cond_b

    .line 121
    .line 122
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 123
    .line 124
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 125
    .line 126
    .line 127
    const v5, 0x44faf204

    .line 128
    .line 129
    .line 130
    invoke-interface {p4, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 134
    move-result v5

    .line 135
    .line 136
    .line 137
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 138
    move-result-object v6

    .line 139
    .line 140
    if-nez v5, :cond_9

    .line 141
    .line 142
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 146
    move-result-object v5

    .line 147
    .line 148
    if-ne v6, v5, :cond_a

    .line 149
    .line 150
    :cond_9
    new-instance v6, Landroidx/compose/material/BackdropScaffoldKt$Scrim$dismissModifier$1$1;

    .line 151
    .line 152
    .line 153
    invoke-direct {v6, p2, v2}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$dismissModifier$1$1;-><init>(Le8/a;Lkotlin/coroutines/d;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {p4, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 160
    .line 161
    check-cast v6, Le8/p;

    .line 162
    .line 163
    .line 164
    invoke-static {v3, v4, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 165
    move-result-object v3

    .line 166
    goto :goto_6

    .line 167
    .line 168
    :cond_b
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 169
    .line 170
    .line 171
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 172
    .line 173
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 174
    const/4 v5, 0x1

    .line 175
    .line 176
    .line 177
    invoke-static {v4, v0, v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    .line 185
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    .line 189
    const v3, 0x1e7b2b64

    .line 190
    .line 191
    .line 192
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 196
    move-result v2

    .line 197
    .line 198
    .line 199
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 200
    move-result v3

    .line 201
    or-int/2addr v2, v3

    .line 202
    .line 203
    .line 204
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 205
    move-result-object v3

    .line 206
    .line 207
    if-nez v2, :cond_c

    .line 208
    .line 209
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    if-ne v3, v2, :cond_d

    .line 216
    .line 217
    :cond_c
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$Scrim$1$1;

    .line 218
    .line 219
    .line 220
    invoke-direct {v3, p0, p1, v1}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_d
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 227
    .line 228
    check-cast v3, Le8/l;

    .line 229
    const/4 v1, 0x0

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v3, p4, v1}, Landroidx/compose/foundation/CanvasKt;->a(Landroidx/compose/ui/Modifier;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 233
    .line 234
    .line 235
    :cond_e
    :goto_7
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 236
    move-result-object p4

    .line 237
    .line 238
    if-nez p4, :cond_f

    .line 239
    goto :goto_8

    .line 240
    .line 241
    :cond_f
    new-instance v6, Landroidx/compose/material/BackdropScaffoldKt$Scrim$2;

    .line 242
    move-object v0, v6

    .line 243
    move-wide v1, p0

    .line 244
    move-object v3, p2

    .line 245
    move v4, p3

    .line 246
    move v5, p5

    .line 247
    .line 248
    .line 249
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/BackdropScaffoldKt$Scrim$2;-><init>(JLe8/a;ZI)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 253
    :goto_8
    return-void
.end method

.method private static final f(Landroidx/compose/runtime/State;)F
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

.method public static final synthetic g(Landroidx/compose/material/BackdropValue;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/BackdropScaffoldKt;->a(Landroidx/compose/material/BackdropValue;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Le8/r;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/BackdropScaffoldKt;->d(Landroidx/compose/ui/Modifier;Le8/p;Le8/l;Le8/r;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic i(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/BackdropScaffoldKt;->e(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/BackdropScaffoldKt;->f(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final k(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/material/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BackdropScaffoldState;
    .locals 7
    .param p0    # Landroidx/compose/material/BackdropValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/BackdropValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/BackdropValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BackdropScaffoldState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p5, "initialValue"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p5, -0x3363ce60    # -8.189056E7f

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    and-int/lit8 p5, p6, 0x2

    .line 14
    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableDefaults;->a()Landroidx/compose/animation/core/SpringSpec;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    :cond_0
    and-int/lit8 p5, p6, 0x4

    .line 24
    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    sget-object p2, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$1;->INSTANCE:Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$1;

    .line 28
    .line 29
    :cond_1
    and-int/lit8 p5, p6, 0x8

    .line 30
    .line 31
    if-eqz p5, :cond_3

    .line 32
    .line 33
    .line 34
    const p3, -0x1d58f75c

    .line 35
    .line 36
    .line 37
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    sget-object p5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 47
    move-result-object p5

    .line 48
    .line 49
    if-ne p3, p5, :cond_2

    .line 50
    .line 51
    new-instance p3, Landroidx/compose/material/SnackbarHostState;

    .line 52
    .line 53
    .line 54
    invoke-direct {p3}, Landroidx/compose/material/SnackbarHostState;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 61
    .line 62
    check-cast p3, Landroidx/compose/material/SnackbarHostState;

    .line 63
    :cond_3
    const/4 p5, 0x3

    .line 64
    .line 65
    new-array v0, p5, [Ljava/lang/Object;

    .line 66
    const/4 p5, 0x0

    .line 67
    .line 68
    aput-object p1, v0, p5

    .line 69
    const/4 p5, 0x1

    .line 70
    .line 71
    aput-object p2, v0, p5

    .line 72
    const/4 p5, 0x2

    .line 73
    .line 74
    aput-object p3, v0, p5

    .line 75
    .line 76
    sget-object p5, Landroidx/compose/material/BackdropScaffoldState;->Companion:Landroidx/compose/material/BackdropScaffoldState$Companion;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p5, p1, p2, p3}, Landroidx/compose/material/BackdropScaffoldState$Companion;->a(Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/material/SnackbarHostState;)Landroidx/compose/runtime/saveable/Saver;

    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    .line 83
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$3;

    .line 84
    .line 85
    .line 86
    invoke-direct {v3, p0, p1, p2, p3}, Landroidx/compose/material/BackdropScaffoldKt$rememberBackdropScaffoldState$3;-><init>(Landroidx/compose/material/BackdropValue;Landroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/material/SnackbarHostState;)V

    .line 87
    .line 88
    const/16 v5, 0x48

    .line 89
    const/4 v6, 0x4

    .line 90
    move-object v4, p4

    .line 91
    .line 92
    .line 93
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->b([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Le8/a;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    check-cast p0, Landroidx/compose/material/BackdropScaffoldState;

    .line 97
    .line 98
    .line 99
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 100
    return-object p0
.end method
