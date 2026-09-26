.class public final Landroidx/compose/ui/graphics/vector/VectorPainterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVectorPainter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VectorPainter.kt\nandroidx/compose/ui/graphics/vector/VectorPainterKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 6 DrawScope.kt\nandroidx/compose/ui/graphics/drawscope/DrawScopeKt\n*L\n1#1,419:1\n76#2:420\n1#3:421\n50#4:422\n49#4:423\n25#4:430\n1057#5,6:424\n1057#5,6:431\n173#6,6:437\n261#6,11:443\n*S KotlinDebug\n*F\n+ 1 VectorPainter.kt\nandroidx/compose/ui/graphics/vector/VectorPainterKt\n*L\n126#1:420\n133#1:422\n133#1:423\n141#1:430\n133#1:424,6\n141#1:431,6\n280#1:437,6\n280#1:443,11\n*E\n"
.end annotation


# static fields
.field public static final RootGroupName:Ljava/lang/String; = "VectorRootGroup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/ui/graphics/vector/VectorGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/VectorGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/compose/ui/graphics/vector/VectorConfig;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p3

    .line 5
    .line 6
    move/from16 v2, p4

    .line 7
    .line 8
    const-string v3, "group"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v3, -0x1a9827a1

    .line 15
    .line 16
    move-object/from16 v4, p2

    .line 17
    .line 18
    .line 19
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    and-int/lit8 v4, v2, 0x1

    .line 23
    const/4 v5, 0x2

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    or-int/lit8 v4, v1, 0x6

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    and-int/lit8 v4, v1, 0xe

    .line 31
    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    const/4 v4, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v4, v5

    .line 42
    :goto_0
    or-int/2addr v4, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v4, v1

    .line 45
    .line 46
    :goto_1
    and-int/lit8 v6, v2, 0x2

    .line 47
    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    or-int/lit8 v4, v4, 0x10

    .line 51
    .line 52
    :cond_3
    if-ne v6, v5, :cond_5

    .line 53
    .line 54
    and-int/lit8 v4, v4, 0x5b

    .line 55
    .line 56
    const/16 v5, 0x12

    .line 57
    .line 58
    if-ne v4, v5, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->b()Z

    .line 62
    move-result v4

    .line 63
    .line 64
    if-nez v4, :cond_4

    .line 65
    goto :goto_2

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->g()V

    .line 69
    .line 70
    move-object/from16 v2, p1

    .line 71
    .line 72
    goto/16 :goto_9

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->J()V

    .line 76
    .line 77
    and-int/lit8 v4, v1, 0x1

    .line 78
    .line 79
    if-eqz v4, :cond_7

    .line 80
    .line 81
    .line 82
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->h()Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-eqz v4, :cond_6

    .line 86
    goto :goto_3

    .line 87
    .line 88
    .line 89
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->g()V

    .line 90
    goto :goto_4

    .line 91
    .line 92
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lkotlin/collections/p0;->h()Ljava/util/Map;

    .line 96
    move-result-object v4

    .line 97
    move-object v15, v4

    .line 98
    goto :goto_5

    .line 99
    .line 100
    :cond_8
    :goto_4
    move-object/from16 v15, p1

    .line 101
    .line 102
    .line 103
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->A()V

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v22

    .line 108
    .line 109
    .line 110
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v4

    .line 112
    .line 113
    if-eqz v4, :cond_d

    .line 114
    .line 115
    .line 116
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v4

    .line 118
    .line 119
    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorNode;

    .line 120
    .line 121
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 122
    .line 123
    if-eqz v5, :cond_a

    .line 124
    .line 125
    .line 126
    const v5, -0x1372ba0b

    .line 127
    .line 128
    .line 129
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 130
    .line 131
    move-object/from16 v17, v4

    .line 132
    .line 133
    check-cast v17, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 134
    .line 135
    .line 136
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->f()Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorConfig;

    .line 144
    .line 145
    if-nez v4, :cond_9

    .line 146
    .line 147
    new-instance v4, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;

    .line 148
    .line 149
    .line 150
    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;-><init>()V

    .line 151
    :cond_9
    move-object v14, v4

    .line 152
    .line 153
    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->g()Ljava/util/List;

    .line 157
    move-result-object v5

    .line 158
    .line 159
    .line 160
    invoke-interface {v14, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-result-object v4

    .line 162
    .line 163
    check-cast v4, Ljava/util/List;

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->j()I

    .line 167
    move-result v5

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->f()Ljava/lang/String;

    .line 171
    move-result-object v6

    .line 172
    .line 173
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->c()Landroidx/compose/ui/graphics/Brush;

    .line 177
    move-result-object v8

    .line 178
    .line 179
    .line 180
    invoke-interface {v14, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    move-result-object v7

    .line 182
    .line 183
    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    .line 184
    .line 185
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;

    .line 186
    .line 187
    .line 188
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->e()F

    .line 189
    move-result v9

    .line 190
    .line 191
    .line 192
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 193
    move-result-object v9

    .line 194
    .line 195
    .line 196
    invoke-interface {v14, v8, v9}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-result-object v8

    .line 198
    .line 199
    check-cast v8, Ljava/lang/Number;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 203
    move-result v8

    .line 204
    .line 205
    sget-object v9, Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->m()Landroidx/compose/ui/graphics/Brush;

    .line 209
    move-result-object v10

    .line 210
    .line 211
    .line 212
    invoke-interface {v14, v9, v10}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v9

    .line 214
    .line 215
    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    .line 216
    .line 217
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;

    .line 218
    .line 219
    .line 220
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->p()F

    .line 221
    move-result v11

    .line 222
    .line 223
    .line 224
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    move-result-object v11

    .line 226
    .line 227
    .line 228
    invoke-interface {v14, v10, v11}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-result-object v10

    .line 230
    .line 231
    check-cast v10, Ljava/lang/Number;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 235
    move-result v10

    .line 236
    .line 237
    sget-object v11, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->t()F

    .line 241
    move-result v12

    .line 242
    .line 243
    .line 244
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 245
    move-result-object v12

    .line 246
    .line 247
    .line 248
    invoke-interface {v14, v11, v12}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v11

    .line 250
    .line 251
    check-cast v11, Ljava/lang/Number;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 255
    move-result v11

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->q()I

    .line 259
    move-result v12

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->r()I

    .line 263
    move-result v13

    .line 264
    .line 265
    .line 266
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->s()F

    .line 267
    move-result v16

    .line 268
    move-object v0, v14

    .line 269
    .line 270
    move/from16 v14, v16

    .line 271
    .line 272
    move-object/from16 v16, v15

    .line 273
    .line 274
    sget-object v15, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->w()F

    .line 278
    move-result v18

    .line 279
    .line 280
    .line 281
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 282
    move-result-object v1

    .line 283
    .line 284
    .line 285
    invoke-interface {v0, v15, v1}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    move-result-object v1

    .line 287
    .line 288
    check-cast v1, Ljava/lang/Number;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 292
    move-result v15

    .line 293
    .line 294
    move-object/from16 v1, v16

    .line 295
    .line 296
    sget-object v2, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->u()F

    .line 300
    move-result v16

    .line 301
    .line 302
    move-object/from16 p1, v1

    .line 303
    .line 304
    .line 305
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 306
    move-result-object v1

    .line 307
    .line 308
    .line 309
    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    check-cast v1, Ljava/lang/Number;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 316
    move-result v16

    .line 317
    .line 318
    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->v()F

    .line 322
    move-result v2

    .line 323
    .line 324
    .line 325
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    move-result-object v2

    .line 327
    .line 328
    .line 329
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    move-result-object v0

    .line 331
    .line 332
    check-cast v0, Ljava/lang/Number;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 336
    move-result v17

    .line 337
    .line 338
    const/16 v19, 0x8

    .line 339
    .line 340
    const/16 v20, 0x0

    .line 341
    .line 342
    const/16 v21, 0x0

    .line 343
    .line 344
    move-object/from16 v18, v3

    .line 345
    .line 346
    .line 347
    invoke-static/range {v4 .. v21}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->b(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V

    .line 348
    .line 349
    .line 350
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 351
    .line 352
    move-object/from16 v0, p0

    .line 353
    .line 354
    move-object/from16 v15, p1

    .line 355
    .line 356
    move/from16 v1, p3

    .line 357
    .line 358
    :goto_7
    move/from16 v2, p4

    .line 359
    .line 360
    goto/16 :goto_6

    .line 361
    .line 362
    :cond_a
    move-object/from16 p1, v15

    .line 363
    .line 364
    instance-of v0, v4, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 365
    .line 366
    if-eqz v0, :cond_c

    .line 367
    .line 368
    .line 369
    const v0, -0x1372b2c9

    .line 370
    .line 371
    .line 372
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 373
    move-object v0, v4

    .line 374
    .line 375
    check-cast v0, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->e()Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    .line 381
    move-object/from16 v2, p1

    .line 382
    .line 383
    .line 384
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    move-result-object v1

    .line 386
    .line 387
    check-cast v1, Landroidx/compose/ui/graphics/vector/VectorConfig;

    .line 388
    .line 389
    if-nez v1, :cond_b

    .line 390
    .line 391
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;

    .line 392
    .line 393
    .line 394
    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;-><init>()V

    .line 395
    .line 396
    .line 397
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->e()Ljava/lang/String;

    .line 398
    move-result-object v5

    .line 399
    .line 400
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->j()F

    .line 404
    move-result v7

    .line 405
    .line 406
    .line 407
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 408
    move-result-object v7

    .line 409
    .line 410
    .line 411
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-result-object v6

    .line 413
    .line 414
    check-cast v6, Ljava/lang/Number;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 418
    move-result v6

    .line 419
    .line 420
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->m()F

    .line 424
    move-result v8

    .line 425
    .line 426
    .line 427
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 428
    move-result-object v8

    .line 429
    .line 430
    .line 431
    invoke-interface {v1, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    move-result-object v7

    .line 433
    .line 434
    check-cast v7, Ljava/lang/Number;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 438
    move-result v8

    .line 439
    .line 440
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->p()F

    .line 444
    move-result v9

    .line 445
    .line 446
    .line 447
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 448
    move-result-object v9

    .line 449
    .line 450
    .line 451
    invoke-interface {v1, v7, v9}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    move-result-object v7

    .line 453
    .line 454
    check-cast v7, Ljava/lang/Number;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 458
    move-result v9

    .line 459
    .line 460
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->q()F

    .line 464
    move-result v10

    .line 465
    .line 466
    .line 467
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 468
    move-result-object v10

    .line 469
    .line 470
    .line 471
    invoke-interface {v1, v7, v10}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    move-result-object v7

    .line 473
    .line 474
    check-cast v7, Ljava/lang/Number;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 478
    move-result v10

    .line 479
    .line 480
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->r()F

    .line 484
    move-result v11

    .line 485
    .line 486
    .line 487
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 488
    move-result-object v11

    .line 489
    .line 490
    .line 491
    invoke-interface {v1, v7, v11}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    move-result-object v7

    .line 493
    .line 494
    check-cast v7, Ljava/lang/Number;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 498
    move-result v11

    .line 499
    .line 500
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->f()F

    .line 504
    move-result v12

    .line 505
    .line 506
    .line 507
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 508
    move-result-object v12

    .line 509
    .line 510
    .line 511
    invoke-interface {v1, v7, v12}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    move-result-object v7

    .line 513
    .line 514
    check-cast v7, Ljava/lang/Number;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 518
    move-result v7

    .line 519
    .line 520
    sget-object v12, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->g()F

    .line 524
    move-result v13

    .line 525
    .line 526
    .line 527
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 528
    move-result-object v13

    .line 529
    .line 530
    .line 531
    invoke-interface {v1, v12, v13}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    move-result-object v12

    .line 533
    .line 534
    check-cast v12, Ljava/lang/Number;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 538
    move-result v12

    .line 539
    .line 540
    sget-object v13, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->c()Ljava/util/List;

    .line 544
    move-result-object v0

    .line 545
    .line 546
    .line 547
    invoke-interface {v1, v13, v0}, Landroidx/compose/ui/graphics/vector/VectorConfig;->a(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    move-result-object v0

    .line 549
    .line 550
    check-cast v0, Ljava/util/List;

    .line 551
    .line 552
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;

    .line 553
    .line 554
    .line 555
    invoke-direct {v1, v4, v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorNode;Ljava/util/Map;)V

    .line 556
    .line 557
    .line 558
    const v4, 0x566df4ae

    .line 559
    const/4 v13, 0x1

    .line 560
    .line 561
    .line 562
    invoke-static {v3, v4, v13, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 563
    move-result-object v13

    .line 564
    .line 565
    const/high16 v15, 0x38000000

    .line 566
    .line 567
    const/16 v16, 0x0

    .line 568
    move-object v4, v5

    .line 569
    move v5, v6

    .line 570
    move v6, v7

    .line 571
    move v7, v12

    .line 572
    move-object v12, v0

    .line 573
    move-object v14, v3

    .line 574
    .line 575
    .line 576
    invoke-static/range {v4 .. v16}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->a(Ljava/lang/String;FFFFFFFLjava/util/List;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 577
    .line 578
    .line 579
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 580
    .line 581
    :goto_8
    move-object/from16 v0, p0

    .line 582
    .line 583
    move/from16 v1, p3

    .line 584
    move-object v15, v2

    .line 585
    .line 586
    goto/16 :goto_7

    .line 587
    .line 588
    :cond_c
    move-object/from16 v2, p1

    .line 589
    .line 590
    .line 591
    const v0, -0x1372ad0b

    .line 592
    .line 593
    .line 594
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 595
    .line 596
    .line 597
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 598
    goto :goto_8

    .line 599
    :cond_d
    move-object v2, v15

    .line 600
    .line 601
    .line 602
    :goto_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 603
    move-result-object v0

    .line 604
    .line 605
    if-nez v0, :cond_e

    .line 606
    goto :goto_a

    .line 607
    .line 608
    :cond_e
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;

    .line 609
    .line 610
    move-object/from16 v3, p0

    .line 611
    .line 612
    move/from16 v4, p3

    .line 613
    .line 614
    move/from16 v5, p4

    .line 615
    .line 616
    .line 617
    invoke-direct {v1, v3, v2, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;II)V

    .line 618
    .line 619
    .line 620
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 621
    :goto_a
    return-void
.end method

.method public static final b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 13
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "image"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p2, 0x544566b0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->c()F

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->b()F

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->i()F

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->h()F

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->d()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->g()J

    .line 35
    move-result-wide v5

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->f()I

    .line 39
    move-result v7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->a()Z

    .line 43
    move-result v8

    .line 44
    .line 45
    new-instance p2, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$3;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p0}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$3;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    .line 49
    .line 50
    .line 51
    const p0, 0x6fa7e78e

    .line 52
    const/4 v9, 0x1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p0, v9, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 56
    move-result-object v9

    .line 57
    .line 58
    const/high16 v11, 0x6000000

    .line 59
    const/4 v12, 0x0

    .line 60
    move-object v10, p1

    .line 61
    .line 62
    .line 63
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->c(FFFFLjava/lang/String;JIZLe8/r;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 68
    return-object p0
.end method

.method public static final c(FFFFLjava/lang/String;JIZLe8/r;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 15
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Le8/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableOpenTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/lang/String;",
            "JIZ",
            "Le8/r<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p10

    .line 3
    .line 4
    move/from16 v1, p12

    .line 5
    .line 6
    const-string v2, "content"

    .line 7
    .line 8
    move-object/from16 v3, p9

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x3fb166c2

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    and-int/lit8 v2, v1, 0x4

    .line 20
    .line 21
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    move/from16 v2, p2

    .line 28
    .line 29
    :goto_0
    and-int/lit8 v5, v1, 0x8

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    move/from16 v4, p3

    .line 35
    .line 36
    :goto_1
    and-int/lit8 v5, v1, 0x10

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    const-string v5, "VectorRootGroup"

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_2
    move-object/from16 v5, p4

    .line 44
    .line 45
    :goto_2
    and-int/lit8 v6, v1, 0x20

    .line 46
    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 53
    move-result-wide v6

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_3
    move-wide/from16 v6, p5

    .line 57
    .line 58
    :goto_3
    and-int/lit8 v8, v1, 0x40

    .line 59
    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    sget-object v8, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/BlendMode$Companion;->z()I

    .line 66
    move-result v8

    .line 67
    goto :goto_4

    .line 68
    .line 69
    :cond_4
    move/from16 v8, p7

    .line 70
    .line 71
    :goto_4
    and-int/lit16 v1, v1, 0x80

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    const/4 v1, 0x0

    .line 75
    goto :goto_5

    .line 76
    .line 77
    :cond_5
    move/from16 v1, p8

    .line 78
    .line 79
    .line 80
    :goto_5
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 81
    move-result-object v9

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 85
    move-result-object v9

    .line 86
    .line 87
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 88
    move v10, p0

    .line 89
    .line 90
    .line 91
    invoke-interface {v9, p0}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 92
    move-result v10

    .line 93
    .line 94
    move/from16 v11, p1

    .line 95
    .line 96
    .line 97
    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 98
    move-result v9

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 102
    move-result v11

    .line 103
    .line 104
    if-eqz v11, :cond_6

    .line 105
    move v2, v10

    .line 106
    .line 107
    .line 108
    :cond_6
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 109
    move-result v11

    .line 110
    .line 111
    if-eqz v11, :cond_7

    .line 112
    move v4, v9

    .line 113
    .line 114
    .line 115
    :cond_7
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 116
    move-result-object v11

    .line 117
    .line 118
    .line 119
    invoke-static {v8}, Landroidx/compose/ui/graphics/BlendMode;->D(I)Landroidx/compose/ui/graphics/BlendMode;

    .line 120
    move-result-object v12

    .line 121
    .line 122
    shr-int/lit8 v13, p11, 0xf

    .line 123
    .line 124
    .line 125
    const v14, 0x1e7b2b64

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 132
    move-result v11

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 136
    move-result v12

    .line 137
    or-int/2addr v11, v12

    .line 138
    .line 139
    .line 140
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 141
    move-result-object v12

    .line 142
    .line 143
    if-nez v11, :cond_8

    .line 144
    .line 145
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 149
    move-result-object v11

    .line 150
    .line 151
    if-ne v12, v11, :cond_a

    .line 152
    .line 153
    :cond_8
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 157
    move-result-wide v11

    .line 158
    .line 159
    .line 160
    invoke-static {v6, v7, v11, v12}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 161
    move-result v11

    .line 162
    .line 163
    if-nez v11, :cond_9

    .line 164
    .line 165
    sget-object v11, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11, v6, v7, v8}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(JI)Landroidx/compose/ui/graphics/ColorFilter;

    .line 169
    move-result-object v6

    .line 170
    :goto_6
    move-object v12, v6

    .line 171
    goto :goto_7

    .line 172
    :cond_9
    const/4 v6, 0x0

    .line 173
    goto :goto_6

    .line 174
    .line 175
    .line 176
    :goto_7
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_a
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 180
    .line 181
    check-cast v12, Landroidx/compose/ui/graphics/ColorFilter;

    .line 182
    .line 183
    .line 184
    const v6, -0x1d58f75c

    .line 185
    .line 186
    .line 187
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 188
    .line 189
    .line 190
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 191
    move-result-object v6

    .line 192
    .line 193
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 197
    move-result-object v7

    .line 198
    .line 199
    if-ne v6, v7, :cond_b

    .line 200
    .line 201
    new-instance v6, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 202
    .line 203
    .line 204
    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_b
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 211
    .line 212
    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 213
    .line 214
    .line 215
    invoke-static {v10, v9}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 216
    move-result-wide v7

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorPainter;->x(J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v1}, Landroidx/compose/ui/graphics/vector/VectorPainter;->u(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v12}, Landroidx/compose/ui/graphics/vector/VectorPainter;->w(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 226
    .line 227
    shr-int/lit8 v1, p11, 0xc

    .line 228
    .line 229
    and-int/lit8 v1, v1, 0xe

    .line 230
    .line 231
    .line 232
    const v7, 0x8000

    .line 233
    or-int/2addr v1, v7

    .line 234
    .line 235
    and-int/lit16 v7, v13, 0x1c00

    .line 236
    or-int/2addr v1, v7

    .line 237
    move-object p0, v6

    .line 238
    .line 239
    move-object/from16 p1, v5

    .line 240
    .line 241
    move/from16 p2, v2

    .line 242
    .line 243
    move/from16 p3, v4

    .line 244
    .line 245
    move-object/from16 p4, p9

    .line 246
    .line 247
    move-object/from16 p5, p10

    .line 248
    .line 249
    move/from16 p6, v1

    .line 250
    .line 251
    .line 252
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/graphics/vector/VectorPainter;->n(Ljava/lang/String;FFLe8/r;Landroidx/compose/runtime/Composer;I)V

    .line 253
    .line 254
    .line 255
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->Q()V

    .line 256
    return-object v6
.end method
