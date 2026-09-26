.class public final Landroidx/compose/material/ExposedDropdownMenuKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material/ExposedDropdownMenuKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 7 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,736:1\n76#2:737\n76#2:738\n76#2:793\n25#3:739\n25#3:746\n25#3:754\n67#3,3:761\n66#3:764\n25#3:771\n50#3:778\n49#3:779\n460#3,13:805\n473#3,3:819\n1057#4,6:740\n1057#4,6:747\n1057#4,6:755\n1057#4,6:765\n1057#4,6:772\n1057#4,6:780\n1#5:753\n67#6,6:786\n73#6:818\n77#6:823\n75#7:792\n76#7,11:794\n89#7:822\n76#8:824\n102#8,2:825\n76#8:827\n102#8,2:828\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material/ExposedDropdownMenuKt\n*L\n96#1:737\n97#1:738\n118#1:793\n98#1:739\n99#1:746\n101#1:754\n103#1:761,3\n103#1:764\n116#1:771\n130#1:778\n130#1:779\n118#1:805,13\n118#1:819,3\n98#1:740,6\n99#1:747,6\n101#1:755,6\n103#1:765,6\n116#1:772,6\n130#1:780,6\n118#1:786,6\n118#1:818\n118#1:823\n118#1:792\n118#1:794,11\n118#1:822\n98#1:824\n98#1:825,2\n99#1:827\n99#1:828,2\n*E\n"
.end annotation


