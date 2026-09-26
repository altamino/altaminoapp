.class public final Landroidx/compose/animation/AnimatedVisibilityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimatedVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,863:1\n775#1,4:898\n781#1,2:909\n779#1:912\n780#1:939\n785#1:944\n25#2:864\n36#2:872\n36#2:880\n50#2:890\n49#2:891\n36#2:902\n25#2:911\n460#2,13:926\n473#2,3:940\n36#2:945\n25#2:952\n460#2,16:972\n25#2:989\n1057#3,6:865\n1057#3,6:873\n1057#3,6:881\n1057#3,6:892\n1057#3,6:903\n1057#3,6:946\n1057#3,6:953\n1057#3,6:990\n1#4:871\n781#5:879\n782#5,3:887\n75#6:913\n76#6,11:915\n89#6:943\n75#6:959\n76#6,11:961\n89#6:988\n76#7:914\n76#7:960\n*S KotlinDebug\n*F\n+ 1 AnimatedVisibility.kt\nandroidx/compose/animation/AnimatedVisibilityKt\n*L\n753#1:898,4\n753#1:909,2\n753#1:912\n753#1:939\n753#1:944\n710#1:864\n735#1:872\n740#1:880\n744#1:890\n744#1:891\n753#1:902\n753#1:911\n753#1:926,13\n753#1:940,3\n778#1:945\n782#1:952\n779#1:972,16\n847#1:989\n710#1:865,6\n735#1:873,6\n740#1:881,6\n744#1:892,6\n753#1:903,6\n778#1:946,6\n782#1:953,6\n847#1:990,6\n740#1:879\n740#1:887,3\n753#1:913\n753#1:915,11\n753#1:943\n779#1:959\n779#1:961,11\n779#1:988\n753#1:914\n779#1:960\n*E\n"
.end annotation


