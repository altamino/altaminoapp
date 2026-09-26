.class final Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt;->c(FFLe8/p;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $crossAxisSpacing:F

.field final synthetic $mainAxisSpacing:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    iput p2, p0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$crossAxisSpacing:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final f(Ljava/util/List;Lkotlin/jvm/internal/n0;Landroidx/compose/ui/layout/MeasureScope;FJLandroidx/compose/ui/layout/Placeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Lkotlin/jvm/internal/n0;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "FJ",
            "Landroidx/compose/ui/layout/Placeable;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-nez p0, :cond_1

    .line 7
    .line 8
    iget p0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 12
    move-result p1

    .line 13
    add-int/2addr p0, p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 17
    move-result p1

    .line 18
    add-int/2addr p0, p1

    .line 19
    .line 20
    .line 21
    invoke-static {p4, p5}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-gt p0, p1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method private static final g(Ljava/util/List;Lkotlin/jvm/internal/n0;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/n0;Ljava/util/List;Lkotlin/jvm/internal/n0;Lkotlin/jvm/internal/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;",
            "Lkotlin/jvm/internal/n0;",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "F",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/n0;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/internal/n0;",
            "Lkotlin/jvm/internal/n0;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    check-cast p0, Ljava/util/Collection;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 16
    move-result p2

    .line 17
    add-int/2addr v0, p2

    .line 18
    .line 19
    iput v0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 20
    :cond_0
    move-object p2, p4

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Iterable;

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lkotlin/collections/t;->U0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    check-cast p5, Ljava/util/Collection;

    .line 32
    .line 33
    iget p0, p6, Lkotlin/jvm/internal/n0;->element:I

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-interface {p5, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    check-cast p7, Ljava/util/Collection;

    .line 43
    .line 44
    iget p0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-interface {p7, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    iget p0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 54
    .line 55
    iget p2, p6, Lkotlin/jvm/internal/n0;->element:I

    .line 56
    add-int/2addr p0, p2

    .line 57
    .line 58
    iput p0, p1, Lkotlin/jvm/internal/n0;->element:I

    .line 59
    .line 60
    iget p0, p8, Lkotlin/jvm/internal/n0;->element:I

    .line 61
    .line 62
    iget p1, p9, Lkotlin/jvm/internal/n0;->element:I

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    .line 66
    move-result p0

    .line 67
    .line 68
    iput p0, p8, Lkotlin/jvm/internal/n0;->element:I

    .line 69
    .line 70
    .line 71
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 72
    const/4 p0, 0x0

    .line 73
    .line 74
    iput p0, p9, Lkotlin/jvm/internal/n0;->element:I

    .line 75
    .line 76
    iput p0, p6, Lkotlin/jvm/internal/n0;->element:I

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23
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
    move-object/from16 v11, p1

    .line 5
    .line 6
    const-string v1, "$this$Layout"

    .line 7
    .line 8
    .line 9
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v1, "measurables"

    .line 12
    .line 13
    move-object/from16 v2, p2

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    new-instance v12, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    new-instance v13, Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    new-instance v14, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    new-instance v15, Lkotlin/jvm/internal/n0;

    .line 34
    .line 35
    .line 36
    invoke-direct {v15}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 37
    .line 38
    new-instance v10, Lkotlin/jvm/internal/n0;

    .line 39
    .line 40
    .line 41
    invoke-direct {v10}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 42
    .line 43
    new-instance v9, Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    new-instance v8, Lkotlin/jvm/internal/n0;

    .line 49
    .line 50
    .line 51
    invoke-direct {v8}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 52
    .line 53
    new-instance v7, Lkotlin/jvm/internal/n0;

    .line 54
    .line 55
    .line 56
    invoke-direct {v7}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 57
    .line 58
    const/16 v16, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 62
    move-result v17

    .line 63
    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/16 v19, 0x0

    .line 67
    .line 68
    const/16 v20, 0xd

    .line 69
    .line 70
    const/16 v21, 0x0

    .line 71
    .line 72
    .line 73
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 74
    move-result-wide v5

    .line 75
    .line 76
    .line 77
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v16

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    iget v3, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    .line 97
    move-object v1, v9

    .line 98
    move-object v2, v8

    .line 99
    .line 100
    move/from16 v17, v3

    .line 101
    .line 102
    move-object/from16 v3, p1

    .line 103
    .line 104
    move-object/from16 p2, v4

    .line 105
    .line 106
    move/from16 v4, v17

    .line 107
    .line 108
    move-wide/from16 v17, v5

    .line 109
    .line 110
    move-wide/from16 v5, p3

    .line 111
    .line 112
    move-object/from16 v19, v7

    .line 113
    .line 114
    move-object/from16 v7, p2

    .line 115
    .line 116
    .line 117
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->f(Ljava/util/List;Lkotlin/jvm/internal/n0;Landroidx/compose/ui/layout/MeasureScope;FJLandroidx/compose/ui/layout/Placeable;)Z

    .line 118
    move-result v1

    .line 119
    .line 120
    if-nez v1, :cond_0

    .line 121
    .line 122
    iget v4, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$crossAxisSpacing:F

    .line 123
    move-object v1, v12

    .line 124
    move-object v2, v10

    .line 125
    .line 126
    move-object/from16 v3, p1

    .line 127
    move-object v5, v9

    .line 128
    move-object v6, v13

    .line 129
    .line 130
    move-object/from16 v7, v19

    .line 131
    .line 132
    move-object/from16 v20, v8

    .line 133
    move-object v8, v14

    .line 134
    .line 135
    move-object/from16 v21, v9

    .line 136
    move-object v9, v15

    .line 137
    .line 138
    move-object/from16 v22, v10

    .line 139
    .line 140
    move-object/from16 v10, v20

    .line 141
    .line 142
    .line 143
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->g(Ljava/util/List;Lkotlin/jvm/internal/n0;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/n0;Ljava/util/List;Lkotlin/jvm/internal/n0;Lkotlin/jvm/internal/n0;)V

    .line 144
    goto :goto_1

    .line 145
    .line 146
    :cond_0
    move-object/from16 v20, v8

    .line 147
    .line 148
    move-object/from16 v21, v9

    .line 149
    .line 150
    move-object/from16 v22, v10

    .line 151
    .line 152
    .line 153
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    .line 154
    move-result v1

    .line 155
    .line 156
    xor-int/lit8 v1, v1, 0x1

    .line 157
    .line 158
    move-object/from16 v10, v20

    .line 159
    .line 160
    if-eqz v1, :cond_1

    .line 161
    .line 162
    iget v1, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 163
    .line 164
    iget v2, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    .line 165
    .line 166
    .line 167
    invoke-interface {v11, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 168
    move-result v2

    .line 169
    add-int/2addr v1, v2

    .line 170
    .line 171
    iput v1, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 172
    .line 173
    :cond_1
    move-object/from16 v1, p2

    .line 174
    .line 175
    move-object/from16 v5, v21

    .line 176
    .line 177
    .line 178
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    iget v2, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 184
    move-result v3

    .line 185
    add-int/2addr v2, v3

    .line 186
    .line 187
    iput v2, v10, Lkotlin/jvm/internal/n0;->element:I

    .line 188
    .line 189
    move-object/from16 v7, v19

    .line 190
    .line 191
    iget v2, v7, Lkotlin/jvm/internal/n0;->element:I

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 195
    move-result v1

    .line 196
    .line 197
    .line 198
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 199
    move-result v1

    .line 200
    .line 201
    iput v1, v7, Lkotlin/jvm/internal/n0;->element:I

    .line 202
    move-object v9, v5

    .line 203
    move-object v8, v10

    .line 204
    .line 205
    move-wide/from16 v5, v17

    .line 206
    .line 207
    move-object/from16 v10, v22

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    :cond_2
    move-object v5, v9

    .line 211
    .line 212
    move-object/from16 v22, v10

    .line 213
    move-object v10, v8

    .line 214
    .line 215
    .line 216
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 217
    move-result v1

    .line 218
    .line 219
    xor-int/lit8 v1, v1, 0x1

    .line 220
    .line 221
    if-eqz v1, :cond_3

    .line 222
    .line 223
    iget v4, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$crossAxisSpacing:F

    .line 224
    move-object v1, v12

    .line 225
    .line 226
    move-object/from16 v2, v22

    .line 227
    .line 228
    move-object/from16 v3, p1

    .line 229
    move-object v6, v13

    .line 230
    move-object v8, v14

    .line 231
    move-object v9, v15

    .line 232
    .line 233
    .line 234
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->g(Ljava/util/List;Lkotlin/jvm/internal/n0;Landroidx/compose/ui/layout/MeasureScope;FLjava/util/List;Ljava/util/List;Lkotlin/jvm/internal/n0;Ljava/util/List;Lkotlin/jvm/internal/n0;Lkotlin/jvm/internal/n0;)V

    .line 235
    .line 236
    .line 237
    :cond_3
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 238
    move-result v1

    .line 239
    .line 240
    .line 241
    const v2, 0x7fffffff

    .line 242
    .line 243
    if-eq v1, v2, :cond_4

    .line 244
    .line 245
    .line 246
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 247
    move-result v1

    .line 248
    :goto_2
    move v7, v1

    .line 249
    .line 250
    move-object/from16 v1, v22

    .line 251
    goto :goto_3

    .line 252
    .line 253
    :cond_4
    iget v1, v15, Lkotlin/jvm/internal/n0;->element:I

    .line 254
    .line 255
    .line 256
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 257
    move-result v2

    .line 258
    .line 259
    .line 260
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 261
    move-result v1

    .line 262
    goto :goto_2

    .line 263
    .line 264
    :goto_3
    iget v1, v1, Lkotlin/jvm/internal/n0;->element:I

    .line 265
    .line 266
    .line 267
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 268
    move-result v2

    .line 269
    .line 270
    .line 271
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 272
    move-result v8

    .line 273
    const/4 v9, 0x0

    .line 274
    .line 275
    new-instance v10, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;

    .line 276
    .line 277
    iget v4, v0, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1;->$mainAxisSpacing:F

    .line 278
    move-object v1, v10

    .line 279
    move-object v2, v12

    .line 280
    .line 281
    move-object/from16 v3, p1

    .line 282
    move v5, v7

    .line 283
    move-object v6, v14

    .line 284
    .line 285
    .line 286
    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/AlertDialogKt$AlertDialogFlowRow$1$measure$1;-><init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/List;)V

    .line 287
    const/4 v6, 0x4

    .line 288
    const/4 v12, 0x0

    .line 289
    .line 290
    move-object/from16 v1, p1

    .line 291
    move v2, v7

    .line 292
    move v3, v8

    .line 293
    move-object v4, v9

    .line 294
    move-object v5, v10

    .line 295
    move-object v7, v12

    .line 296
    .line 297
    .line 298
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 299
    move-result-object v1

    .line 300
    return-object v1
.end method

.method public synthetic b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->c(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->d(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->a(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method public synthetic e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/c;->b(Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I

    move-result p1

    return p1
.end method