# direct methods
.method public static final a(ZLe8/l;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
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
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

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
            "Le8/q<",
            "-",
            "Landroidx/compose/material/ExposedDropdownMenuBoxScope;",
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
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v4, p3

    .line 7
    .line 8
    move/from16 v5, p5

    .line 9
    .line 10
    const-string v0, "onExpandedChange"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v0, "content"

    .line 16
    .line 17
    .line 18
    invoke-static {v4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const v0, 0x56c99af4

    .line 22
    .line 23
    move-object/from16 v3, p4

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    and-int/lit8 v3, p6, 0x1

    .line 30
    const/4 v6, 0x2

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    or-int/lit8 v3, v5, 0x6

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    and-int/lit8 v3, v5, 0xe

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 43
    move-result v3

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    const/4 v3, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v3, v6

    .line 49
    :goto_0
    or-int/2addr v3, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v3, v5

    .line 52
    .line 53
    :goto_1
    and-int/lit8 v7, p6, 0x2

    .line 54
    .line 55
    if-eqz v7, :cond_3

    .line 56
    .line 57
    or-int/lit8 v3, v3, 0x30

    .line 58
    goto :goto_3

    .line 59
    .line 60
    :cond_3
    and-int/lit8 v7, v5, 0x70

    .line 61
    .line 62
    if-nez v7, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 66
    move-result v7

    .line 67
    .line 68
    if-eqz v7, :cond_4

    .line 69
    .line 70
    const/16 v7, 0x20

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_4
    const/16 v7, 0x10

    .line 74
    :goto_2
    or-int/2addr v3, v7

    .line 75
    .line 76
    :cond_5
    :goto_3
    and-int/lit8 v7, p6, 0x4

    .line 77
    .line 78
    if-eqz v7, :cond_7

    .line 79
    .line 80
    or-int/lit16 v3, v3, 0x180

    .line 81
    .line 82
    :cond_6
    move-object/from16 v8, p2

    .line 83
    goto :goto_5

    .line 84
    .line 85
    :cond_7
    and-int/lit16 v8, v5, 0x380

    .line 86
    .line 87
    if-nez v8, :cond_6

    .line 88
    .line 89
    move-object/from16 v8, p2

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 93
    move-result v9

    .line 94
    .line 95
    if-eqz v9, :cond_8

    .line 96
    .line 97
    const/16 v9, 0x100

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_8
    const/16 v9, 0x80

    .line 101
    :goto_4
    or-int/2addr v3, v9

    .line 102
    .line 103
    :goto_5
    and-int/lit8 v9, p6, 0x8

    .line 104
    .line 105
    if-eqz v9, :cond_9

    .line 106
    .line 107
    or-int/lit16 v3, v3, 0xc00

    .line 108
    goto :goto_7

    .line 109
    .line 110
    :cond_9
    and-int/lit16 v9, v5, 0x1c00

    .line 111
    .line 112
    if-nez v9, :cond_b

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 116
    move-result v9

    .line 117
    .line 118
    if-eqz v9, :cond_a

    .line 119
    .line 120
    const/16 v9, 0x800

    .line 121
    goto :goto_6

    .line 122
    .line 123
    :cond_a
    const/16 v9, 0x400

    .line 124
    :goto_6
    or-int/2addr v3, v9

    .line 125
    .line 126
    :cond_b
    :goto_7
    and-int/lit16 v9, v3, 0x16db

    .line 127
    .line 128
    const/16 v10, 0x492

    .line 129
    .line 130
    if-ne v9, v10, :cond_d

    .line 131
    .line 132
    .line 133
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 134
    move-result v9

    .line 135
    .line 136
    if-nez v9, :cond_c

    .line 137
    goto :goto_8

    .line 138
    .line 139
    .line 140
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 141
    move-object v3, v8

    .line 142
    .line 143
    goto/16 :goto_b

    .line 144
    .line 145
    :cond_d
    :goto_8
    if-eqz v7, :cond_e

    .line 146
    .line 147
    sget-object v7, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 148
    goto :goto_9

    .line 149
    :cond_e
    move-object v7, v8

    .line 150
    .line 151
    .line 152
    :goto_9
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 153
    move-result-object v8

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 157
    move-result-object v8

    .line 158
    .line 159
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->k()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 163
    move-result-object v9

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 167
    move-result-object v9

    .line 168
    .line 169
    check-cast v9, Landroid/view/View;

    .line 170
    .line 171
    .line 172
    const v10, -0x1d58f75c

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 179
    move-result-object v11

    .line 180
    .line 181
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 185
    move-result-object v12

    .line 186
    const/4 v13, 0x0

    .line 187
    const/4 v15, 0x0

    .line 188
    .line 189
    if-ne v11, v12, :cond_f

    .line 190
    .line 191
    .line 192
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v11

    .line 194
    .line 195
    .line 196
    invoke-static {v11, v13, v6, v13}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 197
    move-result-object v11

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 204
    move-object v14, v11

    .line 205
    .line 206
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 207
    .line 208
    .line 209
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 213
    move-result-object v11

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 217
    move-result-object v12

    .line 218
    .line 219
    if-ne v11, v12, :cond_10

    .line 220
    .line 221
    .line 222
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    move-result-object v11

    .line 224
    .line 225
    .line 226
    invoke-static {v11, v13, v6, v13}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 227
    move-result-object v11

    .line 228
    .line 229
    .line 230
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 234
    move-object v6, v11

    .line 235
    .line 236
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 237
    .line 238
    .line 239
    invoke-static {}, Landroidx/compose/material/MenuKt;->j()F

    .line 240
    move-result v11

    .line 241
    .line 242
    .line 243
    invoke-interface {v8, v11}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 244
    move-result v13

    .line 245
    .line 246
    .line 247
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 251
    move-result-object v11

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 255
    move-result-object v12

    .line 256
    .line 257
    if-ne v11, v12, :cond_11

    .line 258
    .line 259
    new-instance v11, Landroidx/compose/ui/node/Ref;

    .line 260
    .line 261
    .line 262
    invoke-direct {v11}, Landroidx/compose/ui/node/Ref;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    :cond_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 269
    move-object v12, v11

    .line 270
    .line 271
    check-cast v12, Landroidx/compose/ui/node/Ref;

    .line 272
    .line 273
    .line 274
    invoke-static {v6}, Landroidx/compose/material/ExposedDropdownMenuKt;->d(Landroidx/compose/runtime/MutableState;)I

    .line 275
    move-result v11

    .line 276
    .line 277
    .line 278
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v11

    .line 280
    .line 281
    .line 282
    invoke-static {v14}, Landroidx/compose/material/ExposedDropdownMenuKt;->b(Landroidx/compose/runtime/MutableState;)I

    .line 283
    move-result v17

    .line 284
    .line 285
    .line 286
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    move-result-object v15

    .line 288
    .line 289
    .line 290
    const v10, 0x607fb4c4

    .line 291
    .line 292
    .line 293
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 297
    move-result v10

    .line 298
    .line 299
    .line 300
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 301
    move-result v11

    .line 302
    or-int/2addr v10, v11

    .line 303
    .line 304
    .line 305
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 306
    move-result v11

    .line 307
    or-int/2addr v10, v11

    .line 308
    .line 309
    .line 310
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 311
    move-result-object v11

    .line 312
    .line 313
    if-nez v10, :cond_12

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 317
    move-result-object v10

    .line 318
    .line 319
    if-ne v11, v10, :cond_13

    .line 320
    .line 321
    :cond_12
    new-instance v11, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;

    .line 322
    .line 323
    .line 324
    invoke-direct {v11, v8, v6, v14}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_13
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 331
    move-object v8, v11

    .line 332
    .line 333
    check-cast v8, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;

    .line 334
    .line 335
    .line 336
    const v10, -0x1d58f75c

    .line 337
    .line 338
    .line 339
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 343
    move-result-object v10

    .line 344
    .line 345
    .line 346
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 347
    move-result-object v11

    .line 348
    .line 349
    if-ne v10, v11, :cond_14

    .line 350
    .line 351
    new-instance v10, Landroidx/compose/ui/focus/FocusRequester;

    .line 352
    .line 353
    .line 354
    invoke-direct {v10}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 355
    .line 356
    .line 357
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 361
    move-object v15, v10

    .line 362
    .line 363
    check-cast v15, Landroidx/compose/ui/focus/FocusRequester;

    .line 364
    .line 365
    new-instance v11, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$1;

    .line 366
    move-object v10, v11

    .line 367
    move-object v5, v11

    .line 368
    move-object v11, v12

    .line 369
    .line 370
    move-object/from16 v18, v12

    .line 371
    move-object v12, v9

    .line 372
    .line 373
    move/from16 p4, v13

    .line 374
    .line 375
    move-object/from16 v17, v9

    .line 376
    move-object v9, v15

    .line 377
    move-object v15, v6

    .line 378
    .line 379
    .line 380
    invoke-direct/range {v10 .. v15}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$1;-><init>(Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v7, v5}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 384
    move-result-object v5

    .line 385
    .line 386
    .line 387
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 388
    move-result-object v10

    .line 389
    .line 390
    .line 391
    const v11, 0x1e7b2b64

    .line 392
    .line 393
    .line 394
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 395
    .line 396
    .line 397
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 398
    move-result v11

    .line 399
    .line 400
    .line 401
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 402
    move-result v10

    .line 403
    or-int/2addr v10, v11

    .line 404
    .line 405
    .line 406
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 407
    move-result-object v11

    .line 408
    .line 409
    if-nez v10, :cond_15

    .line 410
    .line 411
    .line 412
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 413
    move-result-object v10

    .line 414
    .line 415
    if-ne v11, v10, :cond_16

    .line 416
    .line 417
    :cond_15
    new-instance v11, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;

    .line 418
    .line 419
    .line 420
    invoke-direct {v11, v2, v1}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1;-><init>(Le8/l;Z)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 427
    .line 428
    check-cast v11, Le8/a;

    .line 429
    .line 430
    sget-object v10, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10}, Landroidx/compose/material/Strings$Companion;->d()I

    .line 434
    move-result v10

    .line 435
    const/4 v12, 0x6

    .line 436
    .line 437
    .line 438
    invoke-static {v10, v0, v12}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 439
    move-result-object v10

    .line 440
    .line 441
    .line 442
    invoke-static {v5, v11, v10}, Landroidx/compose/material/ExposedDropdownMenuKt;->k(Landroidx/compose/ui/Modifier;Le8/a;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 443
    move-result-object v5

    .line 444
    .line 445
    .line 446
    invoke-static {v5, v9}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 447
    move-result-object v5

    .line 448
    .line 449
    .line 450
    const v10, 0x2bb5b5d7

    .line 451
    .line 452
    .line 453
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 454
    .line 455
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 459
    move-result-object v10

    .line 460
    const/4 v11, 0x0

    .line 461
    .line 462
    .line 463
    invoke-static {v10, v11, v0, v11}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 464
    move-result-object v10

    .line 465
    .line 466
    .line 467
    const v11, -0x4ee9b9da

    .line 468
    .line 469
    .line 470
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 471
    .line 472
    .line 473
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 474
    move-result-object v11

    .line 475
    .line 476
    .line 477
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 478
    move-result-object v11

    .line 479
    .line 480
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 481
    .line 482
    .line 483
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 484
    move-result-object v13

    .line 485
    .line 486
    .line 487
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 488
    move-result-object v13

    .line 489
    .line 490
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 491
    .line 492
    .line 493
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 494
    move-result-object v14

    .line 495
    .line 496
    .line 497
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 498
    move-result-object v14

    .line 499
    .line 500
    check-cast v14, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 501
    .line 502
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 506
    move-result-object v12

    .line 507
    .line 508
    .line 509
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 510
    move-result-object v5

    .line 511
    .line 512
    .line 513
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 514
    move-result-object v2

    .line 515
    .line 516
    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    .line 517
    .line 518
    if-nez v2, :cond_17

    .line 519
    .line 520
    .line 521
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 522
    .line 523
    .line 524
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 525
    .line 526
    .line 527
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 528
    move-result v2

    .line 529
    .line 530
    if-eqz v2, :cond_18

    .line 531
    .line 532
    .line 533
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 534
    goto :goto_a

    .line 535
    .line 536
    .line 537
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 538
    .line 539
    .line 540
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 541
    .line 542
    .line 543
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 544
    move-result-object v2

    .line 545
    .line 546
    .line 547
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 548
    move-result-object v12

    .line 549
    .line 550
    .line 551
    invoke-static {v2, v10, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 555
    move-result-object v10

    .line 556
    .line 557
    .line 558
    invoke-static {v2, v11, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 562
    move-result-object v10

    .line 563
    .line 564
    .line 565
    invoke-static {v2, v13, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 569
    move-result-object v10

    .line 570
    .line 571
    .line 572
    invoke-static {v2, v14, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 573
    .line 574
    .line 575
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 576
    .line 577
    .line 578
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 579
    move-result-object v2

    .line 580
    .line 581
    .line 582
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 583
    move-result-object v2

    .line 584
    const/4 v10, 0x0

    .line 585
    .line 586
    .line 587
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 588
    move-result-object v11

    .line 589
    .line 590
    .line 591
    invoke-interface {v5, v2, v0, v11}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    const v2, 0x7ab4aae9

    .line 595
    .line 596
    .line 597
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 598
    .line 599
    .line 600
    const v2, -0x7f65a980

    .line 601
    .line 602
    .line 603
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 604
    .line 605
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 606
    .line 607
    .line 608
    const v2, -0x1a6b1652

    .line 609
    .line 610
    .line 611
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 612
    const/4 v2, 0x6

    .line 613
    .line 614
    shr-int/lit8 v2, v3, 0x6

    .line 615
    .line 616
    and-int/lit8 v2, v2, 0x70

    .line 617
    .line 618
    .line 619
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 620
    move-result-object v2

    .line 621
    .line 622
    .line 623
    invoke-interface {v4, v8, v0, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 627
    .line 628
    .line 629
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 630
    .line 631
    .line 632
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 633
    .line 634
    .line 635
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 636
    .line 637
    .line 638
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 639
    .line 640
    .line 641
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 642
    .line 643
    new-instance v2, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$4;

    .line 644
    .line 645
    .line 646
    invoke-direct {v2, v1, v9}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$4;-><init>(ZLandroidx/compose/ui/focus/FocusRequester;)V

    .line 647
    const/4 v3, 0x0

    .line 648
    .line 649
    .line 650
    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 651
    .line 652
    new-instance v2, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$5;

    .line 653
    .line 654
    move/from16 v3, p4

    .line 655
    .line 656
    move-object/from16 v9, v17

    .line 657
    .line 658
    move-object/from16 v11, v18

    .line 659
    .line 660
    .line 661
    invoke-direct {v2, v9, v11, v3, v6}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$5;-><init>(Landroid/view/View;Landroidx/compose/ui/node/Ref;ILandroidx/compose/runtime/MutableState;)V

    .line 662
    .line 663
    const/16 v3, 0x8

    .line 664
    .line 665
    .line 666
    invoke-static {v9, v2, v0, v3}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 667
    move-object v3, v7

    .line 668
    .line 669
    .line 670
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 671
    move-result-object v7

    .line 672
    .line 673
    if-nez v7, :cond_19

    .line 674
    goto :goto_c

    .line 675
    .line 676
    :cond_19
    new-instance v8, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$6;

    .line 677
    move-object v0, v8

    .line 678
    .line 679
    move/from16 v1, p0

    .line 680
    .line 681
    move-object/from16 v2, p1

    .line 682
    .line 683
    move-object/from16 v4, p3

    .line 684
    .line 685
    move/from16 v5, p5

    .line 686
    .line 687
    move/from16 v6, p6

    .line 688
    .line 689
    .line 690
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ExposedDropdownMenuKt$ExposedDropdownMenuBox$6;-><init>(ZLe8/l;Landroidx/compose/ui/Modifier;Le8/q;II)V

    .line 691
    .line 692
    .line 693
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 694
    :goto_c
    return-void
.end method

.method private static final b(Landroidx/compose/runtime/MutableState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)I"
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
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final c(Landroidx/compose/runtime/MutableState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method private static final d(Landroidx/compose/runtime/MutableState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)I"
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
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final e(Landroidx/compose/runtime/MutableState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    return-void
.end method

.method public static final synthetic f(Landroidx/compose/runtime/MutableState;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ExposedDropdownMenuKt;->b(Landroidx/compose/runtime/MutableState;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/material/ExposedDropdownMenuKt;->c(Landroidx/compose/runtime/MutableState;I)V

    .line 4
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/runtime/MutableState;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/material/ExposedDropdownMenuKt;->d(Landroidx/compose/runtime/MutableState;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic i(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/material/ExposedDropdownMenuKt;->e(Landroidx/compose/runtime/MutableState;I)V

    .line 4
    return-void
.end method

.method public static final synthetic j(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILe8/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/ExposedDropdownMenuKt;->l(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILe8/l;)V

    .line 4
    return-void
.end method

.method private static final k(Landroidx/compose/ui/Modifier;Le8/a;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$1;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p1, v2}, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$1;-><init>(Le8/a;Lkotlin/coroutines/d;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p2, p1}, Landroidx/compose/material/ExposedDropdownMenuKt$expandable$2;-><init>(Ljava/lang/String;Le8/a;)V

    .line 18
    const/4 p1, 0x1

    .line 19
    const/4 p2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p2, v0, p1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method private static final l(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILe8/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "I",
            "Le8/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 19
    move-result p0

    .line 20
    .line 21
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 22
    int-to-float v2, v1

    .line 23
    sub-float/2addr p0, v2

    .line 24
    .line 25
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 26
    sub-int/2addr v0, v1

    .line 27
    int-to-float v0, v0

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 35
    move-result p1

    .line 36
    sub-float/2addr v0, p1

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 40
    move-result p0

    .line 41
    float-to-int p0, p0

    .line 42
    sub-int/2addr p0, p2

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-interface {p3, p0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
