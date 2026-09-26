.class public final Landroidx/compose/ui/layout/LayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,490:1\n75#1:525\n76#1,11:527\n89#1:554\n76#2:491\n76#2:492\n76#2:493\n76#2:510\n76#2:511\n76#2:512\n76#2:526\n76#2:555\n76#2:556\n76#2:557\n460#3,16:494\n286#3,12:513\n460#3,16:538\n367#3,13:558\n126#4,3:571\n32#4,4:574\n129#4,2:578\n37#4:580\n131#4:581\n126#4,3:582\n32#4,4:585\n129#4,2:589\n37#4:591\n131#4:592\n126#4,3:593\n32#4,4:596\n129#4,2:600\n37#4:602\n131#4:603\n126#4,3:604\n32#4,4:607\n129#4,2:611\n37#4:613\n131#4:614\n*S KotlinDebug\n*F\n+ 1 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n*L\n179#1:525\n179#1:527,11\n179#1:554\n75#1:491\n76#1:492\n77#1:493\n121#1:510\n122#1:511\n123#1:512\n179#1:526\n245#1:555\n246#1:556\n247#1:557\n78#1:494,16\n125#1:513,12\n179#1:538,16\n249#1:558,13\n425#1:571,3\n425#1:574,4\n425#1:578,2\n425#1:580\n425#1:581\n444#1:582,3\n444#1:585,4\n444#1:589,2\n444#1:591\n444#1:592\n463#1:593,3\n463#1:596,4\n463#1:600,2\n463#1:602\n463#1:603\n482#1:604,3\n482#1:607,4\n482#1:611,2\n482#1:613\n482#1:614\n*E\n"
.end annotation