# direct methods
.method private static final a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V
    .locals 19
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
            "Le8/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v6, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v9, p5

    .line 9
    .line 10
    move/from16 v10, p7

    .line 11
    .line 12
    .line 13
    const v0, 0x302cf9ed

    .line 14
    .line 15
    move-object/from16 v1, p6

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 19
    move-result-object v15

    .line 20
    .line 21
    and-int/lit8 v0, v10, 0xe

    .line 22
    const/4 v1, 0x2

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v1

    .line 34
    :goto_0
    or-int/2addr v0, v10

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v10

    .line 37
    .line 38
    :goto_1
    and-int/lit8 v2, v10, 0x70

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x20

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_2
    const/16 v2, 0x10

    .line 52
    :goto_2
    or-int/2addr v0, v2

    .line 53
    .line 54
    :cond_3
    and-int/lit16 v2, v10, 0x380

    .line 55
    .line 56
    if-nez v2, :cond_5

    .line 57
    .line 58
    .line 59
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    const/16 v2, 0x100

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    const/16 v2, 0x80

    .line 68
    :goto_3
    or-int/2addr v0, v2

    .line 69
    .line 70
    :cond_5
    and-int/lit16 v2, v10, 0x1c00

    .line 71
    .line 72
    move-object/from16 v14, p3

    .line 73
    .line 74
    if-nez v2, :cond_7

    .line 75
    .line 76
    .line 77
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 78
    move-result v2

    .line 79
    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    const/16 v2, 0x800

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_6
    const/16 v2, 0x400

    .line 86
    :goto_4
    or-int/2addr v0, v2

    .line 87
    .line 88
    .line 89
    :cond_7
    const v11, 0xe000

    .line 90
    .line 91
    and-int v2, v10, v11

    .line 92
    .line 93
    move-object/from16 v13, p4

    .line 94
    .line 95
    if-nez v2, :cond_9

    .line 96
    .line 97
    .line 98
    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 99
    move-result v2

    .line 100
    .line 101
    if-eqz v2, :cond_8

    .line 102
    .line 103
    const/16 v2, 0x4000

    .line 104
    goto :goto_5

    .line 105
    .line 106
    :cond_8
    const/16 v2, 0x2000

    .line 107
    :goto_5
    or-int/2addr v0, v2

    .line 108
    .line 109
    :cond_9
    const/high16 v2, 0x70000

    .line 110
    and-int/2addr v2, v10

    .line 111
    .line 112
    if-nez v2, :cond_b

    .line 113
    .line 114
    .line 115
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 116
    move-result v2

    .line 117
    .line 118
    if-eqz v2, :cond_a

    .line 119
    .line 120
    const/high16 v2, 0x20000

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_a
    const/high16 v2, 0x10000

    .line 124
    :goto_6
    or-int/2addr v0, v2

    .line 125
    :cond_b
    move v12, v0

    .line 126
    .line 127
    .line 128
    const v0, 0x5b6db

    .line 129
    and-int/2addr v0, v12

    .line 130
    .line 131
    .line 132
    const v2, 0x12492

    .line 133
    .line 134
    if-ne v0, v2, :cond_e

    .line 135
    .line 136
    .line 137
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->b()Z

    .line 138
    move-result v0

    .line 139
    .line 140
    if-nez v0, :cond_c

    .line 141
    goto :goto_7

    .line 142
    .line 143
    .line 144
    :cond_c
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->g()V

    .line 145
    :cond_d
    move-object v2, v15

    .line 146
    .line 147
    goto/16 :goto_b

    .line 148
    .line 149
    :cond_e
    :goto_7
    and-int/lit8 v0, v12, 0xe

    .line 150
    .line 151
    .line 152
    const v5, 0x44faf204

    .line 153
    .line 154
    .line 155
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 159
    move-result v2

    .line 160
    .line 161
    .line 162
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 163
    move-result-object v3

    .line 164
    const/4 v4, 0x0

    .line 165
    .line 166
    if-nez v2, :cond_f

    .line 167
    .line 168
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    if-ne v3, v2, :cond_10

    .line 175
    .line 176
    .line 177
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    .line 181
    invoke-interface {v7, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v2

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v4, v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_10
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 193
    .line 194
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    .line 201
    invoke-interface {v7, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    check-cast v1, Ljava/lang/Boolean;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    move-result v1

    .line 209
    .line 210
    if-nez v1, :cond_11

    .line 211
    .line 212
    .line 213
    invoke-interface {v3}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    check-cast v1, Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 220
    move-result v1

    .line 221
    .line 222
    if-nez v1, :cond_11

    .line 223
    .line 224
    .line 225
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 226
    move-result v1

    .line 227
    .line 228
    if-eqz v1, :cond_d

    .line 229
    .line 230
    :cond_11
    const-string v16, "EnterExitTransition"

    .line 231
    .line 232
    or-int/lit8 v1, v0, 0x30

    .line 233
    .line 234
    .line 235
    const v2, 0x48730564

    .line 236
    .line 237
    .line 238
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 239
    .line 240
    and-int/lit8 v2, v1, 0xe

    .line 241
    .line 242
    .line 243
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 247
    move-result v17

    .line 248
    .line 249
    .line 250
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 251
    move-result-object v4

    .line 252
    .line 253
    if-nez v17, :cond_12

    .line 254
    .line 255
    sget-object v17, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 259
    move-result-object v5

    .line 260
    .line 261
    if-ne v4, v5, :cond_13

    .line 262
    .line 263
    .line 264
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 265
    move-result-object v4

    .line 266
    .line 267
    .line 268
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_13
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 275
    move-result v5

    .line 276
    .line 277
    if-eqz v5, :cond_14

    .line 278
    .line 279
    .line 280
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 281
    move-result-object v4

    .line 282
    .line 283
    :cond_14
    shr-int/lit8 v5, v1, 0x3

    .line 284
    .line 285
    and-int/lit8 v5, v5, 0x70

    .line 286
    .line 287
    .line 288
    const v11, -0x48c09992

    .line 289
    .line 290
    .line 291
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 292
    .line 293
    and-int/lit8 v18, v12, 0x70

    .line 294
    .line 295
    or-int v0, v0, v18

    .line 296
    .line 297
    shl-int/lit8 v5, v5, 0x6

    .line 298
    .line 299
    and-int/lit16 v5, v5, 0x380

    .line 300
    or-int/2addr v0, v5

    .line 301
    .line 302
    .line 303
    invoke-static {v6, v7, v4, v15, v0}, Landroidx/compose/animation/AnimatedVisibilityKt;->k(Landroidx/compose/animation/core/Transition;Le8/l;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;

    .line 304
    move-result-object v4

    .line 305
    .line 306
    .line 307
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 311
    move-result-object v5

    .line 312
    .line 313
    .line 314
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 315
    .line 316
    .line 317
    invoke-static {v6, v7, v5, v15, v0}, Landroidx/compose/animation/AnimatedVisibilityKt;->k(Landroidx/compose/animation/core/Transition;Le8/l;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;

    .line 318
    move-result-object v5

    .line 319
    .line 320
    .line 321
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 322
    .line 323
    shl-int/lit8 v0, v1, 0x6

    .line 324
    .line 325
    and-int/lit16 v0, v0, 0x1c00

    .line 326
    .line 327
    or-int v11, v2, v0

    .line 328
    .line 329
    move-object/from16 v0, p0

    .line 330
    move-object v1, v4

    .line 331
    move-object v2, v5

    .line 332
    move-object v5, v3

    .line 333
    .line 334
    move-object/from16 v3, v16

    .line 335
    const/4 v6, 0x0

    .line 336
    move-object v4, v15

    .line 337
    move-object v6, v5

    .line 338
    move v5, v11

    .line 339
    .line 340
    .line 341
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/TransitionKt;->a(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    .line 342
    move-result-object v11

    .line 343
    .line 344
    .line 345
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 346
    .line 347
    .line 348
    const v0, 0x1e7b2b64

    .line 349
    .line 350
    .line 351
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 352
    .line 353
    .line 354
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 355
    move-result v0

    .line 356
    .line 357
    .line 358
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 359
    move-result v1

    .line 360
    or-int/2addr v0, v1

    .line 361
    .line 362
    .line 363
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 364
    move-result-object v1

    .line 365
    .line 366
    if-nez v0, :cond_15

    .line 367
    .line 368
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 372
    move-result-object v0

    .line 373
    .line 374
    if-ne v1, v0, :cond_16

    .line 375
    .line 376
    :cond_15
    new-instance v1, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;

    .line 377
    const/4 v0, 0x0

    .line 378
    .line 379
    .line 380
    invoke-direct {v1, v11, v6, v0}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/d;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_16
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 387
    .line 388
    check-cast v1, Le8/p;

    .line 389
    const/4 v0, 0x0

    .line 390
    .line 391
    .line 392
    invoke-static {v11, v1, v15, v0}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 393
    .line 394
    shr-int/lit8 v1, v12, 0x3

    .line 395
    .line 396
    and-int/lit8 v2, v1, 0x70

    .line 397
    .line 398
    and-int/lit16 v3, v1, 0x380

    .line 399
    or-int/2addr v2, v3

    .line 400
    .line 401
    and-int/lit16 v3, v1, 0x1c00

    .line 402
    or-int/2addr v2, v3

    .line 403
    .line 404
    .line 405
    const v3, 0xe000

    .line 406
    and-int/2addr v1, v3

    .line 407
    or-int/2addr v1, v2

    .line 408
    .line 409
    .line 410
    const v2, -0x75422b26

    .line 411
    .line 412
    .line 413
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 417
    move-result-object v2

    .line 418
    .line 419
    sget-object v3, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 420
    .line 421
    if-eq v2, v3, :cond_18

    .line 422
    .line 423
    .line 424
    invoke-virtual {v11}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 425
    move-result-object v2

    .line 426
    .line 427
    if-ne v2, v3, :cond_17

    .line 428
    goto :goto_8

    .line 429
    :cond_17
    move-object v2, v15

    .line 430
    .line 431
    goto/16 :goto_a

    .line 432
    .line 433
    :cond_18
    :goto_8
    and-int/lit8 v2, v1, 0xe

    .line 434
    .line 435
    .line 436
    const v3, 0x44faf204

    .line 437
    .line 438
    .line 439
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 440
    .line 441
    .line 442
    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 443
    move-result v3

    .line 444
    .line 445
    .line 446
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 447
    move-result-object v4

    .line 448
    .line 449
    if-nez v3, :cond_19

    .line 450
    .line 451
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 455
    move-result-object v3

    .line 456
    .line 457
    if-ne v4, v3, :cond_1a

    .line 458
    .line 459
    :cond_19
    new-instance v4, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 460
    .line 461
    .line 462
    invoke-direct {v4, v11}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;-><init>(Landroidx/compose/animation/core/Transition;)V

    .line 463
    .line 464
    .line 465
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    :cond_1a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->Q()V

    .line 469
    .line 470
    check-cast v4, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 471
    .line 472
    const-string v3, "Built-in"

    .line 473
    .line 474
    or-int/lit16 v2, v2, 0xc00

    .line 475
    .line 476
    shr-int/lit8 v5, v1, 0x3

    .line 477
    .line 478
    and-int/lit8 v6, v5, 0x70

    .line 479
    or-int/2addr v2, v6

    .line 480
    .line 481
    and-int/lit16 v5, v5, 0x380

    .line 482
    .line 483
    or-int v16, v2, v5

    .line 484
    .line 485
    move-object/from16 v12, p3

    .line 486
    .line 487
    move-object/from16 v13, p4

    .line 488
    move-object v14, v3

    .line 489
    move-object v2, v15

    .line 490
    .line 491
    .line 492
    invoke-static/range {v11 .. v16}, Landroidx/compose/animation/EnterExitTransitionKt;->g(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 493
    move-result-object v3

    .line 494
    .line 495
    .line 496
    invoke-interface {v8, v3}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 497
    move-result-object v3

    .line 498
    .line 499
    .line 500
    const v5, -0x1d58f75c

    .line 501
    .line 502
    .line 503
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 504
    .line 505
    .line 506
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 507
    move-result-object v5

    .line 508
    .line 509
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 513
    move-result-object v6

    .line 514
    .line 515
    if-ne v5, v6, :cond_1b

    .line 516
    .line 517
    new-instance v5, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;

    .line 518
    .line 519
    .line 520
    invoke-direct {v5, v4}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;-><init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v2, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :cond_1b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 527
    .line 528
    check-cast v5, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 529
    .line 530
    .line 531
    const v6, -0x4ee9b9da

    .line 532
    .line 533
    .line 534
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 535
    .line 536
    .line 537
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 538
    move-result-object v6

    .line 539
    .line 540
    .line 541
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 542
    move-result-object v6

    .line 543
    .line 544
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 545
    .line 546
    .line 547
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 548
    move-result-object v11

    .line 549
    .line 550
    .line 551
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 552
    move-result-object v11

    .line 553
    .line 554
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 555
    .line 556
    .line 557
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 558
    move-result-object v12

    .line 559
    .line 560
    .line 561
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 562
    move-result-object v12

    .line 563
    .line 564
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 565
    .line 566
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 570
    move-result-object v14

    .line 571
    .line 572
    .line 573
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 574
    move-result-object v3

    .line 575
    .line 576
    .line 577
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 578
    move-result-object v15

    .line 579
    .line 580
    instance-of v15, v15, Landroidx/compose/runtime/Applier;

    .line 581
    .line 582
    if-nez v15, :cond_1c

    .line 583
    .line 584
    .line 585
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 586
    .line 587
    .line 588
    :cond_1c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->e()V

    .line 589
    .line 590
    .line 591
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 592
    move-result v15

    .line 593
    .line 594
    if-eqz v15, :cond_1d

    .line 595
    .line 596
    .line 597
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 598
    goto :goto_9

    .line 599
    .line 600
    .line 601
    :cond_1d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->c()V

    .line 602
    .line 603
    .line 604
    :goto_9
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->L()V

    .line 605
    .line 606
    .line 607
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 608
    move-result-object v14

    .line 609
    .line 610
    .line 611
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 612
    move-result-object v15

    .line 613
    .line 614
    .line 615
    invoke-static {v14, v5, v15}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 619
    move-result-object v5

    .line 620
    .line 621
    .line 622
    invoke-static {v14, v6, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 626
    move-result-object v5

    .line 627
    .line 628
    .line 629
    invoke-static {v14, v11, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 633
    move-result-object v5

    .line 634
    .line 635
    .line 636
    invoke-static {v14, v12, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 637
    .line 638
    .line 639
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    .line 640
    .line 641
    .line 642
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 643
    move-result-object v5

    .line 644
    .line 645
    .line 646
    invoke-static {v5}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 647
    move-result-object v5

    .line 648
    .line 649
    .line 650
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 651
    move-result-object v0

    .line 652
    .line 653
    .line 654
    invoke-interface {v3, v5, v2, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    const v0, 0x7ab4aae9

    .line 658
    .line 659
    .line 660
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 661
    .line 662
    .line 663
    const v0, 0x6b22eaec

    .line 664
    .line 665
    .line 666
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 667
    .line 668
    shr-int/lit8 v0, v1, 0x9

    .line 669
    .line 670
    and-int/lit8 v0, v0, 0x70

    .line 671
    .line 672
    or-int/lit8 v0, v0, 0x8

    .line 673
    .line 674
    .line 675
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    move-result-object v0

    .line 677
    .line 678
    .line 679
    invoke-interface {v9, v4, v2, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 683
    .line 684
    .line 685
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 686
    .line 687
    .line 688
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->d()V

    .line 689
    .line 690
    .line 691
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 692
    .line 693
    .line 694
    :goto_a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 695
    .line 696
    .line 697
    :goto_b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 698
    move-result-object v11

    .line 699
    .line 700
    if-nez v11, :cond_1e

    .line 701
    goto :goto_c

    .line 702
    .line 703
    :cond_1e
    new-instance v12, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2;

    .line 704
    move-object v0, v12

    .line 705
    .line 706
    move-object/from16 v1, p0

    .line 707
    .line 708
    move-object/from16 v2, p1

    .line 709
    .line 710
    move-object/from16 v3, p2

    .line 711
    .line 712
    move-object/from16 v4, p3

    .line 713
    .line 714
    move-object/from16 v5, p4

    .line 715
    .line 716
    move-object/from16 v6, p5

    .line 717
    .line 718
    move/from16 v7, p7

    .line 719
    .line 720
    .line 721
    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedEnterExitImpl$2;-><init>(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;I)V

    .line 722
    .line 723
    .line 724
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 725
    :goto_c
    return-void
.end method

.method public static final b(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/animation/core/MutableTransitionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
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
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v10, p5

    .line 5
    .line 6
    move/from16 v11, p7

    .line 7
    .line 8
    const-string v0, "visibleState"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

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
    const v0, -0xd4928fa

    .line 20
    .line 21
    move-object/from16 v2, p6

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    and-int/lit8 v2, p8, 0x1

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    or-int/lit8 v2, v11, 0x6

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    const/4 v2, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x2

    .line 46
    :goto_0
    or-int/2addr v2, v11

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v2, v11

    .line 49
    .line 50
    :goto_1
    and-int/lit8 v3, p8, 0x2

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    or-int/lit8 v2, v2, 0x30

    .line 55
    .line 56
    :cond_3
    move-object/from16 v4, p1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    and-int/lit8 v4, v11, 0x70

    .line 60
    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    move-object/from16 v4, p1

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 67
    move-result v5

    .line 68
    .line 69
    if-eqz v5, :cond_5

    .line 70
    .line 71
    const/16 v5, 0x20

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_5
    const/16 v5, 0x10

    .line 75
    :goto_2
    or-int/2addr v2, v5

    .line 76
    .line 77
    :goto_3
    and-int/lit8 v5, p8, 0x4

    .line 78
    .line 79
    if-eqz v5, :cond_7

    .line 80
    .line 81
    or-int/lit16 v2, v2, 0x180

    .line 82
    .line 83
    :cond_6
    move-object/from16 v6, p2

    .line 84
    goto :goto_5

    .line 85
    .line 86
    :cond_7
    and-int/lit16 v6, v11, 0x380

    .line 87
    .line 88
    if-nez v6, :cond_6

    .line 89
    .line 90
    move-object/from16 v6, p2

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 94
    move-result v7

    .line 95
    .line 96
    if-eqz v7, :cond_8

    .line 97
    .line 98
    const/16 v7, 0x100

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_8
    const/16 v7, 0x80

    .line 102
    :goto_4
    or-int/2addr v2, v7

    .line 103
    .line 104
    :goto_5
    and-int/lit8 v7, p8, 0x8

    .line 105
    .line 106
    if-eqz v7, :cond_a

    .line 107
    .line 108
    or-int/lit16 v2, v2, 0xc00

    .line 109
    .line 110
    :cond_9
    move-object/from16 v8, p3

    .line 111
    goto :goto_7

    .line 112
    .line 113
    :cond_a
    and-int/lit16 v8, v11, 0x1c00

    .line 114
    .line 115
    if-nez v8, :cond_9

    .line 116
    .line 117
    move-object/from16 v8, p3

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 121
    move-result v9

    .line 122
    .line 123
    if-eqz v9, :cond_b

    .line 124
    .line 125
    const/16 v9, 0x800

    .line 126
    goto :goto_6

    .line 127
    .line 128
    :cond_b
    const/16 v9, 0x400

    .line 129
    :goto_6
    or-int/2addr v2, v9

    .line 130
    .line 131
    :goto_7
    and-int/lit8 v9, p8, 0x10

    .line 132
    .line 133
    .line 134
    const v12, 0xe000

    .line 135
    .line 136
    if-eqz v9, :cond_d

    .line 137
    .line 138
    or-int/lit16 v2, v2, 0x6000

    .line 139
    .line 140
    :cond_c
    move-object/from16 v13, p4

    .line 141
    goto :goto_9

    .line 142
    .line 143
    :cond_d
    and-int v13, v11, v12

    .line 144
    .line 145
    if-nez v13, :cond_c

    .line 146
    .line 147
    move-object/from16 v13, p4

    .line 148
    .line 149
    .line 150
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    or-int/2addr v2, v14

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
    or-int/2addr v2, v14

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
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

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
    and-int/2addr v14, v2

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
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

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
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 205
    move-object v2, v4

    .line 206
    move-object v3, v6

    .line 207
    move-object v4, v8

    .line 208
    move-object v5, v13

    .line 209
    .line 210
    goto/16 :goto_10

    .line 211
    .line 212
    :cond_13
    :goto_c
    if-eqz v3, :cond_14

    .line 213
    .line 214
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 215
    move-object v14, v3

    .line 216
    goto :goto_d

    .line 217
    :cond_14
    move-object v14, v4

    .line 218
    :goto_d
    const/4 v3, 0x0

    .line 219
    const/4 v4, 0x3

    .line 220
    const/4 v15, 0x0

    .line 221
    .line 222
    if-eqz v5, :cond_15

    .line 223
    .line 224
    .line 225
    invoke-static {v15, v3, v4, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 226
    move-result-object v5

    .line 227
    .line 228
    const/16 v16, 0x0

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    const/16 v18, 0x0

    .line 233
    .line 234
    const/16 v19, 0x0

    .line 235
    .line 236
    const/16 v20, 0xf

    .line 237
    .line 238
    const/16 v21, 0x0

    .line 239
    .line 240
    .line 241
    invoke-static/range {v16 .. v21}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 242
    move-result-object v6

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 246
    move-result-object v5

    .line 247
    .line 248
    move-object/from16 v16, v5

    .line 249
    goto :goto_e

    .line 250
    .line 251
    :cond_15
    move-object/from16 v16, v6

    .line 252
    .line 253
    :goto_e
    if-eqz v7, :cond_16

    .line 254
    .line 255
    .line 256
    invoke-static {v15, v3, v4, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    const/16 v17, 0x0

    .line 260
    .line 261
    const/16 v18, 0x0

    .line 262
    .line 263
    const/16 v19, 0x0

    .line 264
    .line 265
    const/16 v20, 0x0

    .line 266
    .line 267
    const/16 v21, 0xf

    .line 268
    .line 269
    const/16 v22, 0x0

    .line 270
    .line 271
    .line 272
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->E(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 273
    move-result-object v4

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v4}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 277
    move-result-object v3

    .line 278
    move-object v15, v3

    .line 279
    goto :goto_f

    .line 280
    :cond_16
    move-object v15, v8

    .line 281
    .line 282
    :goto_f
    if-eqz v9, :cond_17

    .line 283
    .line 284
    const-string v3, "AnimatedVisibility"

    .line 285
    move-object v13, v3

    .line 286
    .line 287
    :cond_17
    sget v3, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    .line 288
    .line 289
    and-int/lit8 v4, v2, 0xe

    .line 290
    or-int/2addr v3, v4

    .line 291
    .line 292
    shr-int/lit8 v4, v2, 0x9

    .line 293
    .line 294
    and-int/lit8 v4, v4, 0x70

    .line 295
    or-int/2addr v3, v4

    .line 296
    const/4 v4, 0x0

    .line 297
    .line 298
    .line 299
    invoke-static {v1, v13, v0, v3, v4}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 300
    move-result-object v3

    .line 301
    .line 302
    sget-object v4, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$7;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$7;

    .line 303
    .line 304
    shl-int/lit8 v5, v2, 0x3

    .line 305
    .line 306
    and-int/lit16 v6, v5, 0x380

    .line 307
    .line 308
    or-int/lit8 v6, v6, 0x30

    .line 309
    .line 310
    and-int/lit16 v7, v5, 0x1c00

    .line 311
    or-int/2addr v6, v7

    .line 312
    and-int/2addr v5, v12

    .line 313
    or-int/2addr v5, v6

    .line 314
    .line 315
    const/high16 v6, 0x70000

    .line 316
    and-int/2addr v2, v6

    .line 317
    .line 318
    or-int v9, v5, v2

    .line 319
    move-object v2, v3

    .line 320
    move-object v3, v4

    .line 321
    move-object v4, v14

    .line 322
    .line 323
    move-object/from16 v5, v16

    .line 324
    move-object v6, v15

    .line 325
    .line 326
    move-object/from16 v7, p5

    .line 327
    move-object v8, v0

    .line 328
    .line 329
    .line 330
    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 331
    move-object v5, v13

    .line 332
    move-object v2, v14

    .line 333
    move-object v4, v15

    .line 334
    .line 335
    move-object/from16 v3, v16

    .line 336
    .line 337
    .line 338
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 339
    move-result-object v9

    .line 340
    .line 341
    if-nez v9, :cond_18

    .line 342
    goto :goto_11

    .line 343
    .line 344
    :cond_18
    new-instance v12, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$8;

    .line 345
    move-object v0, v12

    .line 346
    .line 347
    move-object/from16 v1, p0

    .line 348
    .line 349
    move-object/from16 v6, p5

    .line 350
    .line 351
    move/from16 v7, p7

    .line 352
    .line 353
    move/from16 v8, p8

    .line 354
    .line 355
    .line 356
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$8;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;II)V

    .line 357
    .line 358
    .line 359
    invoke-interface {v9, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 360
    :goto_11
    return-void
.end method

.method public static final c(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/ExitTransition;
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
            "Le8/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v8, p0

    .line 3
    .line 4
    move-object/from16 v9, p1

    .line 5
    .line 6
    move-object/from16 v10, p5

    .line 7
    .line 8
    move/from16 v11, p7

    .line 9
    .line 10
    const-string v0, "<this>"

    .line 11
    .line 12
    .line 13
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "visible"

    .line 16
    .line 17
    .line 18
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "content"

    .line 21
    .line 22
    .line 23
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x3d825161

    .line 27
    .line 28
    move-object/from16 v1, p6

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 32
    move-result-object v12

    .line 33
    .line 34
    const/high16 v0, -0x80000000

    .line 35
    .line 36
    and-int v0, p8, v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    or-int/lit8 v0, v11, 0x6

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    and-int/lit8 v0, v11, 0xe

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x4

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x2

    .line 55
    :goto_0
    or-int/2addr v0, v11

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v0, v11

    .line 58
    .line 59
    :goto_1
    and-int/lit8 v1, p8, 0x1

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    or-int/lit8 v0, v0, 0x30

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_3
    and-int/lit8 v1, v11, 0x70

    .line 67
    .line 68
    if-nez v1, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    const/16 v1, 0x20

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_4
    const/16 v1, 0x10

    .line 80
    :goto_2
    or-int/2addr v0, v1

    .line 81
    .line 82
    :cond_5
    :goto_3
    and-int/lit8 v1, p8, 0x2

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    or-int/lit16 v0, v0, 0x180

    .line 87
    .line 88
    :cond_6
    move-object/from16 v2, p2

    .line 89
    goto :goto_5

    .line 90
    .line 91
    :cond_7
    and-int/lit16 v2, v11, 0x380

    .line 92
    .line 93
    if-nez v2, :cond_6

    .line 94
    .line 95
    move-object/from16 v2, p2

    .line 96
    .line 97
    .line 98
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 99
    move-result v3

    .line 100
    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    const/16 v3, 0x100

    .line 104
    goto :goto_4

    .line 105
    .line 106
    :cond_8
    const/16 v3, 0x80

    .line 107
    :goto_4
    or-int/2addr v0, v3

    .line 108
    .line 109
    :goto_5
    and-int/lit8 v3, p8, 0x4

    .line 110
    .line 111
    if-eqz v3, :cond_a

    .line 112
    .line 113
    or-int/lit16 v0, v0, 0xc00

    .line 114
    .line 115
    :cond_9
    move-object/from16 v4, p3

    .line 116
    goto :goto_7

    .line 117
    .line 118
    :cond_a
    and-int/lit16 v4, v11, 0x1c00

    .line 119
    .line 120
    if-nez v4, :cond_9

    .line 121
    .line 122
    move-object/from16 v4, p3

    .line 123
    .line 124
    .line 125
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 126
    move-result v5

    .line 127
    .line 128
    if-eqz v5, :cond_b

    .line 129
    .line 130
    const/16 v5, 0x800

    .line 131
    goto :goto_6

    .line 132
    .line 133
    :cond_b
    const/16 v5, 0x400

    .line 134
    :goto_6
    or-int/2addr v0, v5

    .line 135
    .line 136
    :goto_7
    and-int/lit8 v5, p8, 0x8

    .line 137
    .line 138
    .line 139
    const v6, 0xe000

    .line 140
    .line 141
    if-eqz v5, :cond_d

    .line 142
    .line 143
    or-int/lit16 v0, v0, 0x6000

    .line 144
    .line 145
    :cond_c
    move-object/from16 v7, p4

    .line 146
    goto :goto_9

    .line 147
    .line 148
    :cond_d
    and-int v7, v11, v6

    .line 149
    .line 150
    if-nez v7, :cond_c

    .line 151
    .line 152
    move-object/from16 v7, p4

    .line 153
    .line 154
    .line 155
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 156
    move-result v13

    .line 157
    .line 158
    if-eqz v13, :cond_e

    .line 159
    .line 160
    const/16 v13, 0x4000

    .line 161
    goto :goto_8

    .line 162
    .line 163
    :cond_e
    const/16 v13, 0x2000

    .line 164
    :goto_8
    or-int/2addr v0, v13

    .line 165
    .line 166
    :goto_9
    and-int/lit8 v13, p8, 0x10

    .line 167
    .line 168
    const/high16 v14, 0x70000

    .line 169
    .line 170
    if-eqz v13, :cond_f

    .line 171
    .line 172
    const/high16 v13, 0x30000

    .line 173
    :goto_a
    or-int/2addr v0, v13

    .line 174
    goto :goto_b

    .line 175
    .line 176
    :cond_f
    and-int v13, v11, v14

    .line 177
    .line 178
    if-nez v13, :cond_11

    .line 179
    .line 180
    .line 181
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 182
    move-result v13

    .line 183
    .line 184
    if-eqz v13, :cond_10

    .line 185
    .line 186
    const/high16 v13, 0x20000

    .line 187
    goto :goto_a

    .line 188
    .line 189
    :cond_10
    const/high16 v13, 0x10000

    .line 190
    goto :goto_a

    .line 191
    .line 192
    .line 193
    :cond_11
    :goto_b
    const v13, 0x5b6db

    .line 194
    and-int/2addr v13, v0

    .line 195
    .line 196
    .line 197
    const v15, 0x12492

    .line 198
    .line 199
    if-ne v13, v15, :cond_13

    .line 200
    .line 201
    .line 202
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->b()Z

    .line 203
    move-result v13

    .line 204
    .line 205
    if-nez v13, :cond_12

    .line 206
    goto :goto_c

    .line 207
    .line 208
    .line 209
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->g()V

    .line 210
    move-object v3, v2

    .line 211
    move-object v5, v7

    .line 212
    .line 213
    goto/16 :goto_10

    .line 214
    .line 215
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 216
    .line 217
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 218
    move-object v13, v1

    .line 219
    goto :goto_d

    .line 220
    :cond_14
    move-object v13, v2

    .line 221
    :goto_d
    const/4 v1, 0x3

    .line 222
    const/4 v2, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    .line 225
    if-eqz v3, :cond_15

    .line 226
    .line 227
    .line 228
    invoke-static {v15, v2, v1, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    const/16 v17, 0x0

    .line 234
    .line 235
    const/16 v18, 0x0

    .line 236
    .line 237
    const/16 v19, 0x0

    .line 238
    .line 239
    const/16 v20, 0xf

    .line 240
    .line 241
    const/16 v21, 0x0

    .line 242
    .line 243
    .line 244
    invoke-static/range {v16 .. v21}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 245
    move-result-object v4

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v4}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 249
    move-result-object v3

    .line 250
    .line 251
    move-object/from16 v16, v3

    .line 252
    goto :goto_e

    .line 253
    .line 254
    :cond_15
    move-object/from16 v16, v4

    .line 255
    .line 256
    :goto_e
    if-eqz v5, :cond_16

    .line 257
    .line 258
    const/16 v17, 0x0

    .line 259
    .line 260
    const/16 v18, 0x0

    .line 261
    .line 262
    const/16 v19, 0x0

    .line 263
    .line 264
    const/16 v20, 0x0

    .line 265
    .line 266
    const/16 v21, 0xf

    .line 267
    .line 268
    const/16 v22, 0x0

    .line 269
    .line 270
    .line 271
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->E(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 272
    move-result-object v3

    .line 273
    .line 274
    .line 275
    invoke-static {v15, v2, v1, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v1}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 280
    move-result-object v1

    .line 281
    move-object v15, v1

    .line 282
    goto :goto_f

    .line 283
    :cond_16
    move-object v15, v7

    .line 284
    .line 285
    :goto_f
    and-int/lit8 v1, v0, 0xe

    .line 286
    .line 287
    and-int/lit8 v2, v0, 0x70

    .line 288
    or-int/2addr v1, v2

    .line 289
    .line 290
    and-int/lit16 v2, v0, 0x380

    .line 291
    or-int/2addr v1, v2

    .line 292
    .line 293
    and-int/lit16 v2, v0, 0x1c00

    .line 294
    or-int/2addr v1, v2

    .line 295
    .line 296
    and-int v2, v0, v6

    .line 297
    or-int/2addr v1, v2

    .line 298
    and-int/2addr v0, v14

    .line 299
    .line 300
    or-int v7, v1, v0

    .line 301
    .line 302
    move-object/from16 v0, p0

    .line 303
    .line 304
    move-object/from16 v1, p1

    .line 305
    move-object v2, v13

    .line 306
    .line 307
    move-object/from16 v3, v16

    .line 308
    move-object v4, v15

    .line 309
    .line 310
    move-object/from16 v5, p5

    .line 311
    move-object v6, v12

    .line 312
    .line 313
    .line 314
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 315
    move-object v3, v13

    .line 316
    move-object v5, v15

    .line 317
    .line 318
    move-object/from16 v4, v16

    .line 319
    .line 320
    .line 321
    :goto_10
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 322
    move-result-object v12

    .line 323
    .line 324
    if-nez v12, :cond_17

    .line 325
    goto :goto_11

    .line 326
    .line 327
    :cond_17
    new-instance v13, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$13;

    .line 328
    move-object v0, v13

    .line 329
    .line 330
    move-object/from16 v1, p0

    .line 331
    .line 332
    move-object/from16 v2, p1

    .line 333
    .line 334
    move-object/from16 v6, p5

    .line 335
    .line 336
    move/from16 v7, p7

    .line 337
    .line 338
    move/from16 v8, p8

    .line 339
    .line 340
    .line 341
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$13;-><init>(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;II)V

    .line 342
    .line 343
    .line 344
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 345
    :goto_11
    return-void
.end method

.method public static final d(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Landroidx/compose/foundation/layout/ColumnScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/MutableTransitionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
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
            "(",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v2, p1

    .line 3
    .line 4
    move-object/from16 v11, p6

    .line 5
    .line 6
    move/from16 v12, p8

    .line 7
    .line 8
    const-string v0, "<this>"

    .line 9
    .line 10
    move-object/from16 v1, p0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "visibleState"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "content"

    .line 21
    .line 22
    .line 23
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, -0x32b3fd6a

    .line 27
    .line 28
    move-object/from16 v3, p7

    .line 29
    .line 30
    .line 31
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    and-int/lit8 v3, p9, 0x1

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    or-int/lit8 v3, v12, 0x30

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    and-int/lit8 v3, v12, 0x70

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    const/16 v3, 0x10

    .line 55
    :goto_0
    or-int/2addr v3, v12

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v3, v12

    .line 58
    .line 59
    :goto_1
    and-int/lit8 v4, p9, 0x2

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    or-int/lit16 v3, v3, 0x180

    .line 64
    .line 65
    :cond_3
    move-object/from16 v5, p2

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_4
    and-int/lit16 v5, v12, 0x380

    .line 69
    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    move-object/from16 v5, p2

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 76
    move-result v6

    .line 77
    .line 78
    if-eqz v6, :cond_5

    .line 79
    .line 80
    const/16 v6, 0x100

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_5
    const/16 v6, 0x80

    .line 84
    :goto_2
    or-int/2addr v3, v6

    .line 85
    .line 86
    :goto_3
    and-int/lit8 v6, p9, 0x4

    .line 87
    .line 88
    if-eqz v6, :cond_7

    .line 89
    .line 90
    or-int/lit16 v3, v3, 0xc00

    .line 91
    .line 92
    :cond_6
    move-object/from16 v7, p3

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_7
    and-int/lit16 v7, v12, 0x1c00

    .line 96
    .line 97
    if-nez v7, :cond_6

    .line 98
    .line 99
    move-object/from16 v7, p3

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 103
    move-result v8

    .line 104
    .line 105
    if-eqz v8, :cond_8

    .line 106
    .line 107
    const/16 v8, 0x800

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_8
    const/16 v8, 0x400

    .line 111
    :goto_4
    or-int/2addr v3, v8

    .line 112
    .line 113
    :goto_5
    and-int/lit8 v8, p9, 0x8

    .line 114
    .line 115
    .line 116
    const v9, 0xe000

    .line 117
    .line 118
    if-eqz v8, :cond_a

    .line 119
    .line 120
    or-int/lit16 v3, v3, 0x6000

    .line 121
    .line 122
    :cond_9
    move-object/from16 v10, p4

    .line 123
    goto :goto_7

    .line 124
    .line 125
    :cond_a
    and-int v10, v12, v9

    .line 126
    .line 127
    if-nez v10, :cond_9

    .line 128
    .line 129
    move-object/from16 v10, p4

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 133
    move-result v13

    .line 134
    .line 135
    if-eqz v13, :cond_b

    .line 136
    .line 137
    const/16 v13, 0x4000

    .line 138
    goto :goto_6

    .line 139
    .line 140
    :cond_b
    const/16 v13, 0x2000

    .line 141
    :goto_6
    or-int/2addr v3, v13

    .line 142
    .line 143
    :goto_7
    and-int/lit8 v13, p9, 0x10

    .line 144
    .line 145
    const/high16 v14, 0x70000

    .line 146
    .line 147
    if-eqz v13, :cond_d

    .line 148
    .line 149
    const/high16 v15, 0x30000

    .line 150
    or-int/2addr v3, v15

    .line 151
    .line 152
    :cond_c
    move-object/from16 v15, p5

    .line 153
    goto :goto_9

    .line 154
    .line 155
    :cond_d
    and-int v15, v12, v14

    .line 156
    .line 157
    if-nez v15, :cond_c

    .line 158
    .line 159
    move-object/from16 v15, p5

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 163
    move-result v16

    .line 164
    .line 165
    if-eqz v16, :cond_e

    .line 166
    .line 167
    const/high16 v16, 0x20000

    .line 168
    goto :goto_8

    .line 169
    .line 170
    :cond_e
    const/high16 v16, 0x10000

    .line 171
    .line 172
    :goto_8
    or-int v3, v3, v16

    .line 173
    .line 174
    :goto_9
    and-int/lit8 v16, p9, 0x20

    .line 175
    .line 176
    if-eqz v16, :cond_f

    .line 177
    .line 178
    const/high16 v16, 0x180000

    .line 179
    .line 180
    :goto_a
    or-int v3, v3, v16

    .line 181
    goto :goto_b

    .line 182
    .line 183
    :cond_f
    const/high16 v16, 0x380000

    .line 184
    .line 185
    and-int v16, v12, v16

    .line 186
    .line 187
    if-nez v16, :cond_11

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 191
    move-result v16

    .line 192
    .line 193
    if-eqz v16, :cond_10

    .line 194
    .line 195
    const/high16 v16, 0x100000

    .line 196
    goto :goto_a

    .line 197
    .line 198
    :cond_10
    const/high16 v16, 0x80000

    .line 199
    goto :goto_a

    .line 200
    .line 201
    .line 202
    :cond_11
    :goto_b
    const v16, 0x2db6d1

    .line 203
    .line 204
    and-int v14, v3, v16

    .line 205
    .line 206
    .line 207
    const v9, 0x92490

    .line 208
    .line 209
    if-ne v14, v9, :cond_13

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 213
    move-result v9

    .line 214
    .line 215
    if-nez v9, :cond_12

    .line 216
    goto :goto_c

    .line 217
    .line 218
    .line 219
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 220
    move-object v3, v5

    .line 221
    move-object v4, v7

    .line 222
    move-object v5, v10

    .line 223
    move-object v6, v15

    .line 224
    .line 225
    goto/16 :goto_10

    .line 226
    .line 227
    :cond_13
    :goto_c
    if-eqz v4, :cond_14

    .line 228
    .line 229
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 230
    move-object v14, v4

    .line 231
    goto :goto_d

    .line 232
    :cond_14
    move-object v14, v5

    .line 233
    :goto_d
    const/4 v4, 0x0

    .line 234
    const/4 v5, 0x3

    .line 235
    const/4 v9, 0x0

    .line 236
    .line 237
    if-eqz v6, :cond_15

    .line 238
    .line 239
    const/16 v17, 0x0

    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const/16 v19, 0x0

    .line 244
    .line 245
    const/16 v20, 0x0

    .line 246
    .line 247
    const/16 v21, 0xf

    .line 248
    .line 249
    const/16 v22, 0x0

    .line 250
    .line 251
    .line 252
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->t(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 253
    move-result-object v6

    .line 254
    .line 255
    .line 256
    invoke-static {v9, v4, v5, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 257
    move-result-object v7

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v7}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 261
    move-result-object v6

    .line 262
    .line 263
    move-object/from16 v17, v6

    .line 264
    goto :goto_e

    .line 265
    .line 266
    :cond_15
    move-object/from16 v17, v7

    .line 267
    .line 268
    :goto_e
    if-eqz v8, :cond_16

    .line 269
    .line 270
    const/16 v18, 0x0

    .line 271
    .line 272
    const/16 v19, 0x0

    .line 273
    .line 274
    const/16 v20, 0x0

    .line 275
    .line 276
    const/16 v21, 0x0

    .line 277
    .line 278
    const/16 v22, 0xf

    .line 279
    .line 280
    const/16 v23, 0x0

    .line 281
    .line 282
    .line 283
    invoke-static/range {v18 .. v23}, Landroidx/compose/animation/EnterExitTransitionKt;->G(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 284
    move-result-object v6

    .line 285
    .line 286
    .line 287
    invoke-static {v9, v4, v5, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 288
    move-result-object v4

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v4}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 292
    move-result-object v4

    .line 293
    .line 294
    move-object/from16 v18, v4

    .line 295
    goto :goto_f

    .line 296
    .line 297
    :cond_16
    move-object/from16 v18, v10

    .line 298
    .line 299
    :goto_f
    if-eqz v13, :cond_17

    .line 300
    .line 301
    const-string v4, "AnimatedVisibility"

    .line 302
    move-object v15, v4

    .line 303
    .line 304
    :cond_17
    sget v4, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    .line 305
    .line 306
    shr-int/lit8 v5, v3, 0x3

    .line 307
    .line 308
    and-int/lit8 v6, v5, 0xe

    .line 309
    or-int/2addr v4, v6

    .line 310
    .line 311
    shr-int/lit8 v6, v3, 0xc

    .line 312
    .line 313
    and-int/lit8 v6, v6, 0x70

    .line 314
    or-int/2addr v4, v6

    .line 315
    const/4 v6, 0x0

    .line 316
    .line 317
    .line 318
    invoke-static {v2, v15, v0, v4, v6}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 319
    move-result-object v4

    .line 320
    .line 321
    sget-object v6, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$11;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$11;

    .line 322
    .line 323
    and-int/lit16 v7, v3, 0x380

    .line 324
    .line 325
    or-int/lit8 v7, v7, 0x30

    .line 326
    .line 327
    and-int/lit16 v8, v3, 0x1c00

    .line 328
    or-int/2addr v7, v8

    .line 329
    .line 330
    .line 331
    const v8, 0xe000

    .line 332
    and-int/2addr v3, v8

    .line 333
    or-int/2addr v3, v7

    .line 334
    .line 335
    const/high16 v7, 0x70000

    .line 336
    and-int/2addr v5, v7

    .line 337
    .line 338
    or-int v10, v3, v5

    .line 339
    move-object v3, v4

    .line 340
    move-object v4, v6

    .line 341
    move-object v5, v14

    .line 342
    .line 343
    move-object/from16 v6, v17

    .line 344
    .line 345
    move-object/from16 v7, v18

    .line 346
    .line 347
    move-object/from16 v8, p6

    .line 348
    move-object v9, v0

    .line 349
    .line 350
    .line 351
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 352
    move-object v3, v14

    .line 353
    move-object v6, v15

    .line 354
    .line 355
    move-object/from16 v4, v17

    .line 356
    .line 357
    move-object/from16 v5, v18

    .line 358
    .line 359
    .line 360
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 361
    move-result-object v10

    .line 362
    .line 363
    if-nez v10, :cond_18

    .line 364
    goto :goto_11

    .line 365
    .line 366
    :cond_18
    new-instance v13, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$12;

    .line 367
    move-object v0, v13

    .line 368
    .line 369
    move-object/from16 v1, p0

    .line 370
    .line 371
    move-object/from16 v2, p1

    .line 372
    .line 373
    move-object/from16 v7, p6

    .line 374
    .line 375
    move/from16 v8, p8

    .line 376
    .line 377
    move/from16 v9, p9

    .line 378
    .line 379
    .line 380
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$12;-><init>(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;II)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v10, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 384
    :goto_11
    return-void
.end method

.method public static final e(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/foundation/layout/ColumnScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
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
            "(",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v8, p6

    .line 3
    .line 4
    move/from16 v9, p8

    .line 5
    .line 6
    const-string v0, "<this>"

    .line 7
    .line 8
    move-object/from16 v10, p0

    .line 9
    .line 10
    .line 11
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

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
    const v0, 0x694ab2be

    .line 20
    .line 21
    move-object/from16 v1, p7

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v11

    .line 26
    .line 27
    and-int/lit8 v0, p9, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v9, 0x30

    .line 32
    .line 33
    move/from16 v12, p1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v0, v9, 0x70

    .line 37
    .line 38
    move/from16 v12, p1

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/16 v0, 0x20

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    const/16 v0, 0x10

    .line 52
    :goto_0
    or-int/2addr v0, v9

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v0, v9

    .line 55
    .line 56
    :goto_1
    and-int/lit8 v1, p9, 0x2

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    or-int/lit16 v0, v0, 0x180

    .line 61
    .line 62
    :cond_3
    move-object/from16 v2, p2

    .line 63
    goto :goto_3

    .line 64
    .line 65
    :cond_4
    and-int/lit16 v2, v9, 0x380

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    move-object/from16 v2, p2

    .line 70
    .line 71
    .line 72
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    const/16 v3, 0x100

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_5
    const/16 v3, 0x80

    .line 81
    :goto_2
    or-int/2addr v0, v3

    .line 82
    .line 83
    :goto_3
    and-int/lit8 v3, p9, 0x4

    .line 84
    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    or-int/lit16 v0, v0, 0xc00

    .line 88
    .line 89
    :cond_6
    move-object/from16 v4, p3

    .line 90
    goto :goto_5

    .line 91
    .line 92
    :cond_7
    and-int/lit16 v4, v9, 0x1c00

    .line 93
    .line 94
    if-nez v4, :cond_6

    .line 95
    .line 96
    move-object/from16 v4, p3

    .line 97
    .line 98
    .line 99
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 100
    move-result v5

    .line 101
    .line 102
    if-eqz v5, :cond_8

    .line 103
    .line 104
    const/16 v5, 0x800

    .line 105
    goto :goto_4

    .line 106
    .line 107
    :cond_8
    const/16 v5, 0x400

    .line 108
    :goto_4
    or-int/2addr v0, v5

    .line 109
    .line 110
    :goto_5
    and-int/lit8 v5, p9, 0x8

    .line 111
    .line 112
    .line 113
    const v6, 0xe000

    .line 114
    .line 115
    if-eqz v5, :cond_a

    .line 116
    .line 117
    or-int/lit16 v0, v0, 0x6000

    .line 118
    .line 119
    :cond_9
    move-object/from16 v7, p4

    .line 120
    goto :goto_7

    .line 121
    .line 122
    :cond_a
    and-int v7, v9, v6

    .line 123
    .line 124
    if-nez v7, :cond_9

    .line 125
    .line 126
    move-object/from16 v7, p4

    .line 127
    .line 128
    .line 129
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 130
    move-result v13

    .line 131
    .line 132
    if-eqz v13, :cond_b

    .line 133
    .line 134
    const/16 v13, 0x4000

    .line 135
    goto :goto_6

    .line 136
    .line 137
    :cond_b
    const/16 v13, 0x2000

    .line 138
    :goto_6
    or-int/2addr v0, v13

    .line 139
    .line 140
    :goto_7
    and-int/lit8 v13, p9, 0x10

    .line 141
    .line 142
    const/high16 v14, 0x70000

    .line 143
    .line 144
    if-eqz v13, :cond_d

    .line 145
    .line 146
    const/high16 v15, 0x30000

    .line 147
    or-int/2addr v0, v15

    .line 148
    .line 149
    :cond_c
    move-object/from16 v15, p5

    .line 150
    goto :goto_9

    .line 151
    .line 152
    :cond_d
    and-int v15, v9, v14

    .line 153
    .line 154
    if-nez v15, :cond_c

    .line 155
    .line 156
    move-object/from16 v15, p5

    .line 157
    .line 158
    .line 159
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 160
    move-result v16

    .line 161
    .line 162
    if-eqz v16, :cond_e

    .line 163
    .line 164
    const/high16 v16, 0x20000

    .line 165
    goto :goto_8

    .line 166
    .line 167
    :cond_e
    const/high16 v16, 0x10000

    .line 168
    .line 169
    :goto_8
    or-int v0, v0, v16

    .line 170
    .line 171
    :goto_9
    and-int/lit8 v16, p9, 0x20

    .line 172
    .line 173
    if-eqz v16, :cond_f

    .line 174
    .line 175
    const/high16 v16, 0x180000

    .line 176
    .line 177
    :goto_a
    or-int v0, v0, v16

    .line 178
    goto :goto_b

    .line 179
    .line 180
    :cond_f
    const/high16 v16, 0x380000

    .line 181
    .line 182
    and-int v16, v9, v16

    .line 183
    .line 184
    if-nez v16, :cond_11

    .line 185
    .line 186
    .line 187
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 188
    move-result v16

    .line 189
    .line 190
    if-eqz v16, :cond_10

    .line 191
    .line 192
    const/high16 v16, 0x100000

    .line 193
    goto :goto_a

    .line 194
    .line 195
    :cond_10
    const/high16 v16, 0x80000

    .line 196
    goto :goto_a

    .line 197
    .line 198
    .line 199
    :cond_11
    :goto_b
    const v16, 0x2db6d1

    .line 200
    .line 201
    and-int v14, v0, v16

    .line 202
    .line 203
    .line 204
    const v6, 0x92490

    .line 205
    .line 206
    if-ne v14, v6, :cond_13

    .line 207
    .line 208
    .line 209
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 210
    move-result v6

    .line 211
    .line 212
    if-nez v6, :cond_12

    .line 213
    goto :goto_c

    .line 214
    .line 215
    .line 216
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 217
    move-object v3, v2

    .line 218
    move-object v5, v7

    .line 219
    move-object v6, v15

    .line 220
    .line 221
    goto/16 :goto_10

    .line 222
    .line 223
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 224
    .line 225
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 226
    move-object v14, v1

    .line 227
    goto :goto_d

    .line 228
    :cond_14
    move-object v14, v2

    .line 229
    :goto_d
    const/4 v1, 0x0

    .line 230
    const/4 v2, 0x3

    .line 231
    const/4 v6, 0x0

    .line 232
    .line 233
    if-eqz v3, :cond_15

    .line 234
    .line 235
    .line 236
    invoke-static {v6, v1, v2, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 237
    move-result-object v3

    .line 238
    .line 239
    const/16 v17, 0x0

    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const/16 v19, 0x0

    .line 244
    .line 245
    const/16 v20, 0x0

    .line 246
    .line 247
    const/16 v21, 0xf

    .line 248
    .line 249
    const/16 v22, 0x0

    .line 250
    .line 251
    .line 252
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->t(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 253
    move-result-object v4

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v4}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    move-object/from16 v17, v3

    .line 260
    goto :goto_e

    .line 261
    .line 262
    :cond_15
    move-object/from16 v17, v4

    .line 263
    .line 264
    :goto_e
    if-eqz v5, :cond_16

    .line 265
    .line 266
    .line 267
    invoke-static {v6, v1, v2, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 268
    move-result-object v1

    .line 269
    const/4 v2, 0x0

    .line 270
    const/4 v3, 0x0

    .line 271
    const/4 v4, 0x0

    .line 272
    const/4 v5, 0x0

    .line 273
    .line 274
    const/16 v6, 0xf

    .line 275
    const/4 v7, 0x0

    .line 276
    .line 277
    .line 278
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/EnterExitTransitionKt;->G(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 279
    move-result-object v2

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 283
    move-result-object v1

    .line 284
    .line 285
    move-object/from16 v18, v1

    .line 286
    goto :goto_f

    .line 287
    .line 288
    :cond_16
    move-object/from16 v18, v7

    .line 289
    .line 290
    :goto_f
    if-eqz v13, :cond_17

    .line 291
    .line 292
    const-string v1, "AnimatedVisibility"

    .line 293
    move-object v15, v1

    .line 294
    .line 295
    .line 296
    :cond_17
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 297
    move-result-object v1

    .line 298
    .line 299
    shr-int/lit8 v2, v0, 0x3

    .line 300
    .line 301
    and-int/lit8 v3, v2, 0xe

    .line 302
    .line 303
    shr-int/lit8 v4, v0, 0xc

    .line 304
    .line 305
    and-int/lit8 v4, v4, 0x70

    .line 306
    or-int/2addr v3, v4

    .line 307
    const/4 v4, 0x0

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v15, v11, v3, v4}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    sget-object v3, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$5;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$5;

    .line 314
    .line 315
    and-int/lit16 v4, v0, 0x380

    .line 316
    .line 317
    or-int/lit8 v4, v4, 0x30

    .line 318
    .line 319
    and-int/lit16 v5, v0, 0x1c00

    .line 320
    or-int/2addr v4, v5

    .line 321
    .line 322
    .line 323
    const v5, 0xe000

    .line 324
    and-int/2addr v0, v5

    .line 325
    or-int/2addr v0, v4

    .line 326
    .line 327
    const/high16 v4, 0x70000

    .line 328
    and-int/2addr v2, v4

    .line 329
    .line 330
    or-int v7, v0, v2

    .line 331
    move-object v0, v1

    .line 332
    move-object v1, v3

    .line 333
    move-object v2, v14

    .line 334
    .line 335
    move-object/from16 v3, v17

    .line 336
    .line 337
    move-object/from16 v4, v18

    .line 338
    .line 339
    move-object/from16 v5, p6

    .line 340
    move-object v6, v11

    .line 341
    .line 342
    .line 343
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 344
    move-object v3, v14

    .line 345
    move-object v6, v15

    .line 346
    .line 347
    move-object/from16 v4, v17

    .line 348
    .line 349
    move-object/from16 v5, v18

    .line 350
    .line 351
    .line 352
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 353
    move-result-object v11

    .line 354
    .line 355
    if-nez v11, :cond_18

    .line 356
    goto :goto_11

    .line 357
    .line 358
    :cond_18
    new-instance v13, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;

    .line 359
    move-object v0, v13

    .line 360
    .line 361
    move-object/from16 v1, p0

    .line 362
    .line 363
    move/from16 v2, p1

    .line 364
    .line 365
    move-object/from16 v7, p6

    .line 366
    .line 367
    move/from16 v8, p8

    .line 368
    .line 369
    move/from16 v9, p9

    .line 370
    .line 371
    .line 372
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$6;-><init>(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;II)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v11, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 376
    :goto_11
    return-void
.end method

.method public static final f(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Landroidx/compose/foundation/layout/RowScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/MutableTransitionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
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
            "(",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v2, p1

    .line 3
    .line 4
    move-object/from16 v11, p6

    .line 5
    .line 6
    move/from16 v12, p8

    .line 7
    .line 8
    const-string v0, "<this>"

    .line 9
    .line 10
    move-object/from16 v1, p0

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "visibleState"

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "content"

    .line 21
    .line 22
    .line 23
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x31dc20ae

    .line 27
    .line 28
    move-object/from16 v3, p7

    .line 29
    .line 30
    .line 31
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    and-int/lit8 v3, p9, 0x1

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    or-int/lit8 v3, v12, 0x30

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    and-int/lit8 v3, v12, 0x70

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    const/16 v3, 0x10

    .line 55
    :goto_0
    or-int/2addr v3, v12

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v3, v12

    .line 58
    .line 59
    :goto_1
    and-int/lit8 v4, p9, 0x2

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    or-int/lit16 v3, v3, 0x180

    .line 64
    .line 65
    :cond_3
    move-object/from16 v5, p2

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_4
    and-int/lit16 v5, v12, 0x380

    .line 69
    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    move-object/from16 v5, p2

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 76
    move-result v6

    .line 77
    .line 78
    if-eqz v6, :cond_5

    .line 79
    .line 80
    const/16 v6, 0x100

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_5
    const/16 v6, 0x80

    .line 84
    :goto_2
    or-int/2addr v3, v6

    .line 85
    .line 86
    :goto_3
    and-int/lit8 v6, p9, 0x4

    .line 87
    .line 88
    if-eqz v6, :cond_7

    .line 89
    .line 90
    or-int/lit16 v3, v3, 0xc00

    .line 91
    .line 92
    :cond_6
    move-object/from16 v7, p3

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_7
    and-int/lit16 v7, v12, 0x1c00

    .line 96
    .line 97
    if-nez v7, :cond_6

    .line 98
    .line 99
    move-object/from16 v7, p3

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 103
    move-result v8

    .line 104
    .line 105
    if-eqz v8, :cond_8

    .line 106
    .line 107
    const/16 v8, 0x800

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_8
    const/16 v8, 0x400

    .line 111
    :goto_4
    or-int/2addr v3, v8

    .line 112
    .line 113
    :goto_5
    and-int/lit8 v8, p9, 0x8

    .line 114
    .line 115
    .line 116
    const v9, 0xe000

    .line 117
    .line 118
    if-eqz v8, :cond_a

    .line 119
    .line 120
    or-int/lit16 v3, v3, 0x6000

    .line 121
    .line 122
    :cond_9
    move-object/from16 v10, p4

    .line 123
    goto :goto_7

    .line 124
    .line 125
    :cond_a
    and-int v10, v12, v9

    .line 126
    .line 127
    if-nez v10, :cond_9

    .line 128
    .line 129
    move-object/from16 v10, p4

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 133
    move-result v13

    .line 134
    .line 135
    if-eqz v13, :cond_b

    .line 136
    .line 137
    const/16 v13, 0x4000

    .line 138
    goto :goto_6

    .line 139
    .line 140
    :cond_b
    const/16 v13, 0x2000

    .line 141
    :goto_6
    or-int/2addr v3, v13

    .line 142
    .line 143
    :goto_7
    and-int/lit8 v13, p9, 0x10

    .line 144
    .line 145
    const/high16 v14, 0x70000

    .line 146
    .line 147
    if-eqz v13, :cond_d

    .line 148
    .line 149
    const/high16 v15, 0x30000

    .line 150
    or-int/2addr v3, v15

    .line 151
    .line 152
    :cond_c
    move-object/from16 v15, p5

    .line 153
    goto :goto_9

    .line 154
    .line 155
    :cond_d
    and-int v15, v12, v14

    .line 156
    .line 157
    if-nez v15, :cond_c

    .line 158
    .line 159
    move-object/from16 v15, p5

    .line 160
    .line 161
    .line 162
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 163
    move-result v16

    .line 164
    .line 165
    if-eqz v16, :cond_e

    .line 166
    .line 167
    const/high16 v16, 0x20000

    .line 168
    goto :goto_8

    .line 169
    .line 170
    :cond_e
    const/high16 v16, 0x10000

    .line 171
    .line 172
    :goto_8
    or-int v3, v3, v16

    .line 173
    .line 174
    :goto_9
    and-int/lit8 v16, p9, 0x20

    .line 175
    .line 176
    if-eqz v16, :cond_f

    .line 177
    .line 178
    const/high16 v16, 0x180000

    .line 179
    .line 180
    :goto_a
    or-int v3, v3, v16

    .line 181
    goto :goto_b

    .line 182
    .line 183
    :cond_f
    const/high16 v16, 0x380000

    .line 184
    .line 185
    and-int v16, v12, v16

    .line 186
    .line 187
    if-nez v16, :cond_11

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 191
    move-result v16

    .line 192
    .line 193
    if-eqz v16, :cond_10

    .line 194
    .line 195
    const/high16 v16, 0x100000

    .line 196
    goto :goto_a

    .line 197
    .line 198
    :cond_10
    const/high16 v16, 0x80000

    .line 199
    goto :goto_a

    .line 200
    .line 201
    .line 202
    :cond_11
    :goto_b
    const v16, 0x2db6d1

    .line 203
    .line 204
    and-int v14, v3, v16

    .line 205
    .line 206
    .line 207
    const v9, 0x92490

    .line 208
    .line 209
    if-ne v14, v9, :cond_13

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 213
    move-result v9

    .line 214
    .line 215
    if-nez v9, :cond_12

    .line 216
    goto :goto_c

    .line 217
    .line 218
    .line 219
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 220
    move-object v3, v5

    .line 221
    move-object v4, v7

    .line 222
    move-object v5, v10

    .line 223
    move-object v6, v15

    .line 224
    .line 225
    goto/16 :goto_10

    .line 226
    .line 227
    :cond_13
    :goto_c
    if-eqz v4, :cond_14

    .line 228
    .line 229
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 230
    move-object v14, v4

    .line 231
    goto :goto_d

    .line 232
    :cond_14
    move-object v14, v5

    .line 233
    :goto_d
    const/4 v4, 0x0

    .line 234
    const/4 v5, 0x3

    .line 235
    const/4 v9, 0x0

    .line 236
    .line 237
    if-eqz v6, :cond_15

    .line 238
    .line 239
    const/16 v17, 0x0

    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const/16 v19, 0x0

    .line 244
    .line 245
    const/16 v20, 0x0

    .line 246
    .line 247
    const/16 v21, 0xf

    .line 248
    .line 249
    const/16 v22, 0x0

    .line 250
    .line 251
    .line 252
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->p(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 253
    move-result-object v6

    .line 254
    .line 255
    .line 256
    invoke-static {v9, v4, v5, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 257
    move-result-object v7

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6, v7}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 261
    move-result-object v6

    .line 262
    .line 263
    move-object/from16 v17, v6

    .line 264
    goto :goto_e

    .line 265
    .line 266
    :cond_15
    move-object/from16 v17, v7

    .line 267
    .line 268
    :goto_e
    if-eqz v8, :cond_16

    .line 269
    .line 270
    const/16 v18, 0x0

    .line 271
    .line 272
    const/16 v19, 0x0

    .line 273
    .line 274
    const/16 v20, 0x0

    .line 275
    .line 276
    const/16 v21, 0x0

    .line 277
    .line 278
    const/16 v22, 0xf

    .line 279
    .line 280
    const/16 v23, 0x0

    .line 281
    .line 282
    .line 283
    invoke-static/range {v18 .. v23}, Landroidx/compose/animation/EnterExitTransitionKt;->C(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 284
    move-result-object v6

    .line 285
    .line 286
    .line 287
    invoke-static {v9, v4, v5, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 288
    move-result-object v4

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v4}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 292
    move-result-object v4

    .line 293
    .line 294
    move-object/from16 v18, v4

    .line 295
    goto :goto_f

    .line 296
    .line 297
    :cond_16
    move-object/from16 v18, v10

    .line 298
    .line 299
    :goto_f
    if-eqz v13, :cond_17

    .line 300
    .line 301
    const-string v4, "AnimatedVisibility"

    .line 302
    move-object v15, v4

    .line 303
    .line 304
    :cond_17
    sget v4, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    .line 305
    .line 306
    shr-int/lit8 v5, v3, 0x3

    .line 307
    .line 308
    and-int/lit8 v6, v5, 0xe

    .line 309
    or-int/2addr v4, v6

    .line 310
    .line 311
    shr-int/lit8 v6, v3, 0xc

    .line 312
    .line 313
    and-int/lit8 v6, v6, 0x70

    .line 314
    or-int/2addr v4, v6

    .line 315
    const/4 v6, 0x0

    .line 316
    .line 317
    .line 318
    invoke-static {v2, v15, v0, v4, v6}, Landroidx/compose/animation/core/TransitionKt;->d(Landroidx/compose/animation/core/MutableTransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 319
    move-result-object v4

    .line 320
    .line 321
    sget-object v6, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$9;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$9;

    .line 322
    .line 323
    and-int/lit16 v7, v3, 0x380

    .line 324
    .line 325
    or-int/lit8 v7, v7, 0x30

    .line 326
    .line 327
    and-int/lit16 v8, v3, 0x1c00

    .line 328
    or-int/2addr v7, v8

    .line 329
    .line 330
    .line 331
    const v8, 0xe000

    .line 332
    and-int/2addr v3, v8

    .line 333
    or-int/2addr v3, v7

    .line 334
    .line 335
    const/high16 v7, 0x70000

    .line 336
    and-int/2addr v5, v7

    .line 337
    .line 338
    or-int v10, v3, v5

    .line 339
    move-object v3, v4

    .line 340
    move-object v4, v6

    .line 341
    move-object v5, v14

    .line 342
    .line 343
    move-object/from16 v6, v17

    .line 344
    .line 345
    move-object/from16 v7, v18

    .line 346
    .line 347
    move-object/from16 v8, p6

    .line 348
    move-object v9, v0

    .line 349
    .line 350
    .line 351
    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 352
    move-object v3, v14

    .line 353
    move-object v6, v15

    .line 354
    .line 355
    move-object/from16 v4, v17

    .line 356
    .line 357
    move-object/from16 v5, v18

    .line 358
    .line 359
    .line 360
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 361
    move-result-object v10

    .line 362
    .line 363
    if-nez v10, :cond_18

    .line 364
    goto :goto_11

    .line 365
    .line 366
    :cond_18
    new-instance v13, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$10;

    .line 367
    move-object v0, v13

    .line 368
    .line 369
    move-object/from16 v1, p0

    .line 370
    .line 371
    move-object/from16 v2, p1

    .line 372
    .line 373
    move-object/from16 v7, p6

    .line 374
    .line 375
    move/from16 v8, p8

    .line 376
    .line 377
    move/from16 v9, p9

    .line 378
    .line 379
    .line 380
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$10;-><init>(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;II)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v10, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 384
    :goto_11
    return-void
.end method

.method public static final g(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/foundation/layout/RowScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
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
            "(",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v8, p6

    .line 3
    .line 4
    move/from16 v9, p8

    .line 5
    .line 6
    const-string v0, "<this>"

    .line 7
    .line 8
    move-object/from16 v10, p0

    .line 9
    .line 10
    .line 11
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

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
    const v0, -0x67cad85a

    .line 20
    .line 21
    move-object/from16 v1, p7

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 25
    move-result-object v11

    .line 26
    .line 27
    and-int/lit8 v0, p9, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v9, 0x30

    .line 32
    .line 33
    move/from16 v12, p1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    and-int/lit8 v0, v9, 0x70

    .line 37
    .line 38
    move/from16 v12, p1

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/16 v0, 0x20

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_1
    const/16 v0, 0x10

    .line 52
    :goto_0
    or-int/2addr v0, v9

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v0, v9

    .line 55
    .line 56
    :goto_1
    and-int/lit8 v1, p9, 0x2

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    or-int/lit16 v0, v0, 0x180

    .line 61
    .line 62
    :cond_3
    move-object/from16 v2, p2

    .line 63
    goto :goto_3

    .line 64
    .line 65
    :cond_4
    and-int/lit16 v2, v9, 0x380

    .line 66
    .line 67
    if-nez v2, :cond_3

    .line 68
    .line 69
    move-object/from16 v2, p2

    .line 70
    .line 71
    .line 72
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    .line 75
    if-eqz v3, :cond_5

    .line 76
    .line 77
    const/16 v3, 0x100

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_5
    const/16 v3, 0x80

    .line 81
    :goto_2
    or-int/2addr v0, v3

    .line 82
    .line 83
    :goto_3
    and-int/lit8 v3, p9, 0x4

    .line 84
    .line 85
    if-eqz v3, :cond_7

    .line 86
    .line 87
    or-int/lit16 v0, v0, 0xc00

    .line 88
    .line 89
    :cond_6
    move-object/from16 v4, p3

    .line 90
    goto :goto_5

    .line 91
    .line 92
    :cond_7
    and-int/lit16 v4, v9, 0x1c00

    .line 93
    .line 94
    if-nez v4, :cond_6

    .line 95
    .line 96
    move-object/from16 v4, p3

    .line 97
    .line 98
    .line 99
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 100
    move-result v5

    .line 101
    .line 102
    if-eqz v5, :cond_8

    .line 103
    .line 104
    const/16 v5, 0x800

    .line 105
    goto :goto_4

    .line 106
    .line 107
    :cond_8
    const/16 v5, 0x400

    .line 108
    :goto_4
    or-int/2addr v0, v5

    .line 109
    .line 110
    :goto_5
    and-int/lit8 v5, p9, 0x8

    .line 111
    .line 112
    .line 113
    const v6, 0xe000

    .line 114
    .line 115
    if-eqz v5, :cond_a

    .line 116
    .line 117
    or-int/lit16 v0, v0, 0x6000

    .line 118
    .line 119
    :cond_9
    move-object/from16 v7, p4

    .line 120
    goto :goto_7

    .line 121
    .line 122
    :cond_a
    and-int v7, v9, v6

    .line 123
    .line 124
    if-nez v7, :cond_9

    .line 125
    .line 126
    move-object/from16 v7, p4

    .line 127
    .line 128
    .line 129
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 130
    move-result v13

    .line 131
    .line 132
    if-eqz v13, :cond_b

    .line 133
    .line 134
    const/16 v13, 0x4000

    .line 135
    goto :goto_6

    .line 136
    .line 137
    :cond_b
    const/16 v13, 0x2000

    .line 138
    :goto_6
    or-int/2addr v0, v13

    .line 139
    .line 140
    :goto_7
    and-int/lit8 v13, p9, 0x10

    .line 141
    .line 142
    const/high16 v14, 0x70000

    .line 143
    .line 144
    if-eqz v13, :cond_d

    .line 145
    .line 146
    const/high16 v15, 0x30000

    .line 147
    or-int/2addr v0, v15

    .line 148
    .line 149
    :cond_c
    move-object/from16 v15, p5

    .line 150
    goto :goto_9

    .line 151
    .line 152
    :cond_d
    and-int v15, v9, v14

    .line 153
    .line 154
    if-nez v15, :cond_c

    .line 155
    .line 156
    move-object/from16 v15, p5

    .line 157
    .line 158
    .line 159
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 160
    move-result v16

    .line 161
    .line 162
    if-eqz v16, :cond_e

    .line 163
    .line 164
    const/high16 v16, 0x20000

    .line 165
    goto :goto_8

    .line 166
    .line 167
    :cond_e
    const/high16 v16, 0x10000

    .line 168
    .line 169
    :goto_8
    or-int v0, v0, v16

    .line 170
    .line 171
    :goto_9
    and-int/lit8 v16, p9, 0x20

    .line 172
    .line 173
    if-eqz v16, :cond_f

    .line 174
    .line 175
    const/high16 v16, 0x180000

    .line 176
    .line 177
    :goto_a
    or-int v0, v0, v16

    .line 178
    goto :goto_b

    .line 179
    .line 180
    :cond_f
    const/high16 v16, 0x380000

    .line 181
    .line 182
    and-int v16, v9, v16

    .line 183
    .line 184
    if-nez v16, :cond_11

    .line 185
    .line 186
    .line 187
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 188
    move-result v16

    .line 189
    .line 190
    if-eqz v16, :cond_10

    .line 191
    .line 192
    const/high16 v16, 0x100000

    .line 193
    goto :goto_a

    .line 194
    .line 195
    :cond_10
    const/high16 v16, 0x80000

    .line 196
    goto :goto_a

    .line 197
    .line 198
    .line 199
    :cond_11
    :goto_b
    const v16, 0x2db6d1

    .line 200
    .line 201
    and-int v14, v0, v16

    .line 202
    .line 203
    .line 204
    const v6, 0x92490

    .line 205
    .line 206
    if-ne v14, v6, :cond_13

    .line 207
    .line 208
    .line 209
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->b()Z

    .line 210
    move-result v6

    .line 211
    .line 212
    if-nez v6, :cond_12

    .line 213
    goto :goto_c

    .line 214
    .line 215
    .line 216
    :cond_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->g()V

    .line 217
    move-object v3, v2

    .line 218
    move-object v5, v7

    .line 219
    move-object v6, v15

    .line 220
    .line 221
    goto/16 :goto_10

    .line 222
    .line 223
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 224
    .line 225
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 226
    move-object v14, v1

    .line 227
    goto :goto_d

    .line 228
    :cond_14
    move-object v14, v2

    .line 229
    :goto_d
    const/4 v1, 0x0

    .line 230
    const/4 v2, 0x3

    .line 231
    const/4 v6, 0x0

    .line 232
    .line 233
    if-eqz v3, :cond_15

    .line 234
    .line 235
    .line 236
    invoke-static {v6, v1, v2, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 237
    move-result-object v3

    .line 238
    .line 239
    const/16 v17, 0x0

    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const/16 v19, 0x0

    .line 244
    .line 245
    const/16 v20, 0x0

    .line 246
    .line 247
    const/16 v21, 0xf

    .line 248
    .line 249
    const/16 v22, 0x0

    .line 250
    .line 251
    .line 252
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->p(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 253
    move-result-object v4

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v4}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 257
    move-result-object v3

    .line 258
    .line 259
    move-object/from16 v17, v3

    .line 260
    goto :goto_e

    .line 261
    .line 262
    :cond_15
    move-object/from16 v17, v4

    .line 263
    .line 264
    :goto_e
    if-eqz v5, :cond_16

    .line 265
    .line 266
    .line 267
    invoke-static {v6, v1, v2, v6}, Landroidx/compose/animation/EnterExitTransitionKt;->x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 268
    move-result-object v1

    .line 269
    const/4 v2, 0x0

    .line 270
    const/4 v3, 0x0

    .line 271
    const/4 v4, 0x0

    .line 272
    const/4 v5, 0x0

    .line 273
    .line 274
    const/16 v6, 0xf

    .line 275
    const/4 v7, 0x0

    .line 276
    .line 277
    .line 278
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/EnterExitTransitionKt;->C(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 279
    move-result-object v2

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 283
    move-result-object v1

    .line 284
    .line 285
    move-object/from16 v18, v1

    .line 286
    goto :goto_f

    .line 287
    .line 288
    :cond_16
    move-object/from16 v18, v7

    .line 289
    .line 290
    :goto_f
    if-eqz v13, :cond_17

    .line 291
    .line 292
    const-string v1, "AnimatedVisibility"

    .line 293
    move-object v15, v1

    .line 294
    .line 295
    .line 296
    :cond_17
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 297
    move-result-object v1

    .line 298
    .line 299
    shr-int/lit8 v2, v0, 0x3

    .line 300
    .line 301
    and-int/lit8 v3, v2, 0xe

    .line 302
    .line 303
    shr-int/lit8 v4, v0, 0xc

    .line 304
    .line 305
    and-int/lit8 v4, v4, 0x70

    .line 306
    or-int/2addr v3, v4

    .line 307
    const/4 v4, 0x0

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v15, v11, v3, v4}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    sget-object v3, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$3;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$3;

    .line 314
    .line 315
    and-int/lit16 v4, v0, 0x380

    .line 316
    .line 317
    or-int/lit8 v4, v4, 0x30

    .line 318
    .line 319
    and-int/lit16 v5, v0, 0x1c00

    .line 320
    or-int/2addr v4, v5

    .line 321
    .line 322
    .line 323
    const v5, 0xe000

    .line 324
    and-int/2addr v0, v5

    .line 325
    or-int/2addr v0, v4

    .line 326
    .line 327
    const/high16 v4, 0x70000

    .line 328
    and-int/2addr v2, v4

    .line 329
    .line 330
    or-int v7, v0, v2

    .line 331
    move-object v0, v1

    .line 332
    move-object v1, v3

    .line 333
    move-object v2, v14

    .line 334
    .line 335
    move-object/from16 v3, v17

    .line 336
    .line 337
    move-object/from16 v4, v18

    .line 338
    .line 339
    move-object/from16 v5, p6

    .line 340
    move-object v6, v11

    .line 341
    .line 342
    .line 343
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 344
    move-object v3, v14

    .line 345
    move-object v6, v15

    .line 346
    .line 347
    move-object/from16 v4, v17

    .line 348
    .line 349
    move-object/from16 v5, v18

    .line 350
    .line 351
    .line 352
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 353
    move-result-object v11

    .line 354
    .line 355
    if-nez v11, :cond_18

    .line 356
    goto :goto_11

    .line 357
    .line 358
    :cond_18
    new-instance v13, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$4;

    .line 359
    move-object v0, v13

    .line 360
    .line 361
    move-object/from16 v1, p0

    .line 362
    .line 363
    move/from16 v2, p1

    .line 364
    .line 365
    move-object/from16 v7, p6

    .line 366
    .line 367
    move/from16 v8, p8

    .line 368
    .line 369
    move/from16 v9, p9

    .line 370
    .line 371
    .line 372
    invoke-direct/range {v0 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$4;-><init>(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;II)V

    .line 373
    .line 374
    .line 375
    invoke-interface {v11, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 376
    :goto_11
    return-void
.end method

.method public static final h(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
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
            "(Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Le8/q<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
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
    move-object/from16 v8, p5

    .line 3
    .line 4
    move/from16 v9, p7

    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    .line 9
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0x7c7f8c4e

    .line 13
    .line 14
    move-object/from16 v1, p6

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 18
    move-result-object v10

    .line 19
    .line 20
    and-int/lit8 v0, p8, 0x1

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    or-int/lit8 v0, v9, 0x6

    .line 25
    .line 26
    move/from16 v11, p0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 30
    .line 31
    move/from16 v11, p0

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    const/4 v0, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x2

    .line 43
    :goto_0
    or-int/2addr v0, v9

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v0, v9

    .line 46
    .line 47
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 48
    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    or-int/lit8 v0, v0, 0x30

    .line 52
    .line 53
    :cond_3
    move-object/from16 v2, p1

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_4
    and-int/lit8 v2, v9, 0x70

    .line 57
    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    move-object/from16 v2, p1

    .line 61
    .line 62
    .line 63
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 64
    move-result v3

    .line 65
    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    const/16 v3, 0x20

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_5
    const/16 v3, 0x10

    .line 72
    :goto_2
    or-int/2addr v0, v3

    .line 73
    .line 74
    :goto_3
    and-int/lit8 v3, p8, 0x4

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    or-int/lit16 v0, v0, 0x180

    .line 79
    .line 80
    :cond_6
    move-object/from16 v4, p2

    .line 81
    goto :goto_5

    .line 82
    .line 83
    :cond_7
    and-int/lit16 v4, v9, 0x380

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
    if-eqz v5, :cond_8

    .line 94
    .line 95
    const/16 v5, 0x100

    .line 96
    goto :goto_4

    .line 97
    .line 98
    :cond_8
    const/16 v5, 0x80

    .line 99
    :goto_4
    or-int/2addr v0, v5

    .line 100
    .line 101
    :goto_5
    and-int/lit8 v5, p8, 0x8

    .line 102
    .line 103
    if-eqz v5, :cond_a

    .line 104
    .line 105
    or-int/lit16 v0, v0, 0xc00

    .line 106
    .line 107
    :cond_9
    move-object/from16 v6, p3

    .line 108
    goto :goto_7

    .line 109
    .line 110
    :cond_a
    and-int/lit16 v6, v9, 0x1c00

    .line 111
    .line 112
    if-nez v6, :cond_9

    .line 113
    .line 114
    move-object/from16 v6, p3

    .line 115
    .line 116
    .line 117
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 118
    move-result v7

    .line 119
    .line 120
    if-eqz v7, :cond_b

    .line 121
    .line 122
    const/16 v7, 0x800

    .line 123
    goto :goto_6

    .line 124
    .line 125
    :cond_b
    const/16 v7, 0x400

    .line 126
    :goto_6
    or-int/2addr v0, v7

    .line 127
    .line 128
    :goto_7
    and-int/lit8 v7, p8, 0x10

    .line 129
    .line 130
    .line 131
    const v12, 0xe000

    .line 132
    .line 133
    if-eqz v7, :cond_d

    .line 134
    .line 135
    or-int/lit16 v0, v0, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v13, p4

    .line 138
    goto :goto_9

    .line 139
    .line 140
    :cond_d
    and-int v13, v9, v12

    .line 141
    .line 142
    if-nez v13, :cond_c

    .line 143
    .line 144
    move-object/from16 v13, p4

    .line 145
    .line 146
    .line 147
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 148
    move-result v14

    .line 149
    .line 150
    if-eqz v14, :cond_e

    .line 151
    .line 152
    const/16 v14, 0x4000

    .line 153
    goto :goto_8

    .line 154
    .line 155
    :cond_e
    const/16 v14, 0x2000

    .line 156
    :goto_8
    or-int/2addr v0, v14

    .line 157
    .line 158
    :goto_9
    and-int/lit8 v14, p8, 0x20

    .line 159
    .line 160
    const/high16 v15, 0x70000

    .line 161
    .line 162
    if-eqz v14, :cond_f

    .line 163
    .line 164
    const/high16 v14, 0x30000

    .line 165
    :goto_a
    or-int/2addr v0, v14

    .line 166
    goto :goto_b

    .line 167
    .line 168
    :cond_f
    and-int v14, v9, v15

    .line 169
    .line 170
    if-nez v14, :cond_11

    .line 171
    .line 172
    .line 173
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 174
    move-result v14

    .line 175
    .line 176
    if-eqz v14, :cond_10

    .line 177
    .line 178
    const/high16 v14, 0x20000

    .line 179
    goto :goto_a

    .line 180
    .line 181
    :cond_10
    const/high16 v14, 0x10000

    .line 182
    goto :goto_a

    .line 183
    .line 184
    .line 185
    :cond_11
    :goto_b
    const v14, 0x5b6db

    .line 186
    and-int/2addr v14, v0

    .line 187
    .line 188
    .line 189
    const v15, 0x12492

    .line 190
    .line 191
    if-ne v14, v15, :cond_13

    .line 192
    .line 193
    .line 194
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->b()Z

    .line 195
    move-result v14

    .line 196
    .line 197
    if-nez v14, :cond_12

    .line 198
    goto :goto_d

    .line 199
    .line 200
    .line 201
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->g()V

    .line 202
    move-object v3, v4

    .line 203
    move-object v4, v6

    .line 204
    :goto_c
    move-object v5, v13

    .line 205
    .line 206
    goto/16 :goto_11

    .line 207
    .line 208
    :cond_13
    :goto_d
    if-eqz v1, :cond_14

    .line 209
    .line 210
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 211
    move-object v14, v1

    .line 212
    goto :goto_e

    .line 213
    :cond_14
    move-object v14, v2

    .line 214
    :goto_e
    const/4 v1, 0x0

    .line 215
    const/4 v2, 0x3

    .line 216
    const/4 v15, 0x0

    .line 217
    .line 218
    if-eqz v3, :cond_15

    .line 219
    .line 220
    .line 221
    invoke-static {v15, v1, v2, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->v(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 222
    move-result-object v3

    .line 223
    .line 224
    const/16 v16, 0x0

    .line 225
    .line 226
    const/16 v17, 0x0

    .line 227
    .line 228
    const/16 v18, 0x0

    .line 229
    .line 230
    const/16 v19, 0x0

    .line 231
    .line 232
    const/16 v20, 0xf

    .line 233
    .line 234
    const/16 v21, 0x0

    .line 235
    .line 236
    .line 237
    invoke-static/range {v16 .. v21}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;

    .line 238
    move-result-object v4

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v4}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 242
    move-result-object v3

    .line 243
    .line 244
    move-object/from16 v16, v3

    .line 245
    goto :goto_f

    .line 246
    .line 247
    :cond_15
    move-object/from16 v16, v4

    .line 248
    .line 249
    :goto_f
    if-eqz v5, :cond_16

    .line 250
    .line 251
    const/16 v17, 0x0

    .line 252
    .line 253
    const/16 v18, 0x0

    .line 254
    .line 255
    const/16 v19, 0x0

    .line 256
    .line 257
    const/16 v20, 0x0

    .line 258
    .line 259
    const/16 v21, 0xf

    .line 260
    .line 261
    const/16 v22, 0x0

    .line 262
    .line 263
    .line 264
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/EnterExitTransitionKt;->E(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 265
    move-result-object v3

    .line 266
    .line 267
    .line 268
    invoke-static {v15, v1, v2, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->x(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;

    .line 269
    move-result-object v1

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v1}, Landroidx/compose/animation/ExitTransition;->b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 273
    move-result-object v1

    .line 274
    move-object v15, v1

    .line 275
    goto :goto_10

    .line 276
    :cond_16
    move-object v15, v6

    .line 277
    .line 278
    :goto_10
    if-eqz v7, :cond_17

    .line 279
    .line 280
    const-string v1, "AnimatedVisibility"

    .line 281
    move-object v13, v1

    .line 282
    .line 283
    .line 284
    :cond_17
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    move-result-object v1

    .line 286
    .line 287
    and-int/lit8 v2, v0, 0xe

    .line 288
    .line 289
    shr-int/lit8 v3, v0, 0x9

    .line 290
    .line 291
    and-int/lit8 v3, v3, 0x70

    .line 292
    or-int/2addr v2, v3

    .line 293
    const/4 v3, 0x0

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v13, v10, v2, v3}, Landroidx/compose/animation/core/TransitionKt;->e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 297
    move-result-object v1

    .line 298
    .line 299
    sget-object v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$1;->INSTANCE:Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$1;

    .line 300
    .line 301
    shl-int/lit8 v3, v0, 0x3

    .line 302
    .line 303
    and-int/lit16 v4, v3, 0x380

    .line 304
    .line 305
    or-int/lit8 v4, v4, 0x30

    .line 306
    .line 307
    and-int/lit16 v5, v3, 0x1c00

    .line 308
    or-int/2addr v4, v5

    .line 309
    and-int/2addr v3, v12

    .line 310
    or-int/2addr v3, v4

    .line 311
    .line 312
    const/high16 v4, 0x70000

    .line 313
    and-int/2addr v0, v4

    .line 314
    .line 315
    or-int v7, v3, v0

    .line 316
    move-object v0, v1

    .line 317
    move-object v1, v2

    .line 318
    move-object v2, v14

    .line 319
    .line 320
    move-object/from16 v3, v16

    .line 321
    move-object v4, v15

    .line 322
    .line 323
    move-object/from16 v5, p5

    .line 324
    move-object v6, v10

    .line 325
    .line 326
    .line 327
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 328
    goto :goto_c

    .line 329
    .line 330
    .line 331
    :goto_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 332
    move-result-object v10

    .line 333
    .line 334
    if-nez v10, :cond_18

    .line 335
    goto :goto_12

    .line 336
    .line 337
    :cond_18
    new-instance v12, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;

    .line 338
    move-object v0, v12

    .line 339
    .line 340
    move/from16 v1, p0

    .line 341
    .line 342
    move-object/from16 v6, p5

    .line 343
    .line 344
    move/from16 v7, p7

    .line 345
    .line 346
    move/from16 v8, p8

    .line 347
    .line 348
    .line 349
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;II)V

    .line 350
    .line 351
    .line 352
    invoke-interface {v10, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 353
    :goto_12
    return-void
.end method

.method public static final i(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;ZLe8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Z",
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
    move-object/from16 v9, p2

    .line 3
    .line 4
    move-object/from16 v10, p3

    .line 5
    .line 6
    move-object/from16 v11, p5

    .line 7
    .line 8
    move/from16 v12, p7

    .line 9
    .line 10
    const-string v0, "enter"

    .line 11
    .line 12
    .line 13
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "exit"

    .line 16
    .line 17
    .line 18
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v0, "content"

    .line 21
    .line 22
    .line 23
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x42d9fd54

    .line 27
    .line 28
    move-object/from16 v1, p6

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 32
    move-result-object v13

    .line 33
    .line 34
    and-int/lit8 v0, p8, 0x1

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    or-int/lit8 v0, v12, 0x6

    .line 39
    .line 40
    move/from16 v14, p0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    and-int/lit8 v0, v12, 0xe

    .line 44
    .line 45
    move/from16 v14, p0

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x2

    .line 57
    :goto_0
    or-int/2addr v0, v12

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v0, v12

    .line 60
    .line 61
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    or-int/lit8 v0, v0, 0x30

    .line 66
    .line 67
    :cond_3
    move-object/from16 v2, p1

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_4
    and-int/lit8 v2, v12, 0x70

    .line 71
    .line 72
    if-nez v2, :cond_3

    .line 73
    .line 74
    move-object/from16 v2, p1

    .line 75
    .line 76
    .line 77
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 78
    move-result v3

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    const/16 v3, 0x20

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_5
    const/16 v3, 0x10

    .line 86
    :goto_2
    or-int/2addr v0, v3

    .line 87
    .line 88
    :goto_3
    and-int/lit8 v3, p8, 0x4

    .line 89
    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    or-int/lit16 v0, v0, 0x180

    .line 93
    goto :goto_5

    .line 94
    .line 95
    :cond_6
    and-int/lit16 v3, v12, 0x380

    .line 96
    .line 97
    if-nez v3, :cond_8

    .line 98
    .line 99
    .line 100
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 101
    move-result v3

    .line 102
    .line 103
    if-eqz v3, :cond_7

    .line 104
    .line 105
    const/16 v3, 0x100

    .line 106
    goto :goto_4

    .line 107
    .line 108
    :cond_7
    const/16 v3, 0x80

    .line 109
    :goto_4
    or-int/2addr v0, v3

    .line 110
    .line 111
    :cond_8
    :goto_5
    and-int/lit8 v3, p8, 0x8

    .line 112
    .line 113
    if-eqz v3, :cond_9

    .line 114
    .line 115
    or-int/lit16 v0, v0, 0xc00

    .line 116
    goto :goto_7

    .line 117
    .line 118
    :cond_9
    and-int/lit16 v3, v12, 0x1c00

    .line 119
    .line 120
    if-nez v3, :cond_b

    .line 121
    .line 122
    .line 123
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 124
    move-result v3

    .line 125
    .line 126
    if-eqz v3, :cond_a

    .line 127
    .line 128
    const/16 v3, 0x800

    .line 129
    goto :goto_6

    .line 130
    .line 131
    :cond_a
    const/16 v3, 0x400

    .line 132
    :goto_6
    or-int/2addr v0, v3

    .line 133
    .line 134
    :cond_b
    :goto_7
    and-int/lit8 v3, p8, 0x10

    .line 135
    .line 136
    if-eqz v3, :cond_c

    .line 137
    .line 138
    or-int/lit16 v0, v0, 0x6000

    .line 139
    .line 140
    move/from16 v15, p4

    .line 141
    goto :goto_9

    .line 142
    .line 143
    .line 144
    :cond_c
    const v3, 0xe000

    .line 145
    and-int/2addr v3, v12

    .line 146
    .line 147
    move/from16 v15, p4

    .line 148
    .line 149
    if-nez v3, :cond_e

    .line 150
    .line 151
    .line 152
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 153
    move-result v3

    .line 154
    .line 155
    if-eqz v3, :cond_d

    .line 156
    .line 157
    const/16 v3, 0x4000

    .line 158
    goto :goto_8

    .line 159
    .line 160
    :cond_d
    const/16 v3, 0x2000

    .line 161
    :goto_8
    or-int/2addr v0, v3

    .line 162
    .line 163
    :cond_e
    :goto_9
    and-int/lit8 v3, p8, 0x20

    .line 164
    .line 165
    const/high16 v4, 0x30000

    .line 166
    .line 167
    if-eqz v3, :cond_f

    .line 168
    or-int/2addr v0, v4

    .line 169
    goto :goto_b

    .line 170
    .line 171
    :cond_f
    const/high16 v3, 0x70000

    .line 172
    and-int/2addr v3, v12

    .line 173
    .line 174
    if-nez v3, :cond_11

    .line 175
    .line 176
    .line 177
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 178
    move-result v3

    .line 179
    .line 180
    if-eqz v3, :cond_10

    .line 181
    .line 182
    const/high16 v3, 0x20000

    .line 183
    goto :goto_a

    .line 184
    .line 185
    :cond_10
    const/high16 v3, 0x10000

    .line 186
    :goto_a
    or-int/2addr v0, v3

    .line 187
    .line 188
    .line 189
    :cond_11
    :goto_b
    const v3, 0x5b6db

    .line 190
    and-int/2addr v3, v0

    .line 191
    .line 192
    .line 193
    const v5, 0x12492

    .line 194
    .line 195
    if-ne v3, v5, :cond_13

    .line 196
    .line 197
    .line 198
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->b()Z

    .line 199
    move-result v3

    .line 200
    .line 201
    if-nez v3, :cond_12

    .line 202
    goto :goto_c

    .line 203
    .line 204
    .line 205
    :cond_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->g()V

    .line 206
    goto :goto_e

    .line 207
    .line 208
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 209
    .line 210
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 211
    .line 212
    move-object/from16 v16, v1

    .line 213
    goto :goto_d

    .line 214
    .line 215
    :cond_14
    move-object/from16 v16, v2

    .line 216
    .line 217
    .line 218
    :goto_d
    const v1, -0x1d58f75c

    .line 219
    .line 220
    .line 221
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 232
    .line 233
    if-ne v1, v2, :cond_15

    .line 234
    .line 235
    new-instance v1, Landroidx/compose/animation/core/MutableTransitionState;

    .line 236
    .line 237
    .line 238
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    .line 242
    invoke-direct {v1, v2}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_15
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->Q()V

    .line 249
    .line 250
    check-cast v1, Landroidx/compose/animation/core/MutableTransitionState;

    .line 251
    .line 252
    .line 253
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    move-result-object v2

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroidx/compose/animation/core/MutableTransitionState;->e(Ljava/lang/Object;)V

    .line 258
    const/4 v5, 0x0

    .line 259
    .line 260
    new-instance v2, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$16;

    .line 261
    .line 262
    .line 263
    invoke-direct {v2, v11, v0}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$16;-><init>(Le8/p;I)V

    .line 264
    .line 265
    .line 266
    const v3, 0x76fd702c

    .line 267
    const/4 v6, 0x1

    .line 268
    .line 269
    .line 270
    invoke-static {v13, v3, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 271
    move-result-object v6

    .line 272
    .line 273
    sget v2, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    .line 274
    or-int/2addr v2, v4

    .line 275
    .line 276
    and-int/lit8 v3, v0, 0x70

    .line 277
    or-int/2addr v2, v3

    .line 278
    .line 279
    and-int/lit16 v3, v0, 0x380

    .line 280
    or-int/2addr v2, v3

    .line 281
    .line 282
    and-int/lit16 v0, v0, 0x1c00

    .line 283
    .line 284
    or-int v7, v2, v0

    .line 285
    .line 286
    const/16 v8, 0x10

    .line 287
    move-object v0, v1

    .line 288
    .line 289
    move-object/from16 v1, v16

    .line 290
    .line 291
    move-object/from16 v2, p2

    .line 292
    .line 293
    move-object/from16 v3, p3

    .line 294
    move-object v4, v5

    .line 295
    move-object v5, v6

    .line 296
    move-object v6, v13

    .line 297
    .line 298
    .line 299
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Le8/q;Landroidx/compose/runtime/Composer;II)V

    .line 300
    .line 301
    move-object/from16 v2, v16

    .line 302
    .line 303
    .line 304
    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 305
    move-result-object v13

    .line 306
    .line 307
    if-nez v13, :cond_16

    .line 308
    goto :goto_f

    .line 309
    .line 310
    :cond_16
    new-instance v8, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$17;

    .line 311
    move-object v0, v8

    .line 312
    .line 313
    move/from16 v1, p0

    .line 314
    .line 315
    move-object/from16 v3, p2

    .line 316
    .line 317
    move-object/from16 v4, p3

    .line 318
    .line 319
    move/from16 v5, p4

    .line 320
    .line 321
    move-object/from16 v6, p5

    .line 322
    .line 323
    move/from16 v7, p7

    .line 324
    move-object v9, v8

    .line 325
    .line 326
    move/from16 v8, p8

    .line 327
    .line 328
    .line 329
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$17;-><init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;ZLe8/p;II)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v13, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 333
    :goto_f
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/animation/AnimatedVisibilityKt;->a(Landroidx/compose/animation/core/Transition;Le8/l;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Le8/q;Landroidx/compose/runtime/Composer;I)V

    .line 4
    return-void
.end method

.method private static final k(Landroidx/compose/animation/core/Transition;Le8/l;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;
    .locals 2
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;",
            "Le8/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;TT;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/animation/EnterExitState;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const p4, 0x158d233e

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    .line 9
    const p4, -0x2b065da9

    .line 10
    .line 11
    .line 12
    invoke-interface {p3, p4, p0}, Landroidx/compose/runtime/Composer;->K(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 16
    move-result p4

    .line 17
    .line 18
    if-eqz p4, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    check-cast p2, Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    sget-object p0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    check-cast p0, Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result p0

    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_1
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    const p4, -0x1d58f75c

    .line 59
    .line 60
    .line 61
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 65
    move-result-object p4

    .line 66
    .line 67
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-ne p4, v0, :cond_3

    .line 74
    .line 75
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    const/4 v0, 0x2

    .line 77
    const/4 v1, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static {p4, v1, v0, v1}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 81
    move-result-object p4

    .line 82
    .line 83
    .line 84
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 88
    .line 89
    check-cast p4, Landroidx/compose/runtime/MutableState;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 98
    .line 99
    check-cast p0, Ljava/lang/Boolean;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    move-result p0

    .line 104
    .line 105
    if-eqz p0, :cond_4

    .line 106
    .line 107
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    invoke-interface {p4, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 115
    .line 116
    check-cast p0, Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    move-result p0

    .line 121
    .line 122
    if-eqz p0, :cond_5

    .line 123
    .line 124
    sget-object p0, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 125
    goto :goto_0

    .line 126
    .line 127
    .line 128
    :cond_5
    invoke-interface {p4}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 129
    move-result-object p0

    .line 130
    .line 131
    check-cast p0, Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    move-result p0

    .line 136
    .line 137
    if-eqz p0, :cond_6

    .line 138
    .line 139
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 140
    goto :goto_0

    .line 141
    .line 142
    :cond_6
    sget-object p0, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->P()V

    .line 146
    .line 147
    .line 148
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 149
    return-object p0
.end method
