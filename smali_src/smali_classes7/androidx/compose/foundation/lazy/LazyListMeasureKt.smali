.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n+ 2 DataIndex.kt\nandroidx/compose/foundation/lazy/DataIndex\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n*L\n1#1,406:1\n30#2:407\n25#2:412\n27#2:414\n25#2:415\n30#2:416\n32#3,4:408\n37#3:413\n32#3,4:420\n37#3:426\n32#3,6:428\n32#3,6:434\n32#3,6:440\n35#4,3:417\n38#4,2:424\n40#4:427\n*S KotlinDebug\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n*L\n117#1:407\n141#1:412\n156#1:414\n163#1:415\n173#1:416\n140#1:408,4\n140#1:413\n311#1:420,4\n311#1:426\n388#1:428,6\n394#1:434,6\n399#1:440,6\n311#1:417,3\n311#1:424,2\n311#1:427\n*E\n"
.end annotation


# direct methods
.method private static final a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p9

    .line 8
    .line 9
    move/from16 v4, p11

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    if-eqz p8, :cond_0

    .line 14
    move v6, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v6, v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v5

    .line 21
    const/4 v7, 0x0

    .line 22
    .line 23
    move/from16 v8, p5

    .line 24
    .line 25
    if-ge v8, v5, :cond_1

    .line 26
    const/4 v5, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v5, v7

    .line 29
    .line 30
    :goto_1
    if-eqz v5, :cond_3

    .line 31
    .line 32
    if-nez p7, :cond_2

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "Check failed."

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0

    .line 46
    .line 47
    :cond_3
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 51
    move-result v9

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    move-result v10

    .line 56
    add-int/2addr v9, v10

    .line 57
    .line 58
    .line 59
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 60
    move-result v10

    .line 61
    add-int/2addr v9, v10

    .line 62
    .line 63
    .line 64
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    if-eqz v5, :cond_e

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 70
    move-result v5

    .line 71
    .line 72
    if-eqz v5, :cond_d

    .line 73
    .line 74
    .line 75
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 76
    move-result v5

    .line 77
    .line 78
    if-eqz v5, :cond_d

    .line 79
    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 82
    move-result v5

    .line 83
    .line 84
    new-array v9, v5, [I

    .line 85
    move v10, v7

    .line 86
    .line 87
    :goto_3
    if-ge v10, v5, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->b(IZI)I

    .line 91
    move-result v11

    .line 92
    .line 93
    .line 94
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v11

    .line 96
    .line 97
    check-cast v11, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->d()I

    .line 101
    move-result v11

    .line 102
    .line 103
    aput v11, v9, v10

    .line 104
    .line 105
    add-int/lit8 v10, v10, 0x1

    .line 106
    goto :goto_3

    .line 107
    .line 108
    :cond_4
    new-array v10, v5, [I

    .line 109
    move v11, v7

    .line 110
    .line 111
    :goto_4
    if-ge v11, v5, :cond_5

    .line 112
    .line 113
    aput v7, v10, v11

    .line 114
    .line 115
    add-int/lit8 v11, v11, 0x1

    .line 116
    goto :goto_4

    .line 117
    .line 118
    :cond_5
    const-string v7, "Required value was null."

    .line 119
    .line 120
    if-eqz p8, :cond_7

    .line 121
    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    move-object/from16 v11, p12

    .line 125
    .line 126
    .line 127
    invoke-interface {v3, v11, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->c(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 128
    goto :goto_5

    .line 129
    .line 130
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0

    .line 139
    .line 140
    :cond_7
    move-object/from16 v11, p12

    .line 141
    .line 142
    if-eqz p10, :cond_c

    .line 143
    .line 144
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 145
    .line 146
    move-object/from16 p5, p10

    .line 147
    .line 148
    move-object/from16 p6, p12

    .line 149
    .line 150
    move/from16 p7, v6

    .line 151
    .line 152
    move-object/from16 p8, v9

    .line 153
    .line 154
    move-object/from16 p9, v3

    .line 155
    .line 156
    move-object/from16 p10, v10

    .line 157
    .line 158
    .line 159
    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->b(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 160
    .line 161
    .line 162
    :goto_5
    invoke-static {v10}, Lkotlin/collections/l;->O([I)Lj8/i;

    .line 163
    move-result-object v3

    .line 164
    .line 165
    if-nez v4, :cond_8

    .line 166
    goto :goto_6

    .line 167
    .line 168
    .line 169
    :cond_8
    invoke-static {v3}, Lj8/m;->t(Lj8/g;)Lj8/g;

    .line 170
    move-result-object v3

    .line 171
    .line 172
    .line 173
    :goto_6
    invoke-virtual {v3}, Lj8/g;->e()I

    .line 174
    move-result v7

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Lj8/g;->f()I

    .line 178
    move-result v9

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Lj8/g;->g()I

    .line 182
    move-result v3

    .line 183
    .line 184
    if-lez v3, :cond_9

    .line 185
    .line 186
    if-le v7, v9, :cond_a

    .line 187
    .line 188
    :cond_9
    if-gez v3, :cond_11

    .line 189
    .line 190
    if-gt v9, v7, :cond_11

    .line 191
    .line 192
    :cond_a
    :goto_7
    aget v11, v10, v7

    .line 193
    .line 194
    .line 195
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->b(IZI)I

    .line 196
    move-result v12

    .line 197
    .line 198
    .line 199
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v12

    .line 201
    .line 202
    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 203
    .line 204
    if-eqz v4, :cond_b

    .line 205
    .line 206
    sub-int v11, v6, v11

    .line 207
    .line 208
    .line 209
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->d()I

    .line 210
    move-result v13

    .line 211
    sub-int/2addr v11, v13

    .line 212
    .line 213
    .line 214
    :cond_b
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->f(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 215
    move-result-object v11

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    if-eq v7, v9, :cond_11

    .line 221
    add-int/2addr v7, v3

    .line 222
    goto :goto_7

    .line 223
    .line 224
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    .line 231
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    throw v0

    .line 233
    .line 234
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 235
    .line 236
    const-string v1, "Failed requirement."

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 244
    throw v0

    .line 245
    .line 246
    .line 247
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 248
    move-result v3

    .line 249
    .line 250
    move/from16 v5, p7

    .line 251
    move v4, v7

    .line 252
    .line 253
    :goto_8
    if-ge v4, v3, :cond_f

    .line 254
    move-object v6, p1

    .line 255
    .line 256
    .line 257
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    move-result-object v9

    .line 259
    .line 260
    check-cast v9, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    .line 264
    move-result v10

    .line 265
    sub-int/2addr v5, v10

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9, v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->f(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 269
    move-result-object v9

    .line 270
    .line 271
    .line 272
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    add-int/lit8 v4, v4, 0x1

    .line 275
    goto :goto_8

    .line 276
    .line 277
    .line 278
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 279
    move-result v3

    .line 280
    .line 281
    move/from16 v4, p7

    .line 282
    move v5, v7

    .line 283
    .line 284
    :goto_9
    if-ge v5, v3, :cond_10

    .line 285
    .line 286
    .line 287
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    move-result-object v6

    .line 289
    .line 290
    check-cast v6, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->f(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 294
    move-result-object v9

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    .line 301
    move-result v6

    .line 302
    add-int/2addr v4, v6

    .line 303
    .line 304
    add-int/lit8 v5, v5, 0x1

    .line 305
    goto :goto_9

    .line 306
    .line 307
    .line 308
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 309
    move-result v0

    .line 310
    .line 311
    :goto_a
    if-ge v7, v0, :cond_11

    .line 312
    .line 313
    move-object/from16 v3, p2

    .line 314
    .line 315
    .line 316
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    move-result-object v5

    .line 318
    .line 319
    check-cast v5, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->f(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 323
    move-result-object v6

    .line 324
    .line 325
    .line 326
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    .line 330
    move-result v5

    .line 331
    add-int/2addr v4, v5

    .line 332
    .line 333
    add-int/lit8 v7, v7, 0x1

    .line 334
    goto :goto_a

    .line 335
    :cond_11
    return-object v8
.end method

.method private static final b(IZI)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method public static final c(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Le8/q;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 32
    .param p1    # Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "IIIIIFJZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "Le8/q<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lw7/l0;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v9, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v3, p3

    move-wide/from16 v0, p8

    move-object/from16 v2, p11

    move-object/from16 v4, p17

    move-object/from16 v8, p18

    const-string v5, "itemProvider"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headerIndexes"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "density"

    move-object/from16 v15, p15

    invoke-static {v15, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "placementAnimator"

    move-object/from16 v14, p16

    invoke-static {v14, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "beyondBoundsInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "layout"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "Failed requirement."

    if-ltz v3, :cond_22

    if-ltz p4, :cond_21

    if-gtz v9, :cond_1

    .line 1
    new-instance v13, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;

    invoke-interface {v8, v9, v0, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v9

    neg-int v10, v3

    add-int v11, v7, p4

    const/4 v12, 0x0

    if-eqz p10, :cond_0

    .line 4
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object v14, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :goto_1
    move-object v0, v13

    move-object v1, v2

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v8

    move-object v6, v9

    move v7, v10

    move v8, v11

    move v9, v12

    move/from16 v10, p14

    move-object v11, v14

    move/from16 v12, p4

    .line 5
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    :cond_1
    const/4 v5, 0x0

    move/from16 v10, p5

    if-lt v10, v9, :cond_2

    add-int/lit8 v10, v9, -0x1

    .line 6
    invoke-static {v10}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v10

    move v11, v5

    goto :goto_2

    :cond_2
    move/from16 v11, p6

    .line 7
    :goto_2
    invoke-static/range {p7 .. p7}, Lg8/a;->c(F)I

    move-result v12

    sub-int/2addr v11, v12

    .line 8
    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v13

    invoke-static {v10, v13}, Landroidx/compose/foundation/lazy/DataIndex;->d(II)Z

    move-result v13

    if-eqz v13, :cond_3

    if-gez v11, :cond_3

    add-int/2addr v12, v11

    move v11, v5

    .line 9
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sub-int/2addr v11, v3

    neg-int v5, v3

    const/4 v14, 0x0

    :goto_3
    if-gez v11, :cond_4

    const/16 p5, 0x0

    .line 10
    invoke-static/range {p5 .. p5}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v16

    sub-int v16, v10, v16

    if-lez v16, :cond_4

    add-int/lit8 v10, v10, -0x1

    .line 11
    invoke-static {v10}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v10

    .line 12
    invoke-virtual {v6, v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->a(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v15

    move/from16 p6, v10

    move/from16 v10, p5

    .line 13
    invoke-interface {v13, v10, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->a()I

    move-result v10

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 15
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    move-result v10

    add-int/2addr v11, v10

    move/from16 v10, p6

    move-object/from16 v15, p15

    goto :goto_3

    :cond_4
    if-ge v11, v5, :cond_5

    add-int/2addr v12, v11

    move v11, v5

    :cond_5
    add-int/2addr v11, v3

    add-int v15, v7, p4

    move/from16 p5, v10

    move/from16 v16, v14

    const/4 v10, 0x0

    .line 16
    invoke-static {v15, v10}, Lj8/m;->e(II)I

    move-result v14

    neg-int v10, v11

    move/from16 v17, v10

    .line 17
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v18, p5

    move/from16 p6, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_6

    .line 18
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 19
    check-cast v19, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    add-int/lit8 v18, v18, 0x1

    .line 20
    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v18

    .line 21
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    move-result v19

    add-int v17, v17, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move/from16 v10, p6

    move/from16 p6, v15

    move/from16 v11, v16

    move/from16 v15, v17

    move/from16 v8, v18

    :goto_5
    if-le v15, v14, :cond_8

    .line 22
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v24, v5

    goto :goto_8

    :cond_8
    :goto_6
    if-ge v8, v9, :cond_7

    move/from16 v16, v14

    .line 23
    invoke-virtual {v6, v8}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->a(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    .line 24
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    move-result v17

    add-int v15, v15, v17

    if-gt v15, v5, :cond_9

    move/from16 v24, v5

    add-int/lit8 v5, v9, -0x1

    if-eq v8, v5, :cond_a

    add-int/lit8 v5, v8, 0x1

    .line 25
    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v5

    .line 26
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    move-result v14

    sub-int/2addr v10, v14

    goto :goto_7

    :cond_9
    move/from16 v24, v5

    .line 27
    :cond_a
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->a()I

    move-result v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 28
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v5

    move/from16 v5, p5

    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 29
    invoke-static {v8}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v8

    move/from16 p5, v5

    move/from16 v14, v16

    move/from16 v5, v24

    goto :goto_5

    :goto_8
    if-ge v15, v7, :cond_d

    sub-int v5, v7, v15

    sub-int/2addr v10, v5

    add-int/2addr v15, v5

    move v8, v11

    move/from16 v11, p5

    :goto_9
    if-ge v10, v3, :cond_b

    const/4 v14, 0x0

    .line 30
    invoke-static {v14}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v16

    sub-int v16, v11, v16

    if-lez v16, :cond_b

    add-int/lit8 v11, v11, -0x1

    .line 31
    invoke-static {v11}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v11

    .line 32
    invoke-virtual {v6, v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->a(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v7

    .line 33
    invoke-interface {v13, v14, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->a()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 35
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    move-result v7

    add-int/2addr v10, v7

    move/from16 v7, p2

    goto :goto_9

    :cond_b
    add-int/2addr v12, v5

    if-gez v10, :cond_c

    add-int/2addr v12, v10

    add-int/2addr v15, v10

    move v11, v8

    move v7, v15

    const/4 v10, 0x0

    goto :goto_a

    :cond_c
    move v11, v8

    :cond_d
    move v7, v15

    .line 36
    :goto_a
    invoke-static/range {p7 .. p7}, Lg8/a;->c(F)I

    move-result v5

    invoke-static {v5}, Lg8/a;->a(I)I

    move-result v5

    invoke-static {v12}, Lg8/a;->a(I)I

    move-result v8

    if-ne v5, v8, :cond_e

    .line 37
    invoke-static/range {p7 .. p7}, Lg8/a;->c(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v5, v8, :cond_e

    int-to-float v5, v12

    move v8, v5

    goto :goto_b

    :cond_e
    move/from16 v8, p7

    :goto_b
    neg-int v5, v10

    .line 38
    invoke-static {v13}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    if-lez v3, :cond_11

    .line 39
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object v15, v12

    move v12, v10

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v14, :cond_f

    .line 40
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->e()I

    move-result v3

    if-eqz v12, :cond_f

    if-gt v3, v12, :cond_f

    move/from16 p5, v11

    .line 41
    invoke-static {v13}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    move-result v11

    if-eq v10, v11, :cond_10

    sub-int/2addr v12, v3

    add-int/lit8 v10, v10, 0x1

    .line 42
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move/from16 v3, p3

    move/from16 v11, p5

    goto :goto_c

    :cond_f
    move/from16 p5, v11

    :cond_10
    move/from16 v25, v12

    move-object v3, v15

    goto :goto_d

    :cond_11
    move/from16 p5, v11

    move/from16 v25, v10

    move-object v3, v12

    .line 43
    :goto_d
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->d()Z

    move-result v10

    const/16 v26, 0x1

    if-eqz v10, :cond_13

    .line 44
    invoke-static {v13}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    move-result v10

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->e(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v11

    if-le v10, v11, :cond_13

    .line 45
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-static {v13}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->e(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v12

    if-gt v12, v11, :cond_12

    .line 47
    :goto_e
    invoke-static {v11}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->a(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v11, v12, :cond_12

    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    .line 48
    :cond_12
    sget-object v11, Lw7/l0;->INSTANCE:Lw7/l0;

    :goto_f
    move-object v11, v10

    goto :goto_10

    .line 49
    :cond_13
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v10

    goto :goto_f

    .line 50
    :goto_10
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->d()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 51
    invoke-static {v13}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    move-result v10

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->d(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v12

    if-ge v10, v12, :cond_15

    .line 52
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {v13}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    move-result v12

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->d(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v4

    :goto_11
    if-ge v12, v4, :cond_14

    add-int/lit8 v12, v12, 0x1

    .line 54
    invoke-static {v12}, Landroidx/compose/foundation/lazy/DataIndex;->b(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->a(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 55
    :cond_14
    sget-object v4, Lw7/l0;->INSTANCE:Lw7/l0;

    move-object v12, v10

    goto :goto_12

    .line 56
    :cond_15
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    .line 57
    :goto_12
    invoke-static {v13}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 58
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 59
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    move/from16 v27, v26

    goto :goto_13

    :cond_16
    const/16 v27, 0x0

    :goto_13
    if-eqz p10, :cond_17

    move/from16 v4, p5

    goto :goto_14

    :cond_17
    move v4, v7

    .line 60
    :goto_14
    invoke-static {v0, v1, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    move-result v28

    if-eqz p10, :cond_18

    move v4, v7

    goto :goto_15

    :cond_18
    move/from16 v4, p5

    .line 61
    :goto_15
    invoke-static {v0, v1, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    move-result v29

    move-object v10, v13

    move-object/from16 v30, v13

    move/from16 v13, v28

    const/16 v23, 0x0

    move/from16 v14, v29

    move/from16 v31, p6

    move v15, v7

    move/from16 v16, p2

    move/from16 v17, v5

    move/from16 v18, p10

    move-object/from16 v19, p12

    move-object/from16 v20, p13

    move/from16 v21, p14

    move-object/from16 v22, p15

    .line 62
    invoke-static/range {v10 .. v22}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v10

    .line 63
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    move-object v15, v3

    move/from16 v3, p3

    move/from16 v4, v28

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v5, v29

    .line 64
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListHeadersKt;->a(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v0

    :goto_16
    move-object v13, v0

    goto :goto_17

    :cond_19
    move-object v15, v3

    move/from16 v11, v23

    move/from16 v12, v24

    const/4 v0, 0x0

    goto :goto_16

    :goto_17
    float-to-int v1, v8

    move-object/from16 v0, p16

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, p14

    move-object v5, v10

    move-object/from16 v6, p1

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->e(IIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;)V

    move/from16 v0, p2

    if-le v7, v0, :cond_1a

    move/from16 v3, v26

    goto :goto_18

    :cond_1a
    move v3, v11

    .line 66
    :goto_18
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    invoke-direct {v2, v10, v13}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListPositionedItem;)V

    move-object/from16 v4, p18

    invoke-interface {v4, v0, v1, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v27, :cond_1b

    move-object v6, v10

    goto :goto_1a

    .line 67
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    :goto_19
    if-ge v11, v1, :cond_1f

    .line 69
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 70
    move-object v4, v2

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 71
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v6

    invoke-static/range {v30 .. v30}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    move-result v7

    if-lt v6, v7, :cond_1c

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v6

    invoke-static/range {v30 .. v30}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->b()I

    move-result v7

    if-le v6, v7, :cond_1d

    :cond_1c
    if-ne v4, v13, :cond_1e

    :cond_1d
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    :cond_1f
    move-object v6, v0

    :goto_1a
    if-eqz p10, :cond_20

    .line 72
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1b
    move-object v11, v0

    goto :goto_1c

    :cond_20
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1b

    .line 73
    :goto_1c
    new-instance v13, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object v0, v13

    move-object v1, v15

    move/from16 v2, v25

    move v4, v8

    move v7, v12

    move/from16 v8, v31

    move/from16 v9, p0

    move/from16 v10, p14

    move/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    .line 74
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final d(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->b()I

    .line 4
    move-result p0

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final e(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->c()I

    .line 4
    move-result p0

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method
