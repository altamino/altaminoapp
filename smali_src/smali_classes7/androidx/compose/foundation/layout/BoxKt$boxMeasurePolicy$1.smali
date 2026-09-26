.class final Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBox.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Box.kt\nandroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,287:1\n49#2,6:288\n49#2,6:294\n*S KotlinDebug\n*F\n+ 1 Box.kt\nandroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1\n*L\n135#1:288,6\n155#1:294,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $propagateMinConstraints:Z


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/Alignment;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$propagateMinConstraints:Z

    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
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
    move-object/from16 v3, p2

    .line 5
    .line 6
    const-string v1, "$this$MeasurePolicy"

    .line 7
    .line 8
    move-object/from16 v9, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v9, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v1, "measurables"

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 26
    move-result v3

    .line 27
    .line 28
    .line 29
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    sget-object v6, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$1;

    .line 34
    const/4 v7, 0x4

    .line 35
    const/4 v8, 0x0

    .line 36
    .line 37
    move-object/from16 v2, p1

    .line 38
    .line 39
    .line 40
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 41
    move-result-object v1

    .line 42
    return-object v1

    .line 43
    .line 44
    :cond_0
    iget-boolean v1, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$propagateMinConstraints:Z

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    move-wide/from16 v1, p3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v12, 0x0

    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    const/4 v15, 0x0

    .line 54
    .line 55
    const/16 v16, 0xa

    .line 56
    .line 57
    const/16 v17, 0x0

    .line 58
    .line 59
    move-wide/from16 v10, p3

    .line 60
    .line 61
    .line 62
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 63
    move-result-wide v1

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 67
    move-result v4

    .line 68
    const/4 v5, 0x1

    .line 69
    const/4 v6, 0x0

    .line 70
    .line 71
    if-ne v4, v5, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    move-object v4, v3

    .line 77
    .line 78
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Landroidx/compose/foundation/layout/BoxKt;->b(Landroidx/compose/ui/layout/Measurable;)Z

    .line 82
    move-result v3

    .line 83
    .line 84
    if-nez v3, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-interface {v4, v1, v2}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 92
    move-result v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 96
    move-result v3

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 100
    move-result v2

    .line 101
    .line 102
    .line 103
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 104
    move-result v3

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 108
    move-result v5

    .line 109
    .line 110
    .line 111
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 112
    move-result v3

    .line 113
    move v10, v3

    .line 114
    move-object v3, v1

    .line 115
    move v1, v2

    .line 116
    goto :goto_1

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 120
    move-result v1

    .line 121
    .line 122
    .line 123
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 124
    move-result v2

    .line 125
    .line 126
    sget-object v3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 127
    .line 128
    .line 129
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 130
    move-result v5

    .line 131
    .line 132
    .line 133
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 134
    move-result v6

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 138
    move-result-wide v5

    .line 139
    .line 140
    .line 141
    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 142
    move-result-object v3

    .line 143
    move v10, v2

    .line 144
    :goto_1
    const/4 v11, 0x0

    .line 145
    .line 146
    new-instance v12, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;

    .line 147
    .line 148
    iget-object v8, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    .line 149
    move-object v2, v12

    .line 150
    .line 151
    move-object/from16 v5, p1

    .line 152
    move v6, v1

    .line 153
    move v7, v10

    .line 154
    .line 155
    .line 156
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/Alignment;)V

    .line 157
    const/4 v7, 0x4

    .line 158
    const/4 v8, 0x0

    .line 159
    .line 160
    move-object/from16 v2, p1

    .line 161
    move v3, v1

    .line 162
    move v4, v10

    .line 163
    move-object v5, v11

    .line 164
    move-object v6, v12

    .line 165
    .line 166
    .line 167
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 168
    move-result-object v1

    .line 169
    return-object v1

    .line 170
    .line 171
    .line 172
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 173
    move-result v4

    .line 174
    .line 175
    new-array v4, v4, [Landroidx/compose/ui/layout/Placeable;

    .line 176
    .line 177
    new-instance v7, Lkotlin/jvm/internal/n0;

    .line 178
    .line 179
    .line 180
    invoke-direct {v7}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 184
    move-result v8

    .line 185
    .line 186
    iput v8, v7, Lkotlin/jvm/internal/n0;->element:I

    .line 187
    .line 188
    new-instance v8, Lkotlin/jvm/internal/n0;

    .line 189
    .line 190
    .line 191
    invoke-direct {v8}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 195
    move-result v10

    .line 196
    .line 197
    iput v10, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 198
    .line 199
    .line 200
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 201
    move-result v10

    .line 202
    move v11, v6

    .line 203
    move v12, v11

    .line 204
    .line 205
    :goto_2
    if-ge v11, v10, :cond_5

    .line 206
    .line 207
    .line 208
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    move-result-object v13

    .line 210
    .line 211
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 212
    .line 213
    .line 214
    invoke-static {v13}, Landroidx/compose/foundation/layout/BoxKt;->b(Landroidx/compose/ui/layout/Measurable;)Z

    .line 215
    move-result v14

    .line 216
    .line 217
    if-nez v14, :cond_4

    .line 218
    .line 219
    .line 220
    invoke-interface {v13, v1, v2}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 221
    move-result-object v13

    .line 222
    .line 223
    aput-object v13, v4, v11

    .line 224
    .line 225
    iget v14, v7, Lkotlin/jvm/internal/n0;->element:I

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 229
    move-result v15

    .line 230
    .line 231
    .line 232
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 233
    move-result v14

    .line 234
    .line 235
    iput v14, v7, Lkotlin/jvm/internal/n0;->element:I

    .line 236
    .line 237
    iget v14, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 238
    .line 239
    .line 240
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 241
    move-result v13

    .line 242
    .line 243
    .line 244
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 245
    move-result v13

    .line 246
    .line 247
    iput v13, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 248
    goto :goto_3

    .line 249
    :cond_4
    move v12, v5

    .line 250
    .line 251
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 252
    goto :goto_2

    .line 253
    .line 254
    :cond_5
    if-eqz v12, :cond_9

    .line 255
    .line 256
    iget v1, v7, Lkotlin/jvm/internal/n0;->element:I

    .line 257
    .line 258
    .line 259
    const v2, 0x7fffffff

    .line 260
    .line 261
    if-eq v1, v2, :cond_6

    .line 262
    move v5, v1

    .line 263
    goto :goto_4

    .line 264
    :cond_6
    move v5, v6

    .line 265
    .line 266
    :goto_4
    iget v10, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 267
    .line 268
    if-eq v10, v2, :cond_7

    .line 269
    move v2, v10

    .line 270
    goto :goto_5

    .line 271
    :cond_7
    move v2, v6

    .line 272
    .line 273
    .line 274
    :goto_5
    invoke-static {v5, v1, v2, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 275
    move-result-wide v1

    .line 276
    .line 277
    .line 278
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 279
    move-result v5

    .line 280
    .line 281
    :goto_6
    if-ge v6, v5, :cond_9

    .line 282
    .line 283
    .line 284
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    move-result-object v10

    .line 286
    .line 287
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 288
    .line 289
    .line 290
    invoke-static {v10}, Landroidx/compose/foundation/layout/BoxKt;->b(Landroidx/compose/ui/layout/Measurable;)Z

    .line 291
    move-result v11

    .line 292
    .line 293
    if-eqz v11, :cond_8

    .line 294
    .line 295
    .line 296
    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 297
    move-result-object v10

    .line 298
    .line 299
    aput-object v10, v4, v6

    .line 300
    .line 301
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 302
    goto :goto_6

    .line 303
    .line 304
    :cond_9
    iget v10, v7, Lkotlin/jvm/internal/n0;->element:I

    .line 305
    .line 306
    iget v11, v8, Lkotlin/jvm/internal/n0;->element:I

    .line 307
    const/4 v12, 0x0

    .line 308
    .line 309
    new-instance v13, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$5;

    .line 310
    .line 311
    iget-object v14, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    .line 312
    move-object v1, v13

    .line 313
    move-object v2, v4

    .line 314
    .line 315
    move-object/from16 v3, p2

    .line 316
    .line 317
    move-object/from16 v4, p1

    .line 318
    move-object v5, v7

    .line 319
    move-object v6, v8

    .line 320
    move-object v7, v14

    .line 321
    .line 322
    .line 323
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$5;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/n0;Lkotlin/jvm/internal/n0;Landroidx/compose/ui/Alignment;)V

    .line 324
    const/4 v7, 0x4

    .line 325
    const/4 v8, 0x0

    .line 326
    .line 327
    move-object/from16 v2, p1

    .line 328
    move v3, v10

    .line 329
    move v4, v11

    .line 330
    move-object v5, v12

    .line 331
    move-object v6, v13

    .line 332
    .line 333
    .line 334
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 335
    move-result-object v1

    .line 336
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
