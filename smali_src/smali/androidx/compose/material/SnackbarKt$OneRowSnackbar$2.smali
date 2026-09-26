.class final Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarKt;->b(Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material/SnackbarKt$OneRowSnackbar$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n221#2,2:365\n221#2,2:367\n1#3:369\n*S KotlinDebug\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material/SnackbarKt$OneRowSnackbar$2\n*L\n308#1:365,2\n312#1:367,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $actionTag:Ljava/lang/String;

.field final synthetic $textTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$actionTag:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$textTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
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
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v3, "$this$Layout"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v3, "measurables"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    check-cast v2, Ljava/lang/Iterable;

    .line 19
    .line 20
    iget-object v3, v0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$actionTag:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v5

    .line 29
    .line 30
    const-string v6, "Collection contains no element matching the predicate."

    .line 31
    .line 32
    if-eqz v5, :cond_8

    .line 33
    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 42
    move-result-object v7

    .line 43
    .line 44
    .line 45
    invoke-static {v7, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v7

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    move-wide/from16 v14, p3

    .line 51
    .line 52
    .line 53
    invoke-interface {v5, v14, v15}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 58
    move-result v4

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 62
    move-result v5

    .line 63
    sub-int/2addr v4, v5

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->l()F

    .line 67
    move-result v5

    .line 68
    .line 69
    .line 70
    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 71
    move-result v5

    .line 72
    sub-int/2addr v4, v5

    .line 73
    .line 74
    .line 75
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 76
    move-result v5

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v5}, Lj8/m;->e(II)I

    .line 80
    move-result v11

    .line 81
    .line 82
    iget-object v4, v0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$textTag:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v5

    .line 91
    .line 92
    if-eqz v5, :cond_7

    .line 93
    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 99
    .line 100
    .line 101
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 102
    move-result-object v7

    .line 103
    .line 104
    .line 105
    invoke-static {v7, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v7

    .line 107
    .line 108
    if-eqz v7, :cond_6

    .line 109
    const/4 v10, 0x0

    .line 110
    const/4 v12, 0x0

    .line 111
    const/4 v13, 0x0

    .line 112
    .line 113
    const/16 v2, 0x9

    .line 114
    const/4 v4, 0x0

    .line 115
    .line 116
    move-wide/from16 v8, p3

    .line 117
    move v14, v2

    .line 118
    move-object v15, v4

    .line 119
    .line 120
    .line 121
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 122
    move-result-wide v6

    .line 123
    .line 124
    .line 125
    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 126
    move-result-object v8

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-interface {v8, v2}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 134
    move-result v2

    .line 135
    .line 136
    const-string v4, "No baselines for text"

    .line 137
    .line 138
    const/high16 v5, -0x80000000

    .line 139
    .line 140
    if-eq v2, v5, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 144
    move-result-object v6

    .line 145
    .line 146
    .line 147
    invoke-interface {v8, v6}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 148
    move-result v6

    .line 149
    .line 150
    if-eq v6, v5, :cond_4

    .line 151
    const/4 v4, 0x0

    .line 152
    .line 153
    if-ne v2, v6, :cond_1

    .line 154
    const/4 v6, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_1
    move v6, v4

    .line 157
    .line 158
    .line 159
    :goto_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 160
    move-result v7

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 164
    move-result v9

    .line 165
    .line 166
    sub-int v11, v7, v9

    .line 167
    .line 168
    if-eqz v6, :cond_3

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->j()F

    .line 172
    move-result v6

    .line 173
    .line 174
    .line 175
    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 176
    move-result v6

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 180
    move-result v7

    .line 181
    .line 182
    .line 183
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 184
    move-result v6

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 188
    move-result v7

    .line 189
    .line 190
    sub-int v7, v6, v7

    .line 191
    .line 192
    div-int/lit8 v7, v7, 0x2

    .line 193
    .line 194
    .line 195
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 196
    move-result-object v9

    .line 197
    .line 198
    .line 199
    invoke-interface {v3, v9}, Landroidx/compose/ui/layout/Measured;->c0(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 200
    move-result v9

    .line 201
    .line 202
    if-eq v9, v5, :cond_2

    .line 203
    add-int/2addr v2, v7

    .line 204
    .line 205
    sub-int v4, v2, v9

    .line 206
    :cond_2
    move v12, v4

    .line 207
    move v9, v7

    .line 208
    goto :goto_2

    .line 209
    .line 210
    .line 211
    :cond_3
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->i()F

    .line 212
    move-result v4

    .line 213
    .line 214
    .line 215
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 216
    move-result v4

    .line 217
    sub-int/2addr v4, v2

    .line 218
    .line 219
    .line 220
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->k()F

    .line 221
    move-result v2

    .line 222
    .line 223
    .line 224
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 225
    move-result v2

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 229
    move-result v5

    .line 230
    add-int/2addr v5, v4

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 234
    move-result v2

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 238
    move-result v5

    .line 239
    .line 240
    sub-int v5, v2, v5

    .line 241
    .line 242
    div-int/lit8 v5, v5, 0x2

    .line 243
    move v6, v2

    .line 244
    move v9, v4

    .line 245
    move v12, v5

    .line 246
    .line 247
    .line 248
    :goto_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 249
    move-result v2

    .line 250
    const/4 v4, 0x0

    .line 251
    .line 252
    new-instance v5, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;

    .line 253
    move-object v7, v5

    .line 254
    move-object v10, v3

    .line 255
    .line 256
    .line 257
    invoke-direct/range {v7 .. v12}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;II)V

    .line 258
    const/4 v7, 0x4

    .line 259
    const/4 v8, 0x0

    .line 260
    .line 261
    move-object/from16 v1, p1

    .line 262
    move v3, v6

    .line 263
    move v6, v7

    .line 264
    move-object v7, v8

    .line 265
    .line 266
    .line 267
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 268
    move-result-object v1

    .line 269
    return-object v1

    .line 270
    .line 271
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 275
    move-result-object v2

    .line 276
    .line 277
    .line 278
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    throw v1

    .line 280
    .line 281
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 285
    move-result-object v2

    .line 286
    .line 287
    .line 288
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 289
    throw v1

    .line 290
    .line 291
    :cond_6
    move-wide/from16 v14, p3

    .line 292
    .line 293
    goto/16 :goto_0

    .line 294
    .line 295
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 296
    .line 297
    .line 298
    invoke-direct {v1, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 299
    throw v1

    .line 300
    .line 301
    :cond_8
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 302
    .line 303
    .line 304
    invoke-direct {v1, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 305
    throw v1
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
