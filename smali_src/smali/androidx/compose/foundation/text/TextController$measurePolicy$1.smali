.class public final Landroidx/compose/foundation/text/TextController$measurePolicy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/TextController$measurePolicy$1\n+ 2 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,660:1\n77#2,3:661\n80#2:668\n81#2:670\n82#2:672\n49#3,4:664\n54#3:671\n1#4:669\n*S KotlinDebug\n*F\n+ 1 CoreText.kt\nandroidx/compose/foundation/text/TextController$measurePolicy$1\n*L\n332#1:661,3\n332#1:668\n332#1:670\n332#1:672\n332#1:664,4\n332#1:671\n332#1:669\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/TextController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextController;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v3, "$this$measure"

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
    iget-object v3, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextState;->c()Landroidx/compose/ui/text/TextLayoutResult;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    iget-object v4, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    move-wide/from16 v6, p3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v6, v7, v5, v3}, Landroidx/compose/foundation/text/TextDelegate;->l(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v5

    .line 51
    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    iget-object v5, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextState;->d()Le8/l;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    .line 65
    invoke-interface {v5, v4}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    if-eqz v3, :cond_0

    .line 68
    .line 69
    iget-object v5, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->k()Landroidx/compose/ui/text/TextLayoutInput;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/compose/ui/text/TextLayoutInput;->j()Landroidx/compose/ui/text/AnnotatedString;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v3

    .line 90
    .line 91
    if-nez v3, :cond_0

    .line 92
    .line 93
    .line 94
    invoke-static {v5}, Landroidx/compose/foundation/text/TextController;->a(Landroidx/compose/foundation/text/TextController;)Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    if-eqz v3, :cond_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Landroidx/compose/foundation/text/TextState;->g()J

    .line 105
    move-result-wide v5

    .line 106
    .line 107
    .line 108
    invoke-interface {v3, v5, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->h(J)V

    .line 109
    .line 110
    :cond_0
    iget-object v3, v0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/text/TextState;->l(Landroidx/compose/ui/text/TextLayoutResult;)V

    .line 118
    .line 119
    .line 120
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 121
    move-result v3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->z()Ljava/util/List;

    .line 125
    move-result-object v5

    .line 126
    .line 127
    .line 128
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 129
    move-result v5

    .line 130
    .line 131
    if-lt v3, v5, :cond_4

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->z()Ljava/util/List;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    new-instance v5, Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 141
    move-result v6

    .line 142
    .line 143
    .line 144
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 148
    move-result v6

    .line 149
    const/4 v8, 0x0

    .line 150
    .line 151
    :goto_0
    if-ge v8, v6, :cond_3

    .line 152
    .line 153
    .line 154
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v9

    .line 156
    .line 157
    check-cast v9, Landroidx/compose/ui/geometry/Rect;

    .line 158
    .line 159
    if-eqz v9, :cond_1

    .line 160
    .line 161
    new-instance v10, Lw7/u;

    .line 162
    .line 163
    .line 164
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v11

    .line 166
    .line 167
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 168
    const/4 v12, 0x0

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->p()F

    .line 172
    move-result v13

    .line 173
    float-to-double v13, v13

    .line 174
    .line 175
    .line 176
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 177
    move-result-wide v13

    .line 178
    double-to-float v13, v13

    .line 179
    float-to-int v13, v13

    .line 180
    const/4 v14, 0x0

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->i()F

    .line 184
    move-result v15

    .line 185
    .line 186
    move/from16 p4, v8

    .line 187
    float-to-double v7, v15

    .line 188
    .line 189
    .line 190
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    .line 191
    move-result-wide v7

    .line 192
    double-to-float v7, v7

    .line 193
    float-to-int v15, v7

    .line 194
    .line 195
    const/16 v16, 0x5

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    .line 200
    invoke-static/range {v12 .. v17}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIIILjava/lang/Object;)J

    .line 201
    move-result-wide v7

    .line 202
    .line 203
    .line 204
    invoke-interface {v11, v7, v8}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 205
    move-result-object v7

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 209
    move-result v8

    .line 210
    .line 211
    .line 212
    invoke-static {v8}, Lg8/a;->c(F)I

    .line 213
    move-result v8

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 217
    move-result v9

    .line 218
    .line 219
    .line 220
    invoke-static {v9}, Lg8/a;->c(F)I

    .line 221
    move-result v9

    .line 222
    .line 223
    .line 224
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 225
    move-result-wide v8

    .line 226
    .line 227
    .line 228
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->b(J)Landroidx/compose/ui/unit/IntOffset;

    .line 229
    move-result-object v8

    .line 230
    .line 231
    .line 232
    invoke-direct {v10, v7, v8}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    goto :goto_1

    .line 234
    .line 235
    :cond_1
    move/from16 p4, v8

    .line 236
    const/4 v10, 0x0

    .line 237
    .line 238
    :goto_1
    if-eqz v10, :cond_2

    .line 239
    .line 240
    .line 241
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    :cond_2
    add-int/lit8 v8, p4, 0x1

    .line 244
    goto :goto_0

    .line 245
    .line 246
    .line 247
    :cond_3
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 248
    move-result-wide v2

    .line 249
    .line 250
    .line 251
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 252
    move-result v2

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 256
    move-result-wide v6

    .line 257
    .line 258
    .line 259
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 260
    move-result v3

    .line 261
    const/4 v6, 0x2

    .line 262
    .line 263
    new-array v6, v6, [Lw7/u;

    .line 264
    .line 265
    .line 266
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->a()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 267
    move-result-object v7

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->g()F

    .line 271
    move-result v8

    .line 272
    .line 273
    .line 274
    invoke-static {v8}, Lg8/a;->c(F)I

    .line 275
    move-result v8

    .line 276
    .line 277
    .line 278
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v8

    .line 280
    .line 281
    .line 282
    invoke-static {v7, v8}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 283
    move-result-object v7

    .line 284
    const/4 v8, 0x0

    .line 285
    .line 286
    aput-object v7, v6, v8

    .line 287
    .line 288
    .line 289
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->b()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 290
    move-result-object v7

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Landroidx/compose/ui/text/TextLayoutResult;->j()F

    .line 294
    move-result v4

    .line 295
    .line 296
    .line 297
    invoke-static {v4}, Lg8/a;->c(F)I

    .line 298
    move-result v4

    .line 299
    .line 300
    .line 301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    move-result-object v4

    .line 303
    .line 304
    .line 305
    invoke-static {v7, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 306
    move-result-object v4

    .line 307
    const/4 v7, 0x1

    .line 308
    .line 309
    aput-object v4, v6, v7

    .line 310
    .line 311
    .line 312
    invoke-static {v6}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 313
    move-result-object v4

    .line 314
    .line 315
    new-instance v6, Landroidx/compose/foundation/text/TextController$measurePolicy$1$measure$2;

    .line 316
    .line 317
    .line 318
    invoke-direct {v6, v5}, Landroidx/compose/foundation/text/TextController$measurePolicy$1$measure$2;-><init>(Ljava/util/List;)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v1, v2, v3, v4, v6}, Landroidx/compose/ui/layout/MeasureScope;->G0(IILjava/util/Map;Le8/l;)Landroidx/compose/ui/layout/MeasureResult;

    .line 322
    move-result-object v1

    .line 323
    return-object v1

    .line 324
    .line 325
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 326
    .line 327
    const-string v2, "Check failed."

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 331
    move-result-object v2

    .line 332
    .line 333
    .line 334
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 335
    throw v1
.end method

.method public b(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 7
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
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 20
    move-result-object v0

    .line 21
    const/4 p2, 0x0

    .line 22
    .line 23
    .line 24
    const v1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p3, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 28
    move-result-wide v1

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x4

    .line 35
    const/4 v6, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextDelegate;->m(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;ILjava/lang/Object;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 43
    move-result-wide p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public c(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0
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
    const-string p3, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/TextDelegate;->n(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->e()I

    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public d(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 7
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
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 20
    move-result-object v0

    .line 21
    const/4 p2, 0x0

    .line 22
    .line 23
    .line 24
    const v1, 0x7fffffff

    .line 25
    .line 26
    .line 27
    invoke-static {p2, p3, p2, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->a(IIII)J

    .line 28
    move-result-wide v1

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 32
    move-result-object v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x4

    .line 35
    const/4 v6, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextDelegate;->m(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;ILjava/lang/Object;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->A()J

    .line 43
    move-result-wide p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public e(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 0
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
    const-string p3, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p3, "measurables"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/text/TextDelegate;->n(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 28
    .line 29
    iget-object p1, p0, Landroidx/compose/foundation/text/TextController$measurePolicy$1;->this$0:Landroidx/compose/foundation/text/TextController;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextController;->k()Landroidx/compose/foundation/text/TextState;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextState;->i()Landroidx/compose/foundation/text/TextDelegate;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextDelegate;->c()I

    .line 41
    move-result p1

    .line 42
    return p1
.end method