# direct methods
.method public static final a(Le8/p;Le8/q;Le8/q;Le8/q;Le8/q;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p0    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/Modifier;
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

    .annotation build Landroidx/compose/ui/UiComposable;
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
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
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
    move-object/from16 v8, p1

    .line 5
    .line 6
    move-object/from16 v9, p2

    .line 7
    .line 8
    move-object/from16 v10, p3

    .line 9
    .line 10
    move-object/from16 v11, p4

    .line 11
    .line 12
    move-object/from16 v12, p6

    .line 13
    .line 14
    move/from16 v13, p8

    .line 15
    .line 16
    const-string v0, "content"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    const-string v0, "minIntrinsicWidthMeasureBlock"

    .line 22
    .line 23
    .line 24
    invoke-static {v8, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    const-string v0, "minIntrinsicHeightMeasureBlock"

    .line 27
    .line 28
    .line 29
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    const-string v0, "maxIntrinsicWidthMeasureBlock"

    .line 32
    .line 33
    .line 34
    invoke-static {v10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    const-string v0, "maxIntrinsicHeightMeasureBlock"

    .line 37
    .line 38
    .line 39
    invoke-static {v11, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    const-string v0, "measureBlock"

    .line 42
    .line 43
    .line 44
    invoke-static {v12, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x456dba57

    .line 48
    .line 49
    move-object/from16 v2, p7

    .line 50
    .line 51
    .line 52
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    and-int/lit8 v2, p9, 0x1

    .line 56
    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    or-int/lit8 v2, v13, 0x6

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_0
    and-int/lit8 v2, v13, 0xe

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    const/4 v2, 0x4

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v2, 0x2

    .line 74
    :goto_0
    or-int/2addr v2, v13

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v2, v13

    .line 77
    .line 78
    :goto_1
    and-int/lit8 v3, p9, 0x2

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    or-int/lit8 v2, v2, 0x30

    .line 83
    goto :goto_3

    .line 84
    .line 85
    :cond_3
    and-int/lit8 v3, v13, 0x70

    .line 86
    .line 87
    if-nez v3, :cond_5

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    const/16 v3, 0x20

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :cond_4
    const/16 v3, 0x10

    .line 99
    :goto_2
    or-int/2addr v2, v3

    .line 100
    .line 101
    :cond_5
    :goto_3
    and-int/lit8 v3, p9, 0x4

    .line 102
    .line 103
    if-eqz v3, :cond_6

    .line 104
    .line 105
    or-int/lit16 v2, v2, 0x180

    .line 106
    goto :goto_5

    .line 107
    .line 108
    :cond_6
    and-int/lit16 v3, v13, 0x380

    .line 109
    .line 110
    if-nez v3, :cond_8

    .line 111
    .line 112
    .line 113
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 114
    move-result v3

    .line 115
    .line 116
    if-eqz v3, :cond_7

    .line 117
    .line 118
    const/16 v3, 0x100

    .line 119
    goto :goto_4

    .line 120
    .line 121
    :cond_7
    const/16 v3, 0x80

    .line 122
    :goto_4
    or-int/2addr v2, v3

    .line 123
    .line 124
    :cond_8
    :goto_5
    and-int/lit8 v3, p9, 0x8

    .line 125
    .line 126
    if-eqz v3, :cond_9

    .line 127
    .line 128
    or-int/lit16 v2, v2, 0xc00

    .line 129
    goto :goto_7

    .line 130
    .line 131
    :cond_9
    and-int/lit16 v3, v13, 0x1c00

    .line 132
    .line 133
    if-nez v3, :cond_b

    .line 134
    .line 135
    .line 136
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 137
    move-result v3

    .line 138
    .line 139
    if-eqz v3, :cond_a

    .line 140
    .line 141
    const/16 v3, 0x800

    .line 142
    goto :goto_6

    .line 143
    .line 144
    :cond_a
    const/16 v3, 0x400

    .line 145
    :goto_6
    or-int/2addr v2, v3

    .line 146
    .line 147
    :cond_b
    :goto_7
    and-int/lit8 v3, p9, 0x10

    .line 148
    .line 149
    if-eqz v3, :cond_c

    .line 150
    .line 151
    or-int/lit16 v2, v2, 0x6000

    .line 152
    goto :goto_9

    .line 153
    .line 154
    .line 155
    :cond_c
    const v3, 0xe000

    .line 156
    and-int/2addr v3, v13

    .line 157
    .line 158
    if-nez v3, :cond_e

    .line 159
    .line 160
    .line 161
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 162
    move-result v3

    .line 163
    .line 164
    if-eqz v3, :cond_d

    .line 165
    .line 166
    const/16 v3, 0x4000

    .line 167
    goto :goto_8

    .line 168
    .line 169
    :cond_d
    const/16 v3, 0x2000

    .line 170
    :goto_8
    or-int/2addr v2, v3

    .line 171
    .line 172
    :cond_e
    :goto_9
    and-int/lit8 v3, p9, 0x20

    .line 173
    .line 174
    if-eqz v3, :cond_10

    .line 175
    .line 176
    const/high16 v4, 0x30000

    .line 177
    or-int/2addr v2, v4

    .line 178
    .line 179
    :cond_f
    move-object/from16 v4, p5

    .line 180
    goto :goto_b

    .line 181
    .line 182
    :cond_10
    const/high16 v4, 0x70000

    .line 183
    and-int/2addr v4, v13

    .line 184
    .line 185
    if-nez v4, :cond_f

    .line 186
    .line 187
    move-object/from16 v4, p5

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 191
    move-result v5

    .line 192
    .line 193
    if-eqz v5, :cond_11

    .line 194
    .line 195
    const/high16 v5, 0x20000

    .line 196
    goto :goto_a

    .line 197
    .line 198
    :cond_11
    const/high16 v5, 0x10000

    .line 199
    :goto_a
    or-int/2addr v2, v5

    .line 200
    .line 201
    :goto_b
    and-int/lit8 v5, p9, 0x40

    .line 202
    .line 203
    if-eqz v5, :cond_13

    .line 204
    .line 205
    const/high16 v5, 0x180000

    .line 206
    :goto_c
    or-int/2addr v2, v5

    .line 207
    :cond_12
    move v14, v2

    .line 208
    goto :goto_d

    .line 209
    .line 210
    :cond_13
    const/high16 v5, 0x380000

    .line 211
    and-int/2addr v5, v13

    .line 212
    .line 213
    if-nez v5, :cond_12

    .line 214
    .line 215
    .line 216
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 217
    move-result v5

    .line 218
    .line 219
    if-eqz v5, :cond_14

    .line 220
    .line 221
    const/high16 v5, 0x100000

    .line 222
    goto :goto_c

    .line 223
    .line 224
    :cond_14
    const/high16 v5, 0x80000

    .line 225
    goto :goto_c

    .line 226
    .line 227
    .line 228
    :goto_d
    const v2, 0x2db6db

    .line 229
    and-int/2addr v2, v14

    .line 230
    .line 231
    .line 232
    const v5, 0x92492

    .line 233
    .line 234
    if-ne v2, v5, :cond_16

    .line 235
    .line 236
    .line 237
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 238
    move-result v2

    .line 239
    .line 240
    if-nez v2, :cond_15

    .line 241
    goto :goto_e

    .line 242
    .line 243
    .line 244
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 245
    move-object v6, v4

    .line 246
    .line 247
    goto/16 :goto_11

    .line 248
    .line 249
    :cond_16
    :goto_e
    if-eqz v3, :cond_17

    .line 250
    .line 251
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 252
    move-object v15, v2

    .line 253
    goto :goto_f

    .line 254
    :cond_17
    move-object v15, v4

    .line 255
    .line 256
    :goto_f
    new-instance v7, Landroidx/compose/ui/layout/LayoutKt$Layout$measurePolicy$1;

    .line 257
    move-object v2, v7

    .line 258
    .line 259
    move-object/from16 v3, p6

    .line 260
    .line 261
    move-object/from16 v4, p1

    .line 262
    .line 263
    move-object/from16 v5, p2

    .line 264
    .line 265
    move-object/from16 v6, p3

    .line 266
    move-object v8, v7

    .line 267
    .line 268
    move-object/from16 v7, p4

    .line 269
    .line 270
    .line 271
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/layout/LayoutKt$Layout$measurePolicy$1;-><init>(Le8/q;Le8/q;Le8/q;Le8/q;Le8/q;)V

    .line 272
    .line 273
    and-int/lit8 v2, v14, 0xe

    .line 274
    .line 275
    shr-int/lit8 v3, v14, 0xc

    .line 276
    .line 277
    and-int/lit8 v3, v3, 0x70

    .line 278
    or-int/2addr v2, v3

    .line 279
    .line 280
    .line 281
    const v3, -0x4ee9b9da

    .line 282
    .line 283
    .line 284
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 288
    move-result-object v3

    .line 289
    .line 290
    .line 291
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 292
    move-result-object v3

    .line 293
    .line 294
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 295
    .line 296
    .line 297
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 298
    move-result-object v4

    .line 299
    .line 300
    .line 301
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 302
    move-result-object v4

    .line 303
    .line 304
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 305
    .line 306
    .line 307
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 308
    move-result-object v5

    .line 309
    .line 310
    .line 311
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 312
    move-result-object v5

    .line 313
    .line 314
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 315
    .line 316
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 320
    move-result-object v7

    .line 321
    .line 322
    .line 323
    invoke-static {v15}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 324
    move-result-object v14

    .line 325
    .line 326
    shl-int/lit8 v2, v2, 0x9

    .line 327
    .line 328
    and-int/lit16 v2, v2, 0x1c00

    .line 329
    .line 330
    or-int/lit8 v2, v2, 0x6

    .line 331
    .line 332
    .line 333
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 334
    move-result-object v9

    .line 335
    .line 336
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 337
    .line 338
    if-nez v9, :cond_18

    .line 339
    .line 340
    .line 341
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 342
    .line 343
    .line 344
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->e()V

    .line 345
    .line 346
    .line 347
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()Z

    .line 348
    move-result v9

    .line 349
    .line 350
    if-eqz v9, :cond_19

    .line 351
    .line 352
    .line 353
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 354
    goto :goto_10

    .line 355
    .line 356
    .line 357
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->c()V

    .line 358
    .line 359
    .line 360
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->L()V

    .line 361
    .line 362
    .line 363
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 364
    move-result-object v7

    .line 365
    .line 366
    .line 367
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 368
    move-result-object v9

    .line 369
    .line 370
    .line 371
    invoke-static {v7, v8, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 375
    move-result-object v8

    .line 376
    .line 377
    .line 378
    invoke-static {v7, v3, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 382
    move-result-object v3

    .line 383
    .line 384
    .line 385
    invoke-static {v7, v4, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 389
    move-result-object v3

    .line 390
    .line 391
    .line 392
    invoke-static {v7, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    .line 396
    .line 397
    .line 398
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 399
    move-result-object v3

    .line 400
    .line 401
    .line 402
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 403
    move-result-object v3

    .line 404
    .line 405
    shr-int/lit8 v4, v2, 0x3

    .line 406
    .line 407
    and-int/lit8 v4, v4, 0x70

    .line 408
    .line 409
    .line 410
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    move-result-object v4

    .line 412
    .line 413
    .line 414
    invoke-interface {v14, v3, v0, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    const v3, 0x7ab4aae9

    .line 418
    .line 419
    .line 420
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 421
    .line 422
    shr-int/lit8 v2, v2, 0x9

    .line 423
    .line 424
    and-int/lit8 v2, v2, 0xe

    .line 425
    .line 426
    .line 427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    move-result-object v2

    .line 429
    .line 430
    .line 431
    invoke-interface {v1, v0, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 435
    .line 436
    .line 437
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->d()V

    .line 438
    .line 439
    .line 440
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 441
    move-object v6, v15

    .line 442
    .line 443
    .line 444
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 445
    move-result-object v14

    .line 446
    .line 447
    if-nez v14, :cond_1a

    .line 448
    goto :goto_12

    .line 449
    .line 450
    :cond_1a
    new-instance v15, Landroidx/compose/ui/layout/LayoutKt$Layout$3;

    .line 451
    move-object v0, v15

    .line 452
    .line 453
    move-object/from16 v1, p0

    .line 454
    .line 455
    move-object/from16 v2, p1

    .line 456
    .line 457
    move-object/from16 v3, p2

    .line 458
    .line 459
    move-object/from16 v4, p3

    .line 460
    .line 461
    move-object/from16 v5, p4

    .line 462
    .line 463
    move-object/from16 v7, p6

    .line 464
    .line 465
    move/from16 v8, p8

    .line 466
    .line 467
    move/from16 v9, p9

    .line 468
    .line 469
    .line 470
    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/layout/LayoutKt$Layout$3;-><init>(Le8/p;Le8/q;Le8/q;Le8/q;Le8/q;Landroidx/compose/ui/Modifier;Le8/q;II)V

    .line 471
    .line 472
    .line 473
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 474
    :goto_12
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/MeasurePolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "Landroidx/compose/ui/layout/MeasurePolicy;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "content"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurePolicy"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x74399e13

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    and-int/lit8 v0, p5, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    or-int/lit8 v1, p4, 0x6

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    and-int/lit8 v1, p4, 0xe

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    const/4 v1, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x2

    .line 38
    :goto_0
    or-int/2addr v1, p4

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v1, p4

    .line 41
    .line 42
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    or-int/lit8 v1, v1, 0x30

    .line 47
    goto :goto_3

    .line 48
    .line 49
    :cond_3
    and-int/lit8 v2, p4, 0x70

    .line 50
    .line 51
    if-nez v2, :cond_5

    .line 52
    .line 53
    .line 54
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    const/16 v2, 0x20

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_4
    const/16 v2, 0x10

    .line 63
    :goto_2
    or-int/2addr v1, v2

    .line 64
    .line 65
    :cond_5
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 66
    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    or-int/lit16 v1, v1, 0x180

    .line 70
    goto :goto_5

    .line 71
    .line 72
    :cond_6
    and-int/lit16 v2, p4, 0x380

    .line 73
    .line 74
    if-nez v2, :cond_8

    .line 75
    .line 76
    .line 77
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 78
    move-result v2

    .line 79
    .line 80
    if-eqz v2, :cond_7

    .line 81
    .line 82
    const/16 v2, 0x100

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_7
    const/16 v2, 0x80

    .line 86
    :goto_4
    or-int/2addr v1, v2

    .line 87
    .line 88
    :cond_8
    :goto_5
    and-int/lit16 v2, v1, 0x2db

    .line 89
    .line 90
    const/16 v3, 0x92

    .line 91
    .line 92
    if-ne v2, v3, :cond_a

    .line 93
    .line 94
    .line 95
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 96
    move-result v2

    .line 97
    .line 98
    if-nez v2, :cond_9

    .line 99
    goto :goto_7

    .line 100
    .line 101
    .line 102
    :cond_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->g()V

    .line 103
    :goto_6
    move-object v2, p0

    .line 104
    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    .line 108
    .line 109
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 110
    .line 111
    .line 112
    :cond_b
    invoke-static {p3, p0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    .line 130
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 134
    .line 135
    .line 136
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 144
    .line 145
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->Companion:Landroidx/compose/ui/node/LayoutNode$Companion;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode$Companion;->a()Le8/a;

    .line 149
    move-result-object v5

    .line 150
    .line 151
    shl-int/lit8 v1, v1, 0x3

    .line 152
    .line 153
    and-int/lit16 v1, v1, 0x380

    .line 154
    .line 155
    or-int/lit8 v1, v1, 0x6

    .line 156
    .line 157
    .line 158
    const v6, -0x2942ffcf

    .line 159
    .line 160
    .line 161
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 165
    move-result-object v6

    .line 166
    .line 167
    instance-of v6, v6, Landroidx/compose/runtime/Applier;

    .line 168
    .line 169
    if-nez v6, :cond_c

    .line 170
    .line 171
    .line 172
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 173
    .line 174
    .line 175
    :cond_c
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->e()V

    .line 176
    .line 177
    .line 178
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->r()Z

    .line 179
    move-result v6

    .line 180
    .line 181
    if-eqz v6, :cond_d

    .line 182
    .line 183
    .line 184
    invoke-interface {p3, v5}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 185
    goto :goto_8

    .line 186
    .line 187
    .line 188
    :cond_d
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->c()V

    .line 189
    .line 190
    .line 191
    :goto_8
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->L()V

    .line 192
    .line 193
    .line 194
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 195
    move-result-object v5

    .line 196
    .line 197
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Le8/p;

    .line 201
    move-result-object v7

    .line 202
    .line 203
    .line 204
    invoke-static {v5, v0, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    invoke-static {v5, p2, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    .line 218
    invoke-static {v5, v2, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    .line 225
    invoke-static {v5, v3, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-static {v5, v4, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 233
    .line 234
    sget-object v0, Landroidx/compose/ui/layout/LayoutKt$MultiMeasureLayout$1$1;->INSTANCE:Landroidx/compose/ui/layout/LayoutKt$MultiMeasureLayout$1$1;

    .line 235
    .line 236
    .line 237
    invoke-static {v5, v0}, Landroidx/compose/runtime/Updater;->d(Landroidx/compose/runtime/Composer;Le8/l;)V

    .line 238
    .line 239
    .line 240
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->o()V

    .line 241
    .line 242
    shr-int/lit8 v0, v1, 0x6

    .line 243
    .line 244
    and-int/lit8 v0, v0, 0xe

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    move-result-object v0

    .line 249
    .line 250
    .line 251
    invoke-interface {p1, p3, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->d()V

    .line 255
    .line 256
    .line 257
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 258
    .line 259
    goto/16 :goto_6

    .line 260
    .line 261
    .line 262
    :goto_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 263
    move-result-object p0

    .line 264
    .line 265
    if-nez p0, :cond_e

    .line 266
    goto :goto_a

    .line 267
    .line 268
    :cond_e
    new-instance p3, Landroidx/compose/ui/layout/LayoutKt$MultiMeasureLayout$2;

    .line 269
    move-object v1, p3

    .line 270
    move-object v3, p1

    .line 271
    move-object v4, p2

    .line 272
    move v5, p4

    .line 273
    move v6, p5

    .line 274
    .line 275
    .line 276
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/layout/LayoutKt$MultiMeasureLayout$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/ui/layout/MeasurePolicy;II)V

    .line 277
    .line 278
    .line 279
    invoke-interface {p0, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 280
    :goto_a
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;)Le8/q;
    .locals 2
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            ")",
            "Le8/q<",
            "Landroidx/compose/runtime/SkippableUpdater<",
            "Landroidx/compose/ui/node/ComposeUiNode;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "modifier"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/layout/LayoutKt$materializerOf$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/LayoutKt$materializerOf$1;-><init>(Landroidx/compose/ui/Modifier;)V

    .line 11
    .line 12
    .line 13
    const p0, -0x5e8c5df4

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
