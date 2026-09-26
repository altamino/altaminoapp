.class public final Landroidx/compose/animation/CrossfadeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfade.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 7 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 8 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 9 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,129:1\n25#2:130\n25#2:138\n36#2:145\n418#2,13:182\n431#2,3:202\n1057#3,3:131\n1060#3,3:135\n1057#3,6:139\n1057#3,6:146\n1#4:134\n348#5,7:152\n32#6,6:159\n32#6,6:196\n67#7,6:165\n73#7:195\n77#7:206\n72#8:171\n73#8,9:173\n84#8:205\n76#9:172\n*S KotlinDebug\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt\n*L\n86#1:130\n87#1:138\n94#1:145\n121#1:182,13\n121#1:202,3\n86#1:131,3\n86#1:135,3\n87#1:139,6\n94#1:146,6\n100#1:152,7\n109#1:159,6\n122#1:196,6\n121#1:165,6\n121#1:195\n121#1:206\n121#1:171\n121#1:173,9\n121#1:205\n121#1:172\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Le8/l;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/l;
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
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Le8/q<",
            "-TT;-",
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
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p4

    .line 5
    .line 6
    move/from16 v8, p6

    .line 7
    .line 8
    const-string v0, "<this>"

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
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x2878cc2f

    .line 20
    .line 21
    move-object/from16 v1, p5

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v9

    .line 26
    .line 27
    const/high16 v0, -0x80000000

    .line 28
    .line 29
    and-int v0, p7, v0

    .line 30
    const/4 v10, 0x2

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    or-int/lit8 v0, v8, 0x6

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    and-int/lit8 v0, v8, 0xe

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v0, v10

    .line 49
    :goto_0
    or-int/2addr v0, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v0, v8

    .line 52
    .line 53
    :goto_1
    and-int/lit8 v1, p7, 0x1

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    or-int/lit8 v0, v0, 0x30

    .line 58
    .line 59
    :cond_3
    move-object/from16 v2, p1

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_4
    and-int/lit8 v2, v8, 0x70

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    move-object/from16 v2, p1

    .line 67
    .line 68
    .line 69
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    const/16 v3, 0x20

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_5
    const/16 v3, 0x10

    .line 78
    :goto_2
    or-int/2addr v0, v3

    .line 79
    .line 80
    :goto_3
    and-int/lit8 v3, p7, 0x2

    .line 81
    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    or-int/lit16 v0, v0, 0x80

    .line 85
    .line 86
    :cond_6
    and-int/lit8 v4, p7, 0x4

    .line 87
    .line 88
    if-eqz v4, :cond_8

    .line 89
    .line 90
    or-int/lit16 v0, v0, 0xc00

    .line 91
    .line 92
    :cond_7
    move-object/from16 v5, p3

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_8
    and-int/lit16 v5, v8, 0x1c00

    .line 96
    .line 97
    if-nez v5, :cond_7

    .line 98
    .line 99
    move-object/from16 v5, p3

    .line 100
    .line 101
    .line 102
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 103
    move-result v12

    .line 104
    .line 105
    if-eqz v12, :cond_9

    .line 106
    .line 107
    const/16 v12, 0x800

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_9
    const/16 v12, 0x400

    .line 111
    :goto_4
    or-int/2addr v0, v12

    .line 112
    .line 113
    :goto_5
    and-int/lit8 v12, p7, 0x8

    .line 114
    .line 115
    if-eqz v12, :cond_b

    .line 116
    .line 117
    or-int/lit16 v0, v0, 0x6000

    .line 118
    :cond_a
    :goto_6
    move v12, v0

    .line 119
    goto :goto_8

    .line 120
    .line 121
    .line 122
    :cond_b
    const v12, 0xe000

    .line 123
    and-int/2addr v12, v8

    .line 124
    .line 125
    if-nez v12, :cond_a

    .line 126
    .line 127
    .line 128
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 129
    move-result v12

    .line 130
    .line 131
    if-eqz v12, :cond_c

    .line 132
    .line 133
    const/16 v12, 0x4000

    .line 134
    goto :goto_7

    .line 135
    .line 136
    :cond_c
    const/16 v12, 0x2000

    .line 137
    :goto_7
    or-int/2addr v0, v12

    .line 138
    goto :goto_6

    .line 139
    .line 140
    :goto_8
    if-ne v3, v10, :cond_e

    .line 141
    .line 142
    .line 143
    const v0, 0xb6db

    .line 144
    and-int/2addr v0, v12

    .line 145
    .line 146
    const/16 v13, 0x2492

    .line 147
    .line 148
    if-ne v0, v13, :cond_e

    .line 149
    .line 150
    .line 151
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->b()Z

    .line 152
    move-result v0

    .line 153
    .line 154
    if-nez v0, :cond_d

    .line 155
    goto :goto_9

    .line 156
    .line 157
    .line 158
    :cond_d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->g()V

    .line 159
    .line 160
    move-object/from16 v3, p2

    .line 161
    move-object v4, v5

    .line 162
    .line 163
    goto/16 :goto_17

    .line 164
    .line 165
    :cond_e
    :goto_9
    if-eqz v1, :cond_f

    .line 166
    .line 167
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 168
    move-object v13, v0

    .line 169
    goto :goto_a

    .line 170
    :cond_f
    move-object v13, v2

    .line 171
    :goto_a
    const/4 v14, 0x0

    .line 172
    .line 173
    if-eqz v3, :cond_10

    .line 174
    const/4 v0, 0x7

    .line 175
    const/4 v1, 0x0

    .line 176
    .line 177
    .line 178
    invoke-static {v14, v14, v1, v0, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 179
    move-result-object v0

    .line 180
    move-object v15, v0

    .line 181
    goto :goto_b

    .line 182
    .line 183
    :cond_10
    move-object/from16 v15, p2

    .line 184
    .line 185
    :goto_b
    if-eqz v4, :cond_11

    .line 186
    .line 187
    sget-object v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$2;->INSTANCE:Landroidx/compose/animation/CrossfadeKt$Crossfade$2;

    .line 188
    move-object v5, v0

    .line 189
    .line 190
    .line 191
    :cond_11
    const v0, -0x1d58f75c

    .line 192
    .line 193
    .line 194
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 204
    move-result-object v3

    .line 205
    .line 206
    if-ne v1, v3, :cond_12

    .line 207
    .line 208
    .line 209
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->d()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 220
    .line 221
    .line 222
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 226
    move-object v4, v1

    .line 227
    .line 228
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 229
    .line 230
    .line 231
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 239
    move-result-object v1

    .line 240
    .line 241
    if-ne v0, v1, :cond_13

    .line 242
    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 244
    .line 245
    .line 246
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_13
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 253
    move-object v3, v0

    .line 254
    .line 255
    check-cast v3, Ljava/util/Map;

    .line 256
    .line 257
    .line 258
    const v0, -0x60a55c49

    .line 259
    .line 260
    .line 261
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 269
    move-result-object v1

    .line 270
    .line 271
    .line 272
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    move-result v0

    .line 274
    const/4 v1, 0x1

    .line 275
    .line 276
    if-eqz v0, :cond_17

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 280
    move-result v0

    .line 281
    .line 282
    if-ne v0, v1, :cond_14

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    .line 289
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 290
    move-result-object v1

    .line 291
    .line 292
    .line 293
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    move-result v0

    .line 295
    .line 296
    if-nez v0, :cond_17

    .line 297
    .line 298
    .line 299
    :cond_14
    const v0, 0x44faf204

    .line 300
    .line 301
    .line 302
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 303
    .line 304
    .line 305
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 306
    move-result v0

    .line 307
    .line 308
    .line 309
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    if-nez v0, :cond_15

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 316
    move-result-object v0

    .line 317
    .line 318
    if-ne v1, v0, :cond_16

    .line 319
    .line 320
    :cond_15
    new-instance v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;

    .line 321
    .line 322
    .line 323
    invoke-direct {v1, v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$3$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    .line 324
    .line 325
    .line 326
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_16
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 330
    .line 331
    check-cast v1, Le8/l;

    .line 332
    .line 333
    .line 334
    invoke-static {v4, v1}, Lkotlin/collections/t;->J(Ljava/util/List;Le8/l;)Z

    .line 335
    .line 336
    .line 337
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 338
    .line 339
    .line 340
    :cond_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 341
    .line 342
    .line 343
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 344
    move-result-object v0

    .line 345
    .line 346
    .line 347
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 348
    move-result v0

    .line 349
    .line 350
    if-nez v0, :cond_1b

    .line 351
    .line 352
    .line 353
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 354
    move-result-object v0

    .line 355
    move v1, v14

    .line 356
    .line 357
    .line 358
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 359
    move-result v2

    .line 360
    const/4 v11, -0x1

    .line 361
    .line 362
    if-eqz v2, :cond_19

    .line 363
    .line 364
    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    move-result-object v2

    .line 367
    .line 368
    .line 369
    invoke-interface {v5, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    move-result-object v2

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 374
    move-result-object v10

    .line 375
    .line 376
    .line 377
    invoke-interface {v5, v10}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    move-result-object v10

    .line 379
    .line 380
    .line 381
    invoke-static {v2, v10}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    move-result v2

    .line 383
    .line 384
    if-eqz v2, :cond_18

    .line 385
    goto :goto_d

    .line 386
    .line 387
    :cond_18
    add-int/lit8 v1, v1, 0x1

    .line 388
    const/4 v10, 0x2

    .line 389
    goto :goto_c

    .line 390
    :cond_19
    move v1, v11

    .line 391
    .line 392
    :goto_d
    if-ne v1, v11, :cond_1a

    .line 393
    .line 394
    .line 395
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 396
    move-result-object v0

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 400
    goto :goto_e

    .line 401
    .line 402
    .line 403
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 404
    move-result-object v0

    .line 405
    .line 406
    .line 407
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    :goto_e
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 411
    .line 412
    .line 413
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 414
    move-result v10

    .line 415
    move v11, v14

    .line 416
    .line 417
    :goto_f
    if-ge v11, v10, :cond_1b

    .line 418
    .line 419
    .line 420
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 421
    move-result-object v2

    .line 422
    .line 423
    new-instance v1, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;

    .line 424
    move-object v0, v1

    .line 425
    move-object v6, v1

    .line 426
    const/4 v14, 0x1

    .line 427
    .line 428
    move-object/from16 v1, p0

    .line 429
    .line 430
    move-object/from16 p1, v2

    .line 431
    move v2, v12

    .line 432
    .line 433
    move-object/from16 v16, v3

    .line 434
    move-object v3, v15

    .line 435
    .line 436
    move-object/from16 p2, v4

    .line 437
    .line 438
    move-object/from16 v4, p1

    .line 439
    .line 440
    move-object/from16 v17, v5

    .line 441
    .line 442
    move-object/from16 v5, p4

    .line 443
    .line 444
    .line 445
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;-><init>(Landroidx/compose/animation/core/Transition;ILandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Le8/q;)V

    .line 446
    .line 447
    .line 448
    const v0, -0x55057628

    .line 449
    .line 450
    .line 451
    invoke-static {v9, v0, v14, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 452
    move-result-object v0

    .line 453
    .line 454
    move-object/from16 v2, p1

    .line 455
    .line 456
    move-object/from16 v1, v16

    .line 457
    .line 458
    .line 459
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    add-int/lit8 v11, v11, 0x1

    .line 462
    const/4 v14, 0x0

    .line 463
    .line 464
    move-object/from16 v6, p0

    .line 465
    .line 466
    move-object/from16 v4, p2

    .line 467
    move-object v3, v1

    .line 468
    .line 469
    move-object/from16 v5, v17

    .line 470
    goto :goto_f

    .line 471
    :cond_1b
    move-object v1, v3

    .line 472
    .line 473
    move-object/from16 p2, v4

    .line 474
    .line 475
    move-object/from16 v17, v5

    .line 476
    .line 477
    shr-int/lit8 v0, v12, 0x3

    .line 478
    .line 479
    and-int/lit8 v0, v0, 0xe

    .line 480
    .line 481
    .line 482
    const v2, -0x76a43a57

    .line 483
    .line 484
    .line 485
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 486
    .line 487
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 491
    move-result-object v2

    .line 492
    .line 493
    shr-int/lit8 v3, v0, 0x3

    .line 494
    .line 495
    and-int/lit8 v4, v3, 0xe

    .line 496
    .line 497
    and-int/lit8 v3, v3, 0x70

    .line 498
    or-int/2addr v3, v4

    .line 499
    const/4 v4, 0x0

    .line 500
    .line 501
    .line 502
    invoke-static {v2, v4, v9, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 503
    move-result-object v2

    .line 504
    .line 505
    shl-int/lit8 v3, v0, 0x3

    .line 506
    .line 507
    and-int/lit8 v3, v3, 0x70

    .line 508
    .line 509
    .line 510
    const v4, 0x520574f7

    .line 511
    .line 512
    .line 513
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 514
    .line 515
    .line 516
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 517
    move-result-object v4

    .line 518
    .line 519
    .line 520
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 521
    move-result-object v4

    .line 522
    .line 523
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 524
    .line 525
    .line 526
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 527
    move-result-object v5

    .line 528
    .line 529
    .line 530
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 531
    move-result-object v5

    .line 532
    .line 533
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 534
    .line 535
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 539
    move-result-object v10

    .line 540
    .line 541
    .line 542
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 543
    move-result-object v11

    .line 544
    .line 545
    shl-int/lit8 v3, v3, 0x9

    .line 546
    .line 547
    and-int/lit16 v3, v3, 0x1c00

    .line 548
    .line 549
    .line 550
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 551
    move-result-object v12

    .line 552
    .line 553
    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    .line 554
    .line 555
    if-nez v12, :cond_1c

    .line 556
    .line 557
    .line 558
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 559
    .line 560
    .line 561
    :cond_1c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->e()V

    .line 562
    .line 563
    .line 564
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->r()Z

    .line 565
    move-result v12

    .line 566
    .line 567
    if-eqz v12, :cond_1d

    .line 568
    .line 569
    .line 570
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 571
    goto :goto_10

    .line 572
    .line 573
    .line 574
    :cond_1d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->c()V

    .line 575
    .line 576
    .line 577
    :goto_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->L()V

    .line 578
    .line 579
    .line 580
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 581
    move-result-object v10

    .line 582
    .line 583
    .line 584
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 585
    move-result-object v12

    .line 586
    .line 587
    .line 588
    invoke-static {v10, v2, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 592
    move-result-object v2

    .line 593
    .line 594
    .line 595
    invoke-static {v10, v4, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 599
    move-result-object v2

    .line 600
    .line 601
    .line 602
    invoke-static {v10, v5, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 603
    .line 604
    .line 605
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->o()V

    .line 606
    .line 607
    .line 608
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 609
    move-result-object v2

    .line 610
    .line 611
    .line 612
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 613
    move-result-object v2

    .line 614
    .line 615
    shr-int/lit8 v4, v3, 0x3

    .line 616
    .line 617
    and-int/lit8 v4, v4, 0x70

    .line 618
    .line 619
    .line 620
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    move-result-object v4

    .line 622
    .line 623
    .line 624
    invoke-interface {v11, v2, v9, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    const v2, 0x7ab4aae9

    .line 628
    .line 629
    .line 630
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 631
    .line 632
    shr-int/lit8 v2, v3, 0x9

    .line 633
    .line 634
    .line 635
    const v3, -0x4ab8dd79

    .line 636
    .line 637
    .line 638
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 639
    .line 640
    and-int/lit8 v2, v2, 0xa

    .line 641
    const/4 v3, 0x2

    .line 642
    xor-int/2addr v2, v3

    .line 643
    .line 644
    if-nez v2, :cond_1f

    .line 645
    .line 646
    .line 647
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->b()Z

    .line 648
    move-result v2

    .line 649
    .line 650
    if-nez v2, :cond_1e

    .line 651
    goto :goto_11

    .line 652
    .line 653
    .line 654
    :cond_1e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->g()V

    .line 655
    .line 656
    move-object/from16 v6, v17

    .line 657
    goto :goto_16

    .line 658
    .line 659
    :cond_1f
    :goto_11
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 660
    .line 661
    shr-int/lit8 v0, v0, 0x6

    .line 662
    .line 663
    and-int/lit8 v0, v0, 0x70

    .line 664
    .line 665
    or-int/lit8 v0, v0, 0x6

    .line 666
    .line 667
    .line 668
    const v2, 0x731754b5

    .line 669
    .line 670
    .line 671
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 672
    .line 673
    and-int/lit8 v0, v0, 0x51

    .line 674
    .line 675
    const/16 v2, 0x10

    .line 676
    .line 677
    if-ne v0, v2, :cond_22

    .line 678
    .line 679
    .line 680
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->b()Z

    .line 681
    move-result v0

    .line 682
    .line 683
    if-nez v0, :cond_20

    .line 684
    goto :goto_12

    .line 685
    .line 686
    .line 687
    :cond_20
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->g()V

    .line 688
    .line 689
    :cond_21
    move-object/from16 v6, v17

    .line 690
    goto :goto_15

    .line 691
    .line 692
    .line 693
    :cond_22
    :goto_12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 694
    move-result v0

    .line 695
    const/4 v4, 0x0

    .line 696
    .line 697
    :goto_13
    if-ge v4, v0, :cond_21

    .line 698
    .line 699
    move-object/from16 v2, p2

    .line 700
    .line 701
    .line 702
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 703
    move-result-object v3

    .line 704
    .line 705
    .line 706
    const v5, -0x1adab982

    .line 707
    .line 708
    move-object/from16 v6, v17

    .line 709
    .line 710
    .line 711
    invoke-interface {v6, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    move-result-object v10

    .line 713
    .line 714
    .line 715
    invoke-interface {v9, v5, v10}, Landroidx/compose/runtime/Composer;->K(ILjava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    move-result-object v3

    .line 720
    .line 721
    check-cast v3, Le8/p;

    .line 722
    const/4 v5, 0x0

    .line 723
    .line 724
    if-nez v3, :cond_23

    .line 725
    goto :goto_14

    .line 726
    .line 727
    .line 728
    :cond_23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    move-result-object v10

    .line 730
    .line 731
    .line 732
    invoke-interface {v3, v9, v10}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 735
    .line 736
    .line 737
    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->P()V

    .line 738
    .line 739
    add-int/lit8 v4, v4, 0x1

    .line 740
    .line 741
    move-object/from16 p2, v2

    .line 742
    .line 743
    move-object/from16 v17, v6

    .line 744
    goto :goto_13

    .line 745
    .line 746
    .line 747
    :goto_15
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 748
    .line 749
    .line 750
    :goto_16
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 751
    .line 752
    .line 753
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 754
    .line 755
    .line 756
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->d()V

    .line 757
    .line 758
    .line 759
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 760
    .line 761
    .line 762
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->Q()V

    .line 763
    move-object v4, v6

    .line 764
    move-object v2, v13

    .line 765
    move-object v3, v15

    .line 766
    .line 767
    .line 768
    :goto_17
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 769
    move-result-object v9

    .line 770
    .line 771
    if-nez v9, :cond_24

    .line 772
    goto :goto_18

    .line 773
    .line 774
    :cond_24
    new-instance v10, Landroidx/compose/animation/CrossfadeKt$Crossfade$6;

    .line 775
    move-object v0, v10

    .line 776
    .line 777
    move-object/from16 v1, p0

    .line 778
    .line 779
    move-object/from16 v5, p4

    .line 780
    .line 781
    move/from16 v6, p6

    .line 782
    .line 783
    move/from16 v7, p7

    .line 784
    .line 785
    .line 786
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/CrossfadeKt$Crossfade$6;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Le8/l;Le8/q;II)V

    .line 787
    .line 788
    .line 789
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 790
    :goto_18
    return-void
.end method

.method public static final b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 14
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Le8/q<",
            "-TT;-",
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
    move-object v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p3

    .line 4
    .line 5
    move/from16 v11, p5

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    .line 10
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x1f358c3d

    .line 14
    .line 15
    move-object/from16 v2, p4

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    and-int/lit8 v2, p6, 0x1

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x4

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    or-int/lit8 v2, v11, 0x6

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    move v2, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v3

    .line 42
    :goto_0
    or-int/2addr v2, v11

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v2, v11

    .line 45
    .line 46
    :goto_1
    and-int/lit8 v5, p6, 0x2

    .line 47
    .line 48
    if-eqz v5, :cond_4

    .line 49
    .line 50
    or-int/lit8 v2, v2, 0x30

    .line 51
    :cond_3
    move-object v6, p1

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_4
    and-int/lit8 v6, v11, 0x70

    .line 55
    .line 56
    if-nez v6, :cond_3

    .line 57
    move-object v6, p1

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 61
    move-result v7

    .line 62
    .line 63
    if-eqz v7, :cond_5

    .line 64
    .line 65
    const/16 v7, 0x20

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_5
    const/16 v7, 0x10

    .line 69
    :goto_2
    or-int/2addr v2, v7

    .line 70
    .line 71
    :goto_3
    and-int/lit8 v7, p6, 0x4

    .line 72
    .line 73
    if-eqz v7, :cond_6

    .line 74
    .line 75
    or-int/lit16 v2, v2, 0x80

    .line 76
    .line 77
    :cond_6
    and-int/lit8 v8, p6, 0x8

    .line 78
    .line 79
    if-eqz v8, :cond_7

    .line 80
    .line 81
    or-int/lit16 v2, v2, 0xc00

    .line 82
    goto :goto_5

    .line 83
    .line 84
    :cond_7
    and-int/lit16 v8, v11, 0x1c00

    .line 85
    .line 86
    if-nez v8, :cond_9

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 90
    move-result v8

    .line 91
    .line 92
    if-eqz v8, :cond_8

    .line 93
    .line 94
    const/16 v8, 0x800

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :cond_8
    const/16 v8, 0x400

    .line 98
    :goto_4
    or-int/2addr v2, v8

    .line 99
    .line 100
    :cond_9
    :goto_5
    if-ne v7, v4, :cond_b

    .line 101
    .line 102
    and-int/lit16 v4, v2, 0x16db

    .line 103
    .line 104
    const/16 v8, 0x492

    .line 105
    .line 106
    if-ne v4, v8, :cond_b

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 110
    move-result v4

    .line 111
    .line 112
    if-nez v4, :cond_a

    .line 113
    goto :goto_6

    .line 114
    .line 115
    .line 116
    :cond_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 117
    .line 118
    move-object/from16 v3, p2

    .line 119
    move-object v2, v6

    .line 120
    goto :goto_9

    .line 121
    .line 122
    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    .line 123
    .line 124
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 125
    move-object v12, v4

    .line 126
    goto :goto_7

    .line 127
    :cond_c
    move-object v12, v6

    .line 128
    :goto_7
    const/4 v4, 0x0

    .line 129
    .line 130
    if-eqz v7, :cond_d

    .line 131
    const/4 v5, 0x7

    .line 132
    const/4 v6, 0x0

    .line 133
    .line 134
    .line 135
    invoke-static {v6, v6, v4, v5, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 136
    move-result-object v5

    .line 137
    move-object v13, v5

    .line 138
    goto :goto_8

    .line 139
    .line 140
    :cond_d
    move-object/from16 v13, p2

    .line 141
    .line 142
    :goto_8
    and-int/lit8 v5, v2, 0x8

    .line 143
    .line 144
    and-int/lit8 v6, v2, 0xe

    .line 145
    or-int/2addr v5, v6

    .line 146
    .line 147
    .line 148
    invoke-static {p0, v4, v0, v5, v3}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 149
    move-result-object v3

    .line 150
    const/4 v5, 0x0

    .line 151
    .line 152
    and-int/lit8 v4, v2, 0x70

    .line 153
    .line 154
    or-int/lit16 v4, v4, 0x200

    .line 155
    .line 156
    shl-int/lit8 v2, v2, 0x3

    .line 157
    .line 158
    .line 159
    const v6, 0xe000

    .line 160
    and-int/2addr v2, v6

    .line 161
    .line 162
    or-int v8, v4, v2

    .line 163
    const/4 v9, 0x4

    .line 164
    move-object v2, v3

    .line 165
    move-object v3, v12

    .line 166
    move-object v4, v13

    .line 167
    .line 168
    move-object/from16 v6, p3

    .line 169
    move-object v7, v0

    .line 170
    .line 171
    .line 172
    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/CrossfadeKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Le8/l;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 173
    move-object v2, v12

    .line 174
    move-object v3, v13

    .line 175
    .line 176
    .line 177
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 178
    move-result-object v7

    .line 179
    .line 180
    if-nez v7, :cond_e

    .line 181
    goto :goto_a

    .line 182
    .line 183
    :cond_e
    new-instance v8, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;

    .line 184
    move-object v0, v8

    .line 185
    move-object v1, p0

    .line 186
    .line 187
    move-object/from16 v4, p3

    .line 188
    .line 189
    move/from16 v5, p5

    .line 190
    .line 191
    move/from16 v6, p6

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/CrossfadeKt$Crossfade$1;-><init>(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Le8/q;II)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 198
    :goto_a
    return-void
.end method
