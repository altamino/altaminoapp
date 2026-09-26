.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n+ 2 ItemIndex.kt\nandroidx/compose/foundation/lazy/grid/LineIndex\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,338:1\n30#2:339\n25#2:344\n26#2:346\n27#2:347\n25#2:348\n30#2:349\n32#3,4:340\n37#3:345\n108#3,3:350\n32#3,4:353\n111#3,2:357\n37#3:359\n113#3:360\n32#3,6:361\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n*L\n110#1:339\n133#1:344\n143#1:346\n151#1:347\n156#1:348\n166#1:349\n132#1:340,4\n132#1:345\n290#1:350,3\n290#1:353,4\n290#1:357,2\n290#1:359\n290#1:360\n331#1:361,6\n*E\n"
.end annotation


# direct methods
.method private static final a(Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    .line 4
    move/from16 v2, p2

    .line 5
    .line 6
    move-object/from16 v3, p7

    .line 7
    .line 8
    move/from16 v4, p9

    .line 9
    .line 10
    move/from16 v5, p4

    .line 11
    .line 12
    if-eqz p6, :cond_0

    .line 13
    move v6, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v6, v1

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v5

    .line 20
    const/4 v7, 0x0

    .line 21
    .line 22
    move/from16 v8, p3

    .line 23
    .line 24
    if-ge v8, v5, :cond_1

    .line 25
    const/4 v5, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v5, v7

    .line 28
    .line 29
    :goto_1
    if-eqz v5, :cond_3

    .line 30
    .line 31
    if-nez p5, :cond_2

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "Check failed."

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 48
    move-result v8

    .line 49
    move v9, v7

    .line 50
    move v10, v9

    .line 51
    .line 52
    :goto_3
    if-ge v9, v8, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v11

    .line 57
    .line 58
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->b()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 62
    move-result-object v11

    .line 63
    array-length v11, v11

    .line 64
    add-int/2addr v10, v11

    .line 65
    .line 66
    add-int/lit8 v9, v9, 0x1

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    if-eqz v5, :cond_e

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 78
    move-result v5

    .line 79
    .line 80
    new-array v9, v5, [I

    .line 81
    move v10, v7

    .line 82
    .line 83
    :goto_4
    if-ge v10, v5, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->b(IZI)I

    .line 87
    move-result v11

    .line 88
    .line 89
    .line 90
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v11

    .line 92
    .line 93
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->c()I

    .line 97
    move-result v11

    .line 98
    .line 99
    aput v11, v9, v10

    .line 100
    .line 101
    add-int/lit8 v10, v10, 0x1

    .line 102
    goto :goto_4

    .line 103
    .line 104
    :cond_5
    new-array v10, v5, [I

    .line 105
    move v11, v7

    .line 106
    .line 107
    :goto_5
    if-ge v11, v5, :cond_6

    .line 108
    .line 109
    aput v7, v10, v11

    .line 110
    .line 111
    add-int/lit8 v11, v11, 0x1

    .line 112
    goto :goto_5

    .line 113
    .line 114
    :cond_6
    const-string v7, "Required value was null."

    .line 115
    .line 116
    if-eqz p6, :cond_8

    .line 117
    .line 118
    if-eqz v3, :cond_7

    .line 119
    .line 120
    move-object/from16 v11, p10

    .line 121
    .line 122
    .line 123
    invoke-interface {v3, v11, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->c(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 124
    goto :goto_6

    .line 125
    .line 126
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    throw v0

    .line 135
    .line 136
    :cond_8
    move-object/from16 v11, p10

    .line 137
    .line 138
    if-eqz p8, :cond_d

    .line 139
    .line 140
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 141
    .line 142
    move-object/from16 p3, p8

    .line 143
    .line 144
    move-object/from16 p4, p10

    .line 145
    .line 146
    move/from16 p5, v6

    .line 147
    .line 148
    move-object/from16 p6, v9

    .line 149
    .line 150
    move-object/from16 p7, v3

    .line 151
    .line 152
    move-object/from16 p8, v10

    .line 153
    .line 154
    .line 155
    invoke-interface/range {p3 .. p8}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->b(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 156
    .line 157
    .line 158
    :goto_6
    invoke-static {v10}, Lkotlin/collections/l;->O([I)Lj8/i;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    if-eqz v4, :cond_9

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Lj8/m;->t(Lj8/g;)Lj8/g;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    .line 168
    :cond_9
    invoke-virtual {v3}, Lj8/g;->e()I

    .line 169
    move-result v7

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Lj8/g;->f()I

    .line 173
    move-result v9

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Lj8/g;->g()I

    .line 177
    move-result v3

    .line 178
    .line 179
    if-lez v3, :cond_a

    .line 180
    .line 181
    if-le v7, v9, :cond_b

    .line 182
    .line 183
    :cond_a
    if-gez v3, :cond_f

    .line 184
    .line 185
    if-gt v9, v7, :cond_f

    .line 186
    .line 187
    :cond_b
    :goto_7
    aget v11, v10, v7

    .line 188
    .line 189
    .line 190
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->b(IZI)I

    .line 191
    move-result v12

    .line 192
    .line 193
    .line 194
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v12

    .line 196
    .line 197
    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 198
    .line 199
    if-eqz v4, :cond_c

    .line 200
    .line 201
    sub-int v11, v6, v11

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->c()I

    .line 205
    move-result v13

    .line 206
    sub-int/2addr v11, v13

    .line 207
    .line 208
    .line 209
    :cond_c
    invoke-virtual {v12, v11, p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->f(III)Ljava/util/List;

    .line 210
    move-result-object v11

    .line 211
    .line 212
    check-cast v11, Ljava/util/Collection;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    .line 217
    if-eq v7, v9, :cond_f

    .line 218
    add-int/2addr v7, v3

    .line 219
    goto :goto_7

    .line 220
    .line 221
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    throw v0

    .line 230
    .line 231
    .line 232
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 233
    move-result v3

    .line 234
    .line 235
    move/from16 v4, p5

    .line 236
    .line 237
    :goto_8
    if-ge v7, v3, :cond_f

    .line 238
    .line 239
    .line 240
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 241
    move-result-object v5

    .line 242
    .line 243
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v4, p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->f(III)Ljava/util/List;

    .line 247
    move-result-object v6

    .line 248
    .line 249
    check-cast v6, Ljava/util/Collection;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->d()I

    .line 256
    move-result v5

    .line 257
    add-int/2addr v4, v5

    .line 258
    .line 259
    add-int/lit8 v7, v7, 0x1

    .line 260
    goto :goto_8

    .line 261
    :cond_f
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

.method public static final c(ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Le8/q;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 28
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
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
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
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
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move/from16 v11, p3

    move/from16 v1, p5

    move-wide/from16 v2, p10

    move-object/from16 v12, p18

    const-string v4, "measuredLineProvider"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "measuredItemProvider"

    move-object/from16 v15, p2

    invoke-static {v15, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "density"

    move-object/from16 v10, p16

    invoke-static {v10, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "placementAnimator"

    move-object/from16 v13, p17

    invoke-static {v13, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "layout"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Failed requirement."

    if-ltz v1, :cond_16

    if-ltz p6, :cond_15

    if-gtz p0, :cond_1

    .line 1
    new-instance v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;

    invoke-interface {v12, v0, v2, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/layout/MeasureResult;

    .line 3
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v9

    neg-int v10, v1

    add-int v11, v11, p6

    const/4 v12, 0x0

    if-eqz p12, :cond_0

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

    move-object v1, v4

    move v2, v5

    move v3, v6

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    move v7, v10

    move v8, v11

    move v9, v12

    move/from16 v10, p15

    move-object v11, v14

    move/from16 v12, p6

    .line 5
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    .line 6
    :cond_1
    invoke-static/range {p9 .. p9}, Lg8/a;->c(F)I

    move-result v4

    sub-int v5, p8, v4

    const/4 v14, 0x0

    .line 7
    invoke-static {v14}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v6

    move/from16 v7, p7

    invoke-static {v7, v6}, Landroidx/compose/foundation/lazy/grid/LineIndex;->d(II)Z

    move-result v6

    if-eqz v6, :cond_2

    if-gez v5, :cond_2

    add-int/2addr v4, v5

    move v5, v14

    .line 8
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sub-int/2addr v5, v1

    neg-int v9, v1

    :goto_2
    if-gez v5, :cond_3

    .line 9
    invoke-static {v14}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v8

    sub-int v8, v7, v8

    if-lez v8, :cond_3

    add-int/lit8 v7, v7, -0x1

    .line 10
    invoke-static {v7}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v7

    .line 11
    invoke-virtual {v0, v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v8

    .line 12
    invoke-interface {v6, v14, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->d()I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :cond_3
    if-ge v5, v9, :cond_4

    add-int/2addr v4, v5

    move v5, v4

    move v4, v9

    goto :goto_3

    :cond_4
    move/from16 v27, v5

    move v5, v4

    move/from16 v4, v27

    :goto_3
    add-int/2addr v4, v1

    add-int v8, v11, p6

    move/from16 p7, v7

    .line 14
    invoke-static {v8, v14}, Lj8/m;->e(II)I

    move-result v7

    neg-int v14, v4

    move/from16 v16, v4

    .line 15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v18, p7

    move/from16 v17, v8

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_5

    .line 16
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 17
    check-cast v19, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    add-int/lit8 v18, v18, 0x1

    .line 18
    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v18

    .line 19
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->d()I

    move-result v19

    add-int v14, v14, v19

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move/from16 v4, v16

    move/from16 v8, v18

    :goto_5
    const/16 v21, 0x1

    if-le v14, v7, :cond_6

    .line 20
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_6
    move/from16 v16, v7

    .line 21
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v7

    .line 22
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->e()Z

    move-result v18

    if-eqz v18, :cond_13

    add-int/lit8 v8, v8, -0x1

    .line 23
    invoke-static {v8}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    :cond_7
    if-ge v14, v11, :cond_a

    sub-int v7, v11, v14

    sub-int/2addr v4, v7

    add-int/2addr v14, v7

    move/from16 v8, p7

    :goto_6
    if-ge v4, v1, :cond_9

    const/16 p7, 0x0

    .line 24
    invoke-static/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v16

    sub-int v16, v8, v16

    if-lez v16, :cond_8

    add-int/lit8 v8, v8, -0x1

    .line 25
    invoke-static {v8}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v8

    move/from16 v18, v9

    .line 26
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->b(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v9

    move/from16 v15, p7

    .line 27
    invoke-interface {v6, v15, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->d()I

    move-result v9

    add-int/2addr v4, v9

    move-object/from16 v15, p2

    move/from16 v9, v18

    goto :goto_6

    :cond_8
    move/from16 v15, p7

    move/from16 v18, v9

    goto :goto_7

    :cond_9
    move/from16 v18, v9

    const/4 v15, 0x0

    :goto_7
    add-int/2addr v5, v7

    if-gez v4, :cond_b

    add-int/2addr v5, v4

    add-int/2addr v14, v4

    move v4, v15

    goto :goto_8

    :cond_a
    move/from16 v18, v9

    const/4 v15, 0x0

    .line 29
    :cond_b
    :goto_8
    invoke-static/range {p9 .. p9}, Lg8/a;->c(F)I

    move-result v0

    invoke-static {v0}, Lg8/a;->a(I)I

    move-result v0

    invoke-static {v5}, Lg8/a;->a(I)I

    move-result v7

    if-ne v0, v7, :cond_c

    .line 30
    invoke-static/range {p9 .. p9}, Lg8/a;->c(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v0, v7, :cond_c

    int-to-float v0, v5

    move v9, v0

    goto :goto_9

    :cond_c
    move/from16 v9, p9

    :goto_9
    neg-int v5, v4

    .line 31
    invoke-static {v6}, Lkotlin/collections/t;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    if-lez v1, :cond_e

    .line 32
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    move v7, v4

    move-object v4, v0

    move v0, v15

    :goto_a
    if-ge v0, v1, :cond_d

    .line 33
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->d()I

    move-result v8

    if-eqz v7, :cond_d

    if-gt v8, v7, :cond_d

    .line 34
    invoke-static {v6}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    move-result v15

    if-eq v0, v15, :cond_d

    sub-int/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    .line 35
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    const/4 v15, 0x0

    goto :goto_a

    :cond_d
    move-object/from16 v22, v4

    move/from16 v23, v7

    goto :goto_b

    :cond_e
    move-object/from16 v22, v0

    move/from16 v23, v4

    :goto_b
    if-eqz p12, :cond_f

    .line 36
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    move-result v0

    :goto_c
    move/from16 v24, v0

    goto :goto_d

    .line 37
    :cond_f
    invoke-static {v2, v3, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->g(JI)I

    move-result v0

    goto :goto_c

    :goto_d
    if-eqz p12, :cond_10

    .line 38
    invoke-static {v2, v3, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->f(JI)I

    move-result v0

    :goto_e
    move/from16 v25, v0

    goto :goto_f

    .line 39
    :cond_10
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    move-result v0

    goto :goto_e

    :goto_f
    move-object v0, v6

    move/from16 v1, v24

    move/from16 v2, v25

    move v3, v14

    move/from16 v4, p3

    move/from16 v6, p12

    move-object/from16 v7, p13

    move/from16 v26, v17

    move-object/from16 v8, p14

    move v12, v9

    move/from16 v15, v18

    move/from16 v9, p15

    move-object/from16 v10, p16

    .line 40
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->a(Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v6

    float-to-int v0, v12

    move-object/from16 v13, p17

    move v1, v14

    const/4 v9, 0x0

    move v14, v0

    move v7, v15

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, p4

    move/from16 v18, p15

    move-object/from16 v19, v6

    move-object/from16 v20, p2

    .line 41
    invoke-virtual/range {v13 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->e(IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;)V

    if-le v1, v11, :cond_11

    move/from16 v3, v21

    goto :goto_10

    :cond_11
    move v3, v9

    .line 42
    :goto_10
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;

    invoke-direct {v2, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;-><init>(Ljava/util/List;)V

    move v4, v12

    move-object/from16 v12, p18

    invoke-interface {v12, v0, v1, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz p12, :cond_12

    .line 43
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_11
    move-object v11, v0

    goto :goto_12

    :cond_12
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_11

    .line 44
    :goto_12
    new-instance v13, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object v0, v13

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v8, v26

    move/from16 v9, p0

    move/from16 v10, p15

    move/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    :cond_13
    move v15, v9

    move/from16 v26, v17

    const/4 v9, 0x0

    .line 45
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->d()I

    move-result v17

    add-int v14, v14, v17

    if-gt v14, v15, :cond_14

    .line 46
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->b()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/l;->h0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->b()I

    move-result v9

    add-int/lit8 v0, p0, -0x1

    if-eq v9, v0, :cond_14

    add-int/lit8 v0, v8, 0x1

    .line 47
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v0

    .line 48
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->d()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_13

    .line 49
    :cond_14
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, p7

    :goto_13
    add-int/lit8 v8, v8, 0x1

    .line 50
    invoke-static {v8}, Landroidx/compose/foundation/lazy/grid/LineIndex;->b(I)I

    move-result v8

    move/from16 p7, v0

    move v9, v15

    move/from16 v7, v16

    move/from16 v17, v26

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    goto/16 :goto_5

    .line 51
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
