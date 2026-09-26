.class public final Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/RowColumnImplKt;->y(Landroidx/compose/foundation/layout/LayoutOrientation;Le8/s;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,937:1\n1#2:938\n*E\n"
.end annotation


# instance fields
.field final synthetic $arrangement:Le8/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/s<",
            "Ljava/lang/Integer;",
            "[I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/Density;",
            "[I",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $arrangementSpacing:F

.field final synthetic $crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field final synthetic $crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

.field final synthetic $orientation:Landroidx/compose/foundation/layout/LayoutOrientation;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/LayoutOrientation;FLandroidx/compose/foundation/layout/SizeMode;Le8/s;Landroidx/compose/foundation/layout/CrossAxisAlignment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "F",
            "Landroidx/compose/foundation/layout/SizeMode;",
            "Le8/s<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 3
    .line 4
    iput p2, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangement:Le8/s;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 31
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v13, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v1, "$this$measure"

    .line 9
    .line 10
    .line 11
    invoke-static {v13, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v1, "measurables"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    new-instance v1, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 19
    .line 20
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 21
    const/4 v10, 0x0

    .line 22
    .line 23
    move-wide/from16 v4, p3

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v4, v5, v3, v10}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(JLandroidx/compose/foundation/layout/LayoutOrientation;Lkotlin/jvm/internal/k;)V

    .line 27
    .line 28
    iget v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 29
    .line 30
    .line 31
    invoke-interface {v13, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 32
    move-result v11

    .line 33
    .line 34
    .line 35
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 36
    move-result v12

    .line 37
    .line 38
    new-array v14, v12, [Landroidx/compose/ui/layout/Placeable;

    .line 39
    .line 40
    .line 41
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 42
    move-result v15

    .line 43
    .line 44
    new-array v9, v15, [Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 45
    const/4 v8, 0x0

    .line 46
    move v3, v8

    .line 47
    .line 48
    :goto_0
    if-ge v3, v15, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 55
    .line 56
    .line 57
    invoke-static {v4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->j(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    aput-object v4, v9, v3

    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 67
    move-result v7

    .line 68
    .line 69
    const/16 v16, 0x0

    .line 70
    move v3, v8

    .line 71
    move v5, v3

    .line 72
    move v6, v5

    .line 73
    .line 74
    move/from16 v17, v6

    .line 75
    .line 76
    move/from16 v19, v17

    .line 77
    .line 78
    move/from16 v20, v19

    .line 79
    .line 80
    move/from16 v18, v16

    .line 81
    .line 82
    .line 83
    :goto_1
    const v4, 0x7fffffff

    .line 84
    .line 85
    const/16 v21, 0x1

    .line 86
    .line 87
    if-ge v6, v7, :cond_5

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v22

    .line 92
    .line 93
    move-object/from16 v10, v22

    .line 94
    .line 95
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 96
    .line 97
    aget-object v22, v9, v6

    .line 98
    .line 99
    .line 100
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnImplKt;->l(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 101
    move-result v23

    .line 102
    .line 103
    cmpl-float v24, v23, v16

    .line 104
    .line 105
    if-lez v24, :cond_1

    .line 106
    .line 107
    add-float v18, v18, v23

    .line 108
    .line 109
    add-int/lit8 v17, v17, 0x1

    .line 110
    .line 111
    move/from16 v23, v6

    .line 112
    .line 113
    move/from16 v24, v7

    .line 114
    .line 115
    move-object/from16 v25, v9

    .line 116
    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->e()I

    .line 121
    move-result v3

    .line 122
    .line 123
    const/16 v23, 0x0

    .line 124
    .line 125
    if-ne v3, v4, :cond_2

    .line 126
    .line 127
    :goto_2
    move/from16 v24, v4

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_2
    sub-int v4, v3, v19

    .line 131
    goto :goto_2

    .line 132
    .line 133
    :goto_3
    const/16 v25, 0x0

    .line 134
    .line 135
    const/16 v26, 0x0

    .line 136
    .line 137
    const/16 v27, 0x8

    .line 138
    .line 139
    const/16 v28, 0x0

    .line 140
    .line 141
    move/from16 v29, v3

    .line 142
    move-object v3, v1

    .line 143
    .line 144
    move/from16 v4, v23

    .line 145
    .line 146
    move/from16 v30, v5

    .line 147
    .line 148
    move/from16 v5, v24

    .line 149
    .line 150
    move/from16 v23, v6

    .line 151
    .line 152
    move/from16 v6, v25

    .line 153
    .line 154
    move/from16 v24, v7

    .line 155
    .line 156
    move/from16 v7, v26

    .line 157
    .line 158
    move/from16 v8, v27

    .line 159
    .line 160
    move-object/from16 v25, v9

    .line 161
    .line 162
    move-object/from16 v9, v28

    .line 163
    .line 164
    .line 165
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->b(Landroidx/compose/foundation/layout/OrientationIndependentConstraints;IIIIILjava/lang/Object;)Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    iget-object v4, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->g(Landroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 172
    move-result-wide v3

    .line 173
    .line 174
    .line 175
    invoke-interface {v10, v3, v4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 176
    move-result-object v3

    .line 177
    .line 178
    sub-int v4, v29, v19

    .line 179
    .line 180
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 181
    .line 182
    .line 183
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->p(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 184
    move-result v5

    .line 185
    sub-int/2addr v4, v5

    .line 186
    .line 187
    .line 188
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    .line 189
    move-result v4

    .line 190
    .line 191
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 192
    .line 193
    .line 194
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->p(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 195
    move-result v5

    .line 196
    add-int/2addr v5, v4

    .line 197
    .line 198
    add-int v19, v19, v5

    .line 199
    .line 200
    iget-object v5, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 201
    .line 202
    .line 203
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->o(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 204
    move-result v5

    .line 205
    .line 206
    move/from16 v8, v30

    .line 207
    .line 208
    .line 209
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 210
    move-result v5

    .line 211
    .line 212
    if-nez v20, :cond_4

    .line 213
    .line 214
    .line 215
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/layout/RowColumnImplKt;->n(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 216
    move-result v6

    .line 217
    .line 218
    if-eqz v6, :cond_3

    .line 219
    goto :goto_4

    .line 220
    :cond_3
    const/4 v8, 0x0

    .line 221
    goto :goto_5

    .line 222
    .line 223
    :cond_4
    :goto_4
    move/from16 v8, v21

    .line 224
    .line 225
    :goto_5
    aput-object v3, v14, v23

    .line 226
    move v3, v4

    .line 227
    .line 228
    move/from16 v20, v8

    .line 229
    .line 230
    :goto_6
    add-int/lit8 v6, v23, 0x1

    .line 231
    .line 232
    move/from16 v7, v24

    .line 233
    .line 234
    move-object/from16 v9, v25

    .line 235
    const/4 v8, 0x0

    .line 236
    const/4 v10, 0x0

    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    :cond_5
    move v8, v5

    .line 240
    .line 241
    move-object/from16 v25, v9

    .line 242
    .line 243
    if-nez v17, :cond_6

    .line 244
    .line 245
    sub-int v19, v19, v3

    .line 246
    move v5, v8

    .line 247
    const/4 v8, 0x0

    .line 248
    .line 249
    goto/16 :goto_f

    .line 250
    .line 251
    :cond_6
    cmpl-float v3, v18, v16

    .line 252
    .line 253
    if-lez v3, :cond_7

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->e()I

    .line 257
    move-result v5

    .line 258
    .line 259
    if-eq v5, v4, :cond_7

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->e()I

    .line 263
    move-result v5

    .line 264
    goto :goto_7

    .line 265
    .line 266
    .line 267
    :cond_7
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->f()I

    .line 268
    move-result v5

    .line 269
    .line 270
    :goto_7
    sub-int v5, v5, v19

    .line 271
    .line 272
    add-int/lit8 v17, v17, -0x1

    .line 273
    .line 274
    mul-int v11, v11, v17

    .line 275
    sub-int/2addr v5, v11

    .line 276
    .line 277
    if-lez v3, :cond_8

    .line 278
    int-to-float v3, v5

    .line 279
    .line 280
    div-float v3, v3, v18

    .line 281
    goto :goto_8

    .line 282
    .line 283
    :cond_8
    move/from16 v3, v16

    .line 284
    :goto_8
    const/4 v6, 0x0

    .line 285
    const/4 v7, 0x0

    .line 286
    .line 287
    :goto_9
    if-ge v6, v15, :cond_9

    .line 288
    .line 289
    aget-object v9, v25, v6

    .line 290
    .line 291
    .line 292
    invoke-static {v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->l(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 293
    move-result v9

    .line 294
    mul-float/2addr v9, v3

    .line 295
    .line 296
    .line 297
    invoke-static {v9}, Lg8/a;->c(F)I

    .line 298
    move-result v9

    .line 299
    add-int/2addr v7, v9

    .line 300
    .line 301
    add-int/lit8 v6, v6, 0x1

    .line 302
    goto :goto_9

    .line 303
    :cond_9
    sub-int/2addr v5, v7

    .line 304
    .line 305
    .line 306
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 307
    move-result v6

    .line 308
    move v7, v5

    .line 309
    move v5, v8

    .line 310
    const/4 v8, 0x0

    .line 311
    const/4 v9, 0x0

    .line 312
    .line 313
    :goto_a
    if-ge v8, v6, :cond_f

    .line 314
    .line 315
    aget-object v10, v14, v8

    .line 316
    .line 317
    if-nez v10, :cond_e

    .line 318
    .line 319
    .line 320
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    move-result-object v10

    .line 322
    .line 323
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 324
    .line 325
    aget-object v15, v25, v8

    .line 326
    .line 327
    .line 328
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->l(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 329
    move-result v17

    .line 330
    .line 331
    cmpl-float v18, v17, v16

    .line 332
    .line 333
    if-lez v18, :cond_d

    .line 334
    .line 335
    .line 336
    invoke-static {v7}, Lg8/a;->a(I)I

    .line 337
    move-result v18

    .line 338
    .line 339
    sub-int v7, v7, v18

    .line 340
    .line 341
    mul-float v17, v17, v3

    .line 342
    .line 343
    .line 344
    invoke-static/range {v17 .. v17}, Lg8/a;->c(F)I

    .line 345
    move-result v17

    .line 346
    .line 347
    add-int v4, v17, v18

    .line 348
    const/4 v2, 0x0

    .line 349
    .line 350
    .line 351
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 352
    move-result v4

    .line 353
    .line 354
    new-instance v2, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;

    .line 355
    .line 356
    .line 357
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->k(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 358
    move-result v17

    .line 359
    .line 360
    move/from16 p4, v3

    .line 361
    .line 362
    if-eqz v17, :cond_a

    .line 363
    .line 364
    .line 365
    const v3, 0x7fffffff

    .line 366
    .line 367
    if-eq v4, v3, :cond_a

    .line 368
    move v3, v4

    .line 369
    .line 370
    move/from16 v17, v6

    .line 371
    goto :goto_b

    .line 372
    .line 373
    :cond_a
    move/from16 v17, v6

    .line 374
    const/4 v3, 0x0

    .line 375
    .line 376
    .line 377
    :goto_b
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->c()I

    .line 378
    move-result v6

    .line 379
    .line 380
    move/from16 v18, v7

    .line 381
    const/4 v7, 0x0

    .line 382
    .line 383
    .line 384
    invoke-direct {v2, v3, v4, v7, v6}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;-><init>(IIII)V

    .line 385
    .line 386
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->g(Landroidx/compose/foundation/layout/LayoutOrientation;)J

    .line 390
    move-result-wide v2

    .line 391
    .line 392
    .line 393
    invoke-interface {v10, v2, v3}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 394
    move-result-object v2

    .line 395
    .line 396
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 397
    .line 398
    .line 399
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->p(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 400
    move-result v3

    .line 401
    add-int/2addr v9, v3

    .line 402
    .line 403
    iget-object v3, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 404
    .line 405
    .line 406
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/RowColumnImplKt;->o(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 407
    move-result v3

    .line 408
    .line 409
    .line 410
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 411
    move-result v3

    .line 412
    .line 413
    if-nez v20, :cond_c

    .line 414
    .line 415
    .line 416
    invoke-static {v15}, Landroidx/compose/foundation/layout/RowColumnImplKt;->n(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 417
    move-result v4

    .line 418
    .line 419
    if-eqz v4, :cond_b

    .line 420
    goto :goto_c

    .line 421
    :cond_b
    const/4 v4, 0x0

    .line 422
    goto :goto_d

    .line 423
    .line 424
    :cond_c
    :goto_c
    move/from16 v4, v21

    .line 425
    .line 426
    :goto_d
    aput-object v2, v14, v8

    .line 427
    move v5, v3

    .line 428
    .line 429
    move/from16 v20, v4

    .line 430
    .line 431
    move/from16 v7, v18

    .line 432
    goto :goto_e

    .line 433
    .line 434
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 435
    .line 436
    const-string v2, "All weights <= 0 should have placeables"

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 440
    move-result-object v2

    .line 441
    .line 442
    .line 443
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 444
    throw v1

    .line 445
    .line 446
    :cond_e
    move/from16 p4, v3

    .line 447
    .line 448
    move/from16 v17, v6

    .line 449
    .line 450
    :goto_e
    add-int/lit8 v8, v8, 0x1

    .line 451
    .line 452
    move-object/from16 v2, p2

    .line 453
    .line 454
    move/from16 v3, p4

    .line 455
    .line 456
    move/from16 v6, v17

    .line 457
    .line 458
    .line 459
    const v4, 0x7fffffff

    .line 460
    .line 461
    goto/16 :goto_a

    .line 462
    :cond_f
    add-int/2addr v9, v11

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->e()I

    .line 466
    move-result v2

    .line 467
    .line 468
    sub-int v2, v2, v19

    .line 469
    .line 470
    .line 471
    invoke-static {v9, v2}, Lj8/m;->j(II)I

    .line 472
    move-result v8

    .line 473
    .line 474
    :goto_f
    new-instance v15, Lkotlin/jvm/internal/n0;

    .line 475
    .line 476
    .line 477
    invoke-direct {v15}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 478
    .line 479
    if-eqz v20, :cond_14

    .line 480
    const/4 v2, 0x0

    .line 481
    const/4 v3, 0x0

    .line 482
    .line 483
    :goto_10
    if-ge v2, v12, :cond_15

    .line 484
    .line 485
    aget-object v4, v14, v2

    .line 486
    .line 487
    .line 488
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 489
    .line 490
    aget-object v6, v25, v2

    .line 491
    .line 492
    .line 493
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->i(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 494
    move-result-object v6

    .line 495
    .line 496
    if-eqz v6, :cond_10

    .line 497
    .line 498
    .line 499
    invoke-virtual {v6, v4}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->b(Landroidx/compose/ui/layout/Placeable;)Ljava/lang/Integer;

    .line 500
    move-result-object v6

    .line 501
    goto :goto_11

    .line 502
    :cond_10
    const/4 v6, 0x0

    .line 503
    .line 504
    :goto_11
    if-eqz v6, :cond_13

    .line 505
    .line 506
    iget v7, v15, Lkotlin/jvm/internal/n0;->element:I

    .line 507
    .line 508
    .line 509
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 510
    move-result v9

    .line 511
    .line 512
    const/high16 v10, -0x80000000

    .line 513
    .line 514
    if-eq v9, v10, :cond_11

    .line 515
    goto :goto_12

    .line 516
    :cond_11
    const/4 v9, 0x0

    .line 517
    .line 518
    .line 519
    :goto_12
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 520
    move-result v7

    .line 521
    .line 522
    iput v7, v15, Lkotlin/jvm/internal/n0;->element:I

    .line 523
    .line 524
    iget-object v7, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 525
    .line 526
    .line 527
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->o(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 528
    move-result v7

    .line 529
    .line 530
    iget-object v9, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 534
    move-result v6

    .line 535
    .line 536
    if-eq v6, v10, :cond_12

    .line 537
    goto :goto_13

    .line 538
    .line 539
    .line 540
    :cond_12
    invoke-static {v4, v9}, Landroidx/compose/foundation/layout/RowColumnImplKt;->o(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 541
    move-result v6

    .line 542
    :goto_13
    sub-int/2addr v7, v6

    .line 543
    .line 544
    .line 545
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 546
    move-result v3

    .line 547
    .line 548
    :cond_13
    add-int/lit8 v2, v2, 0x1

    .line 549
    goto :goto_10

    .line 550
    :cond_14
    const/4 v3, 0x0

    .line 551
    .line 552
    :cond_15
    add-int v2, v19, v8

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->f()I

    .line 556
    move-result v4

    .line 557
    .line 558
    .line 559
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 560
    move-result v6

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->c()I

    .line 564
    move-result v2

    .line 565
    .line 566
    .line 567
    const v4, 0x7fffffff

    .line 568
    .line 569
    if-eq v2, v4, :cond_16

    .line 570
    .line 571
    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisSize:Landroidx/compose/foundation/layout/SizeMode;

    .line 572
    .line 573
    sget-object v4, Landroidx/compose/foundation/layout/SizeMode;->Expand:Landroidx/compose/foundation/layout/SizeMode;

    .line 574
    .line 575
    if-ne v2, v4, :cond_16

    .line 576
    .line 577
    .line 578
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->c()I

    .line 579
    move-result v1

    .line 580
    :goto_14
    move v11, v1

    .line 581
    goto :goto_15

    .line 582
    .line 583
    .line 584
    :cond_16
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->d()I

    .line 585
    move-result v1

    .line 586
    .line 587
    iget v2, v15, Lkotlin/jvm/internal/n0;->element:I

    .line 588
    add-int/2addr v2, v3

    .line 589
    .line 590
    .line 591
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 592
    move-result v1

    .line 593
    .line 594
    .line 595
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 596
    move-result v1

    .line 597
    goto :goto_14

    .line 598
    .line 599
    :goto_15
    iget-object v1, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 600
    .line 601
    sget-object v2, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 602
    .line 603
    if-ne v1, v2, :cond_17

    .line 604
    .line 605
    move/from16 v16, v6

    .line 606
    goto :goto_16

    .line 607
    .line 608
    :cond_17
    move/from16 v16, v11

    .line 609
    .line 610
    :goto_16
    if-ne v1, v2, :cond_18

    .line 611
    .line 612
    move/from16 v17, v11

    .line 613
    goto :goto_17

    .line 614
    .line 615
    :cond_18
    move/from16 v17, v6

    .line 616
    .line 617
    .line 618
    :goto_17
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 619
    move-result v1

    .line 620
    .line 621
    new-array v7, v1, [I

    .line 622
    const/4 v8, 0x0

    .line 623
    .line 624
    :goto_18
    if-ge v8, v1, :cond_19

    .line 625
    const/4 v2, 0x0

    .line 626
    .line 627
    aput v2, v7, v8

    .line 628
    .line 629
    add-int/lit8 v8, v8, 0x1

    .line 630
    goto :goto_18

    .line 631
    .line 632
    :cond_19
    const/16 v18, 0x0

    .line 633
    .line 634
    new-instance v19, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;

    .line 635
    .line 636
    iget-object v4, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangement:Le8/s;

    .line 637
    .line 638
    iget-object v8, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 639
    .line 640
    iget-object v10, v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 641
    .line 642
    move-object/from16 v1, v19

    .line 643
    .line 644
    move-object/from16 v2, p2

    .line 645
    move-object v3, v14

    .line 646
    move v5, v6

    .line 647
    .line 648
    move-object/from16 v6, p1

    .line 649
    .line 650
    move-object/from16 v9, v25

    .line 651
    move-object v12, v15

    .line 652
    .line 653
    .line 654
    invoke-direct/range {v1 .. v12}, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4;-><init>(Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;Le8/s;ILandroidx/compose/ui/layout/MeasureScope;[ILandroidx/compose/foundation/layout/LayoutOrientation;[Landroidx/compose/foundation/layout/RowColumnParentData;Landroidx/compose/foundation/layout/CrossAxisAlignment;ILkotlin/jvm/internal/n0;)V

    .line 655
    const/4 v6, 0x4

    .line 656
    const/4 v7, 0x0

    .line 657
    .line 658
    move-object/from16 v1, p1

    .line 659
    .line 660
    move/from16 v2, v16

    .line 661
    .line 662
    move/from16 v3, v17

    .line 663
    .line 664
    move-object/from16 v4, v18

    .line 665
    .line 666
    move-object/from16 v5, v19

    .line 667
    .line 668
    .line 669
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 670
    move-result-object v1

    .line 671
    return-object v1
.end method

.method public b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->g(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p2, p3, p1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->h(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p2, p3, p1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->e(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p2, p3, p1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$orientation:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->f(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p3

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;->$arrangementSpacing:F

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p2, p3, p1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Number;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 40
    move-result p1

    .line 41
    return p1
.end method
