.class public final Landroidx/compose/material/SnackbarHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/SnackbarHostKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbarHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,373:1\n76#2:374\n76#2:396\n25#3:375\n460#3,13:408\n473#3,3:428\n25#3:433\n25#3:440\n1057#4,6:376\n1057#4,6:434\n1057#4,6:441\n1547#5:382\n1618#5,3:383\n1618#5,3:386\n67#6,6:389\n73#6:421\n77#6:432\n75#7:395\n76#7,11:397\n89#7:431\n32#8,6:422\n*S KotlinDebug\n*F\n+ 1 SnackbarHost.kt\nandroidx/compose/material/SnackbarHostKt\n*L\n157#1:374\n316#1:396\n262#1:375\n316#1:408,13\n316#1:428,3\n348#1:433\n361#1:440\n262#1:376,6\n348#1:434,6\n361#1:441,6\n265#1:382\n265#1:383,3\n270#1:386,3\n316#1:389,6\n316#1:421\n316#1:432\n316#1:395\n316#1:397,11\n316#1:431\n318#1:422,6\n*E\n"
.end annotation


# static fields
.field private static final SnackbarFadeInMillis:I = 0x96

.field private static final SnackbarFadeOutMillis:I = 0x4b

.field private static final SnackbarInBetweenDelayMillis:I


# direct methods
.method private static final a(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 18
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/SnackbarData;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/material/SnackbarData;",
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
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v3, p2

    .line 5
    .line 6
    move/from16 v4, p4

    .line 7
    .line 8
    .line 9
    const v0, 0x795cf2bd

    .line 10
    .line 11
    move-object/from16 v2, p3

    .line 12
    .line 13
    .line 14
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    and-int/lit8 v2, p5, 0x1

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    or-int/lit8 v2, v4, 0x6

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    and-int/lit8 v2, v4, 0xe

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    const/4 v2, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x2

    .line 36
    :goto_0
    or-int/2addr v2, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v2, v4

    .line 39
    .line 40
    :goto_1
    and-int/lit8 v6, p5, 0x2

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    or-int/lit8 v2, v2, 0x30

    .line 45
    .line 46
    :cond_3
    move-object/from16 v8, p1

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_4
    and-int/lit8 v8, v4, 0x70

    .line 50
    .line 51
    if-nez v8, :cond_3

    .line 52
    .line 53
    move-object/from16 v8, p1

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 57
    move-result v9

    .line 58
    .line 59
    if-eqz v9, :cond_5

    .line 60
    .line 61
    const/16 v9, 0x20

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_5
    const/16 v9, 0x10

    .line 65
    :goto_2
    or-int/2addr v2, v9

    .line 66
    .line 67
    :goto_3
    and-int/lit8 v9, p5, 0x4

    .line 68
    .line 69
    if-eqz v9, :cond_6

    .line 70
    .line 71
    or-int/lit16 v2, v2, 0x180

    .line 72
    goto :goto_5

    .line 73
    .line 74
    :cond_6
    and-int/lit16 v9, v4, 0x380

    .line 75
    .line 76
    if-nez v9, :cond_8

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 80
    move-result v9

    .line 81
    .line 82
    if-eqz v9, :cond_7

    .line 83
    .line 84
    const/16 v9, 0x100

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_7
    const/16 v9, 0x80

    .line 88
    :goto_4
    or-int/2addr v2, v9

    .line 89
    .line 90
    :cond_8
    :goto_5
    and-int/lit16 v9, v2, 0x2db

    .line 91
    .line 92
    const/16 v10, 0x92

    .line 93
    .line 94
    if-ne v9, v10, :cond_a

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 98
    move-result v9

    .line 99
    .line 100
    if-nez v9, :cond_9

    .line 101
    goto :goto_6

    .line 102
    .line 103
    .line 104
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 105
    move-object v2, v8

    .line 106
    .line 107
    goto/16 :goto_10

    .line 108
    .line 109
    :cond_a
    :goto_6
    if-eqz v6, :cond_b

    .line 110
    .line 111
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 112
    goto :goto_7

    .line 113
    :cond_b
    move-object v6, v8

    .line 114
    .line 115
    .line 116
    :goto_7
    const v8, -0x1d58f75c

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 123
    move-result-object v8

    .line 124
    .line 125
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 129
    move-result-object v9

    .line 130
    .line 131
    if-ne v8, v9, :cond_c

    .line 132
    .line 133
    new-instance v8, Landroidx/compose/material/FadeInFadeOutState;

    .line 134
    .line 135
    .line 136
    invoke-direct {v8}, Landroidx/compose/material/FadeInFadeOutState;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 143
    .line 144
    check-cast v8, Landroidx/compose/material/FadeInFadeOutState;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8}, Landroidx/compose/material/FadeInFadeOutState;->a()Ljava/lang/Object;

    .line 148
    move-result-object v9

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v9}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    move-result v9

    .line 153
    .line 154
    const/16 v10, 0xa

    .line 155
    const/4 v11, 0x1

    .line 156
    .line 157
    if-nez v9, :cond_f

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v1}, Landroidx/compose/material/FadeInFadeOutState;->d(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Landroidx/compose/material/FadeInFadeOutState;->b()Ljava/util/List;

    .line 164
    move-result-object v9

    .line 165
    .line 166
    check-cast v9, Ljava/lang/Iterable;

    .line 167
    .line 168
    new-instance v12, Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    invoke-static {v9, v10}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 172
    move-result v13

    .line 173
    .line 174
    .line 175
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object v9

    .line 180
    .line 181
    .line 182
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v13

    .line 184
    .line 185
    if-eqz v13, :cond_d

    .line 186
    .line 187
    .line 188
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v13

    .line 190
    .line 191
    check-cast v13, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v13}, Landroidx/compose/material/FadeInFadeOutAnimationItem;->c()Ljava/lang/Object;

    .line 195
    move-result-object v13

    .line 196
    .line 197
    check-cast v13, Landroidx/compose/material/SnackbarData;

    .line 198
    .line 199
    .line 200
    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    goto :goto_8

    .line 202
    .line 203
    .line 204
    :cond_d
    invoke-static {v12}, Lkotlin/collections/t;->W0(Ljava/util/Collection;)Ljava/util/List;

    .line 205
    move-result-object v9

    .line 206
    .line 207
    .line 208
    invoke-interface {v9, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 209
    move-result v12

    .line 210
    .line 211
    if-nez v12, :cond_e

    .line 212
    .line 213
    .line 214
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_e
    invoke-virtual {v8}, Landroidx/compose/material/FadeInFadeOutState;->b()Ljava/util/List;

    .line 218
    move-result-object v12

    .line 219
    .line 220
    .line 221
    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 222
    move-object v12, v9

    .line 223
    .line 224
    check-cast v12, Ljava/lang/Iterable;

    .line 225
    .line 226
    .line 227
    invoke-static {v12}, Lkotlin/collections/t;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 228
    move-result-object v12

    .line 229
    .line 230
    check-cast v12, Ljava/lang/Iterable;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8}, Landroidx/compose/material/FadeInFadeOutState;->b()Ljava/util/List;

    .line 234
    move-result-object v13

    .line 235
    .line 236
    check-cast v13, Ljava/util/Collection;

    .line 237
    .line 238
    .line 239
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 240
    move-result-object v12

    .line 241
    .line 242
    .line 243
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    move-result v14

    .line 245
    .line 246
    if-eqz v14, :cond_f

    .line 247
    .line 248
    .line 249
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    move-result-object v14

    .line 251
    .line 252
    check-cast v14, Landroidx/compose/material/SnackbarData;

    .line 253
    .line 254
    new-instance v15, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 255
    .line 256
    new-instance v7, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;

    .line 257
    .line 258
    .line 259
    invoke-direct {v7, v14, v1, v9, v8}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$1$1;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/material/SnackbarData;Ljava/util/List;Landroidx/compose/material/FadeInFadeOutState;)V

    .line 260
    .line 261
    .line 262
    const v5, -0x59beafa

    .line 263
    .line 264
    .line 265
    invoke-static {v0, v5, v11, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 266
    move-result-object v5

    .line 267
    .line 268
    .line 269
    invoke-direct {v15, v14, v5}, Landroidx/compose/material/FadeInFadeOutAnimationItem;-><init>(Ljava/lang/Object;Le8/q;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    goto :goto_9

    .line 274
    .line 275
    :cond_f
    shr-int/lit8 v5, v2, 0x3

    .line 276
    .line 277
    and-int/lit8 v5, v5, 0xe

    .line 278
    .line 279
    .line 280
    const v7, 0x2bb5b5d7

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 284
    .line 285
    sget-object v7, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v7}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 289
    move-result-object v7

    .line 290
    .line 291
    shr-int/lit8 v9, v5, 0x3

    .line 292
    .line 293
    and-int/lit8 v12, v9, 0xe

    .line 294
    .line 295
    and-int/lit8 v9, v9, 0x70

    .line 296
    or-int/2addr v9, v12

    .line 297
    const/4 v12, 0x0

    .line 298
    .line 299
    .line 300
    invoke-static {v7, v12, v0, v9}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 301
    move-result-object v7

    .line 302
    .line 303
    shl-int/lit8 v9, v5, 0x3

    .line 304
    .line 305
    and-int/lit8 v9, v9, 0x70

    .line 306
    .line 307
    .line 308
    const v13, -0x4ee9b9da

    .line 309
    .line 310
    .line 311
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 312
    .line 313
    .line 314
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 315
    move-result-object v13

    .line 316
    .line 317
    .line 318
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 319
    move-result-object v13

    .line 320
    .line 321
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 322
    .line 323
    .line 324
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 325
    move-result-object v14

    .line 326
    .line 327
    .line 328
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 329
    move-result-object v14

    .line 330
    .line 331
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 332
    .line 333
    .line 334
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 335
    move-result-object v15

    .line 336
    .line 337
    .line 338
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 339
    move-result-object v15

    .line 340
    .line 341
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 342
    .line 343
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 344
    .line 345
    .line 346
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 347
    move-result-object v11

    .line 348
    .line 349
    .line 350
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 351
    move-result-object v12

    .line 352
    .line 353
    shl-int/lit8 v9, v9, 0x9

    .line 354
    .line 355
    and-int/lit16 v9, v9, 0x1c00

    .line 356
    .line 357
    const/16 v17, 0x6

    .line 358
    .line 359
    or-int/lit8 v9, v9, 0x6

    .line 360
    .line 361
    .line 362
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 363
    move-result-object v10

    .line 364
    .line 365
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 366
    .line 367
    if-nez v10, :cond_10

    .line 368
    .line 369
    .line 370
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 371
    .line 372
    .line 373
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 374
    .line 375
    .line 376
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 377
    move-result v10

    .line 378
    .line 379
    if-eqz v10, :cond_11

    .line 380
    .line 381
    .line 382
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 383
    goto :goto_a

    .line 384
    .line 385
    .line 386
    :cond_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 387
    .line 388
    .line 389
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 390
    .line 391
    .line 392
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 393
    move-result-object v10

    .line 394
    .line 395
    .line 396
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 397
    move-result-object v11

    .line 398
    .line 399
    .line 400
    invoke-static {v10, v7, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 404
    move-result-object v7

    .line 405
    .line 406
    .line 407
    invoke-static {v10, v13, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 411
    move-result-object v7

    .line 412
    .line 413
    .line 414
    invoke-static {v10, v14, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 418
    move-result-object v7

    .line 419
    .line 420
    .line 421
    invoke-static {v10, v15, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 422
    .line 423
    .line 424
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 425
    .line 426
    .line 427
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 428
    move-result-object v7

    .line 429
    .line 430
    .line 431
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 432
    move-result-object v7

    .line 433
    .line 434
    shr-int/lit8 v10, v9, 0x3

    .line 435
    .line 436
    and-int/lit8 v10, v10, 0x70

    .line 437
    .line 438
    .line 439
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    move-result-object v10

    .line 441
    .line 442
    .line 443
    invoke-interface {v12, v7, v0, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    const v7, 0x7ab4aae9

    .line 447
    .line 448
    .line 449
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 450
    .line 451
    shr-int/lit8 v7, v9, 0x9

    .line 452
    .line 453
    .line 454
    const v9, -0x7f65a980

    .line 455
    .line 456
    .line 457
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 458
    .line 459
    const/16 v9, 0xa

    .line 460
    and-int/2addr v7, v9

    .line 461
    const/4 v9, 0x2

    .line 462
    .line 463
    if-ne v7, v9, :cond_13

    .line 464
    .line 465
    .line 466
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 467
    move-result v7

    .line 468
    .line 469
    if-nez v7, :cond_12

    .line 470
    goto :goto_b

    .line 471
    .line 472
    .line 473
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 474
    goto :goto_f

    .line 475
    .line 476
    :cond_13
    :goto_b
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 477
    .line 478
    shr-int/lit8 v5, v5, 0x6

    .line 479
    .line 480
    and-int/lit8 v5, v5, 0x70

    .line 481
    .line 482
    or-int/lit8 v5, v5, 0x6

    .line 483
    .line 484
    .line 485
    const v7, -0x6a92f789

    .line 486
    .line 487
    .line 488
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 489
    .line 490
    and-int/lit8 v5, v5, 0x51

    .line 491
    .line 492
    const/16 v7, 0x10

    .line 493
    .line 494
    if-ne v5, v7, :cond_14

    .line 495
    .line 496
    .line 497
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 498
    move-result v5

    .line 499
    .line 500
    if-nez v5, :cond_15

    .line 501
    :cond_14
    const/4 v5, 0x0

    .line 502
    goto :goto_c

    .line 503
    .line 504
    .line 505
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 506
    goto :goto_e

    .line 507
    .line 508
    .line 509
    :goto_c
    invoke-static {v0, v5}, Landroidx/compose/runtime/ComposablesKt;->b(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/RecomposeScope;

    .line 510
    move-result-object v7

    .line 511
    .line 512
    .line 513
    invoke-virtual {v8, v7}, Landroidx/compose/material/FadeInFadeOutState;->e(Landroidx/compose/runtime/RecomposeScope;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v8}, Landroidx/compose/material/FadeInFadeOutState;->b()Ljava/util/List;

    .line 517
    move-result-object v7

    .line 518
    .line 519
    .line 520
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 521
    move-result v8

    .line 522
    move v12, v5

    .line 523
    .line 524
    :goto_d
    if-ge v12, v8, :cond_16

    .line 525
    .line 526
    .line 527
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 528
    move-result-object v5

    .line 529
    .line 530
    check-cast v5, Landroidx/compose/material/FadeInFadeOutAnimationItem;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5}, Landroidx/compose/material/FadeInFadeOutAnimationItem;->a()Ljava/lang/Object;

    .line 534
    move-result-object v9

    .line 535
    .line 536
    check-cast v9, Landroidx/compose/material/SnackbarData;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v5}, Landroidx/compose/material/FadeInFadeOutAnimationItem;->b()Le8/q;

    .line 540
    move-result-object v5

    .line 541
    .line 542
    .line 543
    const v10, -0xc6ead39

    .line 544
    .line 545
    .line 546
    invoke-interface {v0, v10, v9}, Landroidx/compose/runtime/Composer;->K(ILjava/lang/Object;)V

    .line 547
    .line 548
    new-instance v10, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$2$1$1;

    .line 549
    .line 550
    .line 551
    invoke-direct {v10, v3, v9, v2}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$2$1$1;-><init>(Le8/q;Landroidx/compose/material/SnackbarData;I)V

    .line 552
    .line 553
    .line 554
    const v9, 0x79b62c7c

    .line 555
    const/4 v11, 0x1

    .line 556
    .line 557
    .line 558
    invoke-static {v0, v9, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 559
    move-result-object v9

    .line 560
    .line 561
    .line 562
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    move-result-object v10

    .line 564
    .line 565
    .line 566
    invoke-interface {v5, v9, v0, v10}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->P()V

    .line 570
    .line 571
    add-int/lit8 v12, v12, 0x1

    .line 572
    goto :goto_d

    .line 573
    .line 574
    .line 575
    :cond_16
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 576
    .line 577
    .line 578
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 579
    .line 580
    .line 581
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 582
    .line 583
    .line 584
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 585
    .line 586
    .line 587
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 588
    .line 589
    .line 590
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 591
    move-object v2, v6

    .line 592
    .line 593
    .line 594
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 595
    move-result-object v6

    .line 596
    .line 597
    if-nez v6, :cond_17

    .line 598
    goto :goto_11

    .line 599
    .line 600
    :cond_17
    new-instance v7, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$3;

    .line 601
    move-object v0, v7

    .line 602
    .line 603
    move-object/from16 v1, p0

    .line 604
    .line 605
    move-object/from16 v3, p2

    .line 606
    .line 607
    move/from16 v4, p4

    .line 608
    .line 609
    move/from16 v5, p5

    .line 610
    .line 611
    .line 612
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SnackbarHostKt$FadeInFadeOutWithScale$3;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Le8/q;II)V

    .line 613
    .line 614
    .line 615
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 616
    :goto_11
    return-void
.end method

.method public static final b(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 12
    .param p0    # Landroidx/compose/material/SnackbarHostState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/material/SnackbarData;",
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
    move-object v1, p0

    .line 2
    .line 3
    move/from16 v4, p4

    .line 4
    .line 5
    const-string v0, "hostState"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x19b0b9fc

    .line 12
    move-object v2, p3

    .line 13
    .line 14
    .line 15
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    and-int/lit8 v2, p5, 0x1

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    or-int/lit8 v2, v4, 0x6

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    and-int/lit8 v2, v4, 0xe

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    const/4 v2, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x2

    .line 37
    :goto_0
    or-int/2addr v2, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v2, v4

    .line 40
    .line 41
    :goto_1
    and-int/lit8 v3, p5, 0x2

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    or-int/lit8 v2, v2, 0x30

    .line 46
    :cond_3
    move-object v5, p1

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_4
    and-int/lit8 v5, v4, 0x70

    .line 50
    .line 51
    if-nez v5, :cond_3

    .line 52
    move-object v5, p1

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 56
    move-result v6

    .line 57
    .line 58
    if-eqz v6, :cond_5

    .line 59
    .line 60
    const/16 v6, 0x20

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_5
    const/16 v6, 0x10

    .line 64
    :goto_2
    or-int/2addr v2, v6

    .line 65
    .line 66
    :goto_3
    and-int/lit8 v6, p5, 0x4

    .line 67
    .line 68
    if-eqz v6, :cond_7

    .line 69
    .line 70
    or-int/lit16 v2, v2, 0x180

    .line 71
    :cond_6
    move-object v7, p2

    .line 72
    goto :goto_5

    .line 73
    .line 74
    :cond_7
    and-int/lit16 v7, v4, 0x380

    .line 75
    .line 76
    if-nez v7, :cond_6

    .line 77
    move-object v7, p2

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 81
    move-result v8

    .line 82
    .line 83
    if-eqz v8, :cond_8

    .line 84
    .line 85
    const/16 v8, 0x100

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_8
    const/16 v8, 0x80

    .line 89
    :goto_4
    or-int/2addr v2, v8

    .line 90
    .line 91
    :goto_5
    and-int/lit16 v8, v2, 0x2db

    .line 92
    .line 93
    const/16 v9, 0x92

    .line 94
    .line 95
    if-ne v8, v9, :cond_a

    .line 96
    .line 97
    .line 98
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 99
    move-result v8

    .line 100
    .line 101
    if-nez v8, :cond_9

    .line 102
    goto :goto_6

    .line 103
    .line 104
    .line 105
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 106
    move-object v2, v5

    .line 107
    move-object v3, v7

    .line 108
    goto :goto_9

    .line 109
    .line 110
    :cond_a
    :goto_6
    if-eqz v3, :cond_b

    .line 111
    .line 112
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 113
    goto :goto_7

    .line 114
    :cond_b
    move-object v3, v5

    .line 115
    .line 116
    :goto_7
    if-eqz v6, :cond_c

    .line 117
    .line 118
    sget-object v5, Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Landroidx/compose/material/ComposableSingletons$SnackbarHostKt;->a()Le8/q;

    .line 122
    move-result-object v5

    .line 123
    move-object v11, v5

    .line 124
    goto :goto_8

    .line 125
    :cond_c
    move-object v11, v7

    .line 126
    .line 127
    .line 128
    :goto_8
    invoke-virtual {p0}, Landroidx/compose/material/SnackbarHostState;->b()Landroidx/compose/material/SnackbarData;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 137
    move-result-object v6

    .line 138
    .line 139
    check-cast v6, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 140
    .line 141
    new-instance v7, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$1;

    .line 142
    const/4 v8, 0x0

    .line 143
    .line 144
    .line 145
    invoke-direct {v7, v5, v6, v8}, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$1;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/d;)V

    .line 146
    const/4 v6, 0x0

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v7, v0, v6}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroidx/compose/material/SnackbarHostState;->b()Landroidx/compose/material/SnackbarData;

    .line 153
    move-result-object v5

    .line 154
    .line 155
    and-int/lit8 v6, v2, 0x70

    .line 156
    .line 157
    and-int/lit16 v2, v2, 0x380

    .line 158
    .line 159
    or-int v9, v6, v2

    .line 160
    const/4 v10, 0x0

    .line 161
    move-object v6, v3

    .line 162
    move-object v7, v11

    .line 163
    move-object v8, v0

    .line 164
    .line 165
    .line 166
    invoke-static/range {v5 .. v10}, Landroidx/compose/material/SnackbarHostKt;->a(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 167
    move-object v2, v3

    .line 168
    move-object v3, v11

    .line 169
    .line 170
    .line 171
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    if-nez v6, :cond_d

    .line 175
    goto :goto_a

    .line 176
    .line 177
    :cond_d
    new-instance v7, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$2;

    .line 178
    move-object v0, v7

    .line 179
    move-object v1, p0

    .line 180
    .line 181
    move/from16 v4, p4

    .line 182
    .line 183
    move/from16 v5, p5

    .line 184
    .line 185
    .line 186
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SnackbarHostKt$SnackbarHost$2;-><init>(Landroidx/compose/material/SnackbarHostState;Landroidx/compose/ui/Modifier;Le8/q;II)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 190
    :goto_a
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SnackbarHostKt;->a(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 4
    return-void
.end method

.method public static final synthetic d(Landroidx/compose/animation/core/AnimationSpec;ZLe8/a;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/SnackbarHostKt;->f(Landroidx/compose/animation/core/AnimationSpec;ZLe8/a;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SnackbarHostKt;->g(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f(Landroidx/compose/animation/core/AnimationSpec;ZLe8/a;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x3c954f6f

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    and-int/lit8 p5, p5, 0x4

    .line 9
    .line 10
    if-eqz p5, :cond_0

    .line 11
    .line 12
    sget-object p2, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$1;->INSTANCE:Landroidx/compose/material/SnackbarHostKt$animatedOpacity$1;

    .line 13
    :cond_0
    move-object v4, p2

    .line 14
    .line 15
    .line 16
    const p2, -0x1d58f75c

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    sget-object p5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 29
    move-result-object p5

    .line 30
    .line 31
    if-ne p2, p5, :cond_2

    .line 32
    const/4 p2, 0x0

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const/high16 p5, 0x3f800000    # 1.0f

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move p5, p2

    .line 39
    :goto_0
    const/4 v0, 0x2

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-static {p5, p2, v0, v1}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 51
    .line 52
    check-cast p2, Landroidx/compose/animation/core/Animatable;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    move-result-object p5

    .line 57
    .line 58
    new-instance v6, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$2;

    .line 59
    const/4 v5, 0x0

    .line 60
    move-object v0, v6

    .line 61
    move-object v1, p2

    .line 62
    move v2, p1

    .line 63
    move-object v3, p0

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$2;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/AnimationSpec;Le8/a;Lkotlin/coroutines/d;)V

    .line 67
    .line 68
    shr-int/lit8 p0, p4, 0x3

    .line 69
    .line 70
    and-int/lit8 p0, p0, 0xe

    .line 71
    .line 72
    .line 73
    invoke-static {p5, v6, p3, p0}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Landroidx/compose/animation/core/Animatable;->g()Landroidx/compose/runtime/State;

    .line 77
    move-result-object p0

    .line 78
    .line 79
    .line 80
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 81
    return-object p0
.end method

.method private static final g(Landroidx/compose/animation/core/AnimationSpec;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 4
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x776b0f5c

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    const v0, -0x1d58f75c

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 34
    :goto_0
    const/4 v1, 0x0

    .line 35
    const/4 v3, 0x2

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v3, v2}, Landroidx/compose/animation/core/AnimatableKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 46
    .line 47
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    new-instance v3, Landroidx/compose/material/SnackbarHostKt$animatedScale$1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v0, p1, p0, v2}, Landroidx/compose/material/SnackbarHostKt$animatedScale$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/d;)V

    .line 57
    .line 58
    shr-int/lit8 p0, p3, 0x3

    .line 59
    .line 60
    and-int/lit8 p0, p0, 0xe

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v3, p2, p0}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->g()Landroidx/compose/runtime/State;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 71
    return-object p0
.end method

.method public static final h(Landroidx/compose/material/SnackbarDuration;ZLandroidx/compose/ui/platform/AccessibilityManager;)J
    .locals 8
    .param p0    # Landroidx/compose/material/SnackbarDuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/platform/AccessibilityManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/material/SnackbarHostKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result p0

    .line 12
    .line 13
    aget p0, v0, p0

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    const/4 v0, 0x2

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    const/4 v0, 0x3

    .line 21
    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    const-wide/16 v0, 0xfa0

    .line 25
    :goto_0
    move-wide v3, v0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance p0, Lw7/s;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 32
    throw p0

    .line 33
    .line 34
    :cond_1
    const-wide/16 v0, 0x2710

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :goto_1
    if-nez p2, :cond_3

    .line 44
    return-wide v3

    .line 45
    :cond_3
    const/4 v5, 0x1

    .line 46
    const/4 v6, 0x1

    .line 47
    move-object v2, p2

    .line 48
    move v7, p1

    .line 49
    .line 50
    .line 51
    invoke-interface/range {v2 .. v7}, Landroidx/compose/ui/platform/AccessibilityManager;->a(JZZZ)J

    .line 52
    move-result-wide p0

    .line 53
    return-wide p0
.end method
