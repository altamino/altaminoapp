.class public final Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVelocityTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,576:1\n32#2,6:577\n1#3:583\n*S KotlinDebug\n*F\n+ 1 VelocityTracker.kt\nandroidx/compose/ui/input/pointer/util/VelocityTrackerKt\n*L\n341#1:577,6\n*E\n"
.end annotation


# static fields
.field private static final AssumePointerMoveStoppedMilliseconds:I = 0x28

.field private static final DefaultWeight:F = 1.0f

.field private static final HistorySize:I = 0x14

.field private static final HorizonMilliseconds:I = 0x64

.field private static final MinSampleSize:I = 0x3


# direct methods
.method public static final synthetic a(F)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->c(F)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 8
    .param p0    # Landroidx/compose/ui/input/pointer/util/VelocityTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "event"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->d()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge v2, v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    check-cast v3, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/HistoricalChange;->b()J

    .line 31
    move-result-wide v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/HistoricalChange;->a()J

    .line 35
    move-result-wide v6

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v4, v5, v6, v7}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a(JJ)V

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->l()J

    .line 45
    move-result-wide v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 49
    move-result-wide v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->a(JJ)V

    .line 53
    return-void
.end method

.method private static final c(F)F
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    int-to-float v1, v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 10
    move-result p0

    .line 11
    mul-float/2addr v1, p0

    .line 12
    float-to-double v1, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 16
    move-result-wide v1

    .line 17
    double-to-float p0, v1

    .line 18
    mul-float/2addr v0, p0

    .line 19
    return v0
.end method

.method public static final d(Ljava/util/List;Ljava/util/List;I)Landroidx/compose/ui/input/pointer/util/PolynomialFit;
    .locals 18
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroidx/compose/ui/input/pointer/util/PolynomialFit;"
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
    move/from16 v2, p2

    .line 7
    .line 8
    const-string/jumbo v3, "x"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string/jumbo v3, "y"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-lt v2, v3, :cond_15

    .line 20
    .line 21
    .line 22
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 23
    move-result v4

    .line 24
    .line 25
    .line 26
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 27
    move-result v5

    .line 28
    .line 29
    if-ne v4, v5, :cond_14

    .line 30
    .line 31
    .line 32
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-nez v4, :cond_13

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 39
    move-result v4

    .line 40
    .line 41
    if-lt v2, v4, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 45
    move-result v4

    .line 46
    sub-int/2addr v4, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v4, v2

    .line 49
    :goto_0
    add-int/2addr v2, v3

    .line 50
    .line 51
    new-instance v5, Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    const/4 v6, 0x0

    .line 56
    move v7, v6

    .line 57
    :goto_1
    const/4 v8, 0x0

    .line 58
    .line 59
    if-ge v7, v2, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 73
    move-result v2

    .line 74
    .line 75
    add-int/lit8 v7, v4, 0x1

    .line 76
    .line 77
    new-instance v9, Landroidx/compose/ui/input/pointer/util/Matrix;

    .line 78
    .line 79
    .line 80
    invoke-direct {v9, v7, v2}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 81
    move v10, v6

    .line 82
    .line 83
    :goto_2
    const/high16 v11, 0x3f800000    # 1.0f

    .line 84
    .line 85
    if-ge v10, v2, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v6, v10, v11}, Landroidx/compose/ui/input/pointer/util/Matrix;->c(IIF)V

    .line 89
    move v11, v3

    .line 90
    .line 91
    :goto_3
    if-ge v11, v7, :cond_2

    .line 92
    .line 93
    add-int/lit8 v12, v11, -0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v12, v10}, Landroidx/compose/ui/input/pointer/util/Matrix;->a(II)F

    .line 97
    move-result v12

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v13

    .line 102
    .line 103
    check-cast v13, Ljava/lang/Number;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    .line 107
    move-result v13

    .line 108
    mul-float/2addr v12, v13

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9, v11, v10, v12}, Landroidx/compose/ui/input/pointer/util/Matrix;->c(IIF)V

    .line 112
    .line 113
    add-int/lit8 v11, v11, 0x1

    .line 114
    goto :goto_3

    .line 115
    .line 116
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 117
    goto :goto_2

    .line 118
    .line 119
    :cond_3
    new-instance v10, Landroidx/compose/ui/input/pointer/util/Matrix;

    .line 120
    .line 121
    .line 122
    invoke-direct {v10, v7, v2}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 123
    .line 124
    new-instance v12, Landroidx/compose/ui/input/pointer/util/Matrix;

    .line 125
    .line 126
    .line 127
    invoke-direct {v12, v7, v7}, Landroidx/compose/ui/input/pointer/util/Matrix;-><init>(II)V

    .line 128
    move v13, v6

    .line 129
    .line 130
    :goto_4
    if-ge v13, v7, :cond_b

    .line 131
    move v14, v6

    .line 132
    .line 133
    :goto_5
    if-ge v14, v2, :cond_4

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v13, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->a(II)F

    .line 137
    move-result v15

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, v13, v14, v15}, Landroidx/compose/ui/input/pointer/util/Matrix;->c(IIF)V

    .line 141
    .line 142
    add-int/lit8 v14, v14, 0x1

    .line 143
    goto :goto_5

    .line 144
    :cond_4
    move v14, v6

    .line 145
    .line 146
    :goto_6
    if-ge v14, v13, :cond_6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->b(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 150
    move-result-object v15

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->b(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    .line 157
    invoke-virtual {v15, v3}, Landroidx/compose/ui/input/pointer/util/Vector;->d(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 158
    move-result v3

    .line 159
    move v15, v6

    .line 160
    .line 161
    :goto_7
    if-ge v15, v2, :cond_5

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10, v13, v15}, Landroidx/compose/ui/input/pointer/util/Matrix;->a(II)F

    .line 165
    move-result v16

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v14, v15}, Landroidx/compose/ui/input/pointer/util/Matrix;->a(II)F

    .line 169
    move-result v17

    .line 170
    .line 171
    mul-float v17, v17, v3

    .line 172
    .line 173
    sub-float v8, v16, v17

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v13, v15, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->c(IIF)V

    .line 177
    .line 178
    add-int/lit8 v15, v15, 0x1

    .line 179
    const/4 v8, 0x0

    .line 180
    goto :goto_7

    .line 181
    .line 182
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 183
    const/4 v3, 0x1

    .line 184
    const/4 v8, 0x0

    .line 185
    goto :goto_6

    .line 186
    .line 187
    .line 188
    :cond_6
    invoke-virtual {v10, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->b(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/util/Vector;->b()F

    .line 193
    move-result v3

    .line 194
    float-to-double v14, v3

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    const-wide v16, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 200
    .line 201
    cmpg-double v8, v14, v16

    .line 202
    .line 203
    if-ltz v8, :cond_a

    .line 204
    .line 205
    div-float v3, v11, v3

    .line 206
    move v8, v6

    .line 207
    .line 208
    :goto_8
    if-ge v8, v2, :cond_7

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v13, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->a(II)F

    .line 212
    move-result v14

    .line 213
    mul-float/2addr v14, v3

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10, v13, v8, v14}, Landroidx/compose/ui/input/pointer/util/Matrix;->c(IIF)V

    .line 217
    .line 218
    add-int/lit8 v8, v8, 0x1

    .line 219
    goto :goto_8

    .line 220
    :cond_7
    move v3, v6

    .line 221
    .line 222
    :goto_9
    if-ge v3, v7, :cond_9

    .line 223
    .line 224
    if-ge v3, v13, :cond_8

    .line 225
    const/4 v8, 0x0

    .line 226
    goto :goto_a

    .line 227
    .line 228
    .line 229
    :cond_8
    invoke-virtual {v10, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->b(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 230
    move-result-object v8

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9, v3}, Landroidx/compose/ui/input/pointer/util/Matrix;->b(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 234
    move-result-object v14

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v14}, Landroidx/compose/ui/input/pointer/util/Vector;->d(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 238
    move-result v8

    .line 239
    .line 240
    .line 241
    :goto_a
    invoke-virtual {v12, v13, v3, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->c(IIF)V

    .line 242
    .line 243
    add-int/lit8 v3, v3, 0x1

    .line 244
    goto :goto_9

    .line 245
    .line 246
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 247
    const/4 v3, 0x1

    .line 248
    const/4 v8, 0x0

    .line 249
    goto :goto_4

    .line 250
    .line 251
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 252
    .line 253
    const-string v1, "Vectors are linearly dependent or zero so no solution. TODO(shepshapard), actually determine what this means"

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    throw v0

    .line 258
    .line 259
    :cond_b
    new-instance v3, Landroidx/compose/ui/input/pointer/util/Vector;

    .line 260
    .line 261
    .line 262
    invoke-direct {v3, v2}, Landroidx/compose/ui/input/pointer/util/Vector;-><init>(I)V

    .line 263
    move v8, v6

    .line 264
    .line 265
    :goto_b
    if-ge v8, v2, :cond_c

    .line 266
    .line 267
    .line 268
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    move-result-object v9

    .line 270
    .line 271
    check-cast v9, Ljava/lang/Number;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 275
    move-result v9

    .line 276
    mul-float/2addr v9, v11

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v8, v9}, Landroidx/compose/ui/input/pointer/util/Vector;->c(IF)V

    .line 280
    .line 281
    add-int/lit8 v8, v8, 0x1

    .line 282
    goto :goto_b

    .line 283
    :cond_c
    move v8, v4

    .line 284
    :goto_c
    const/4 v9, -0x1

    .line 285
    .line 286
    if-ge v9, v8, :cond_e

    .line 287
    .line 288
    .line 289
    invoke-virtual {v10, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->b(I)Landroidx/compose/ui/input/pointer/util/Vector;

    .line 290
    move-result-object v9

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v3}, Landroidx/compose/ui/input/pointer/util/Vector;->d(Landroidx/compose/ui/input/pointer/util/Vector;)F

    .line 294
    move-result v9

    .line 295
    .line 296
    .line 297
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 298
    move-result-object v9

    .line 299
    .line 300
    .line 301
    invoke-interface {v5, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    add-int/lit8 v9, v8, 0x1

    .line 304
    .line 305
    if-gt v9, v4, :cond_d

    .line 306
    move v13, v4

    .line 307
    .line 308
    .line 309
    :goto_d
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 310
    move-result-object v14

    .line 311
    .line 312
    check-cast v14, Ljava/lang/Number;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 316
    move-result v14

    .line 317
    .line 318
    .line 319
    invoke-virtual {v12, v8, v13}, Landroidx/compose/ui/input/pointer/util/Matrix;->a(II)F

    .line 320
    move-result v15

    .line 321
    .line 322
    .line 323
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 324
    move-result-object v16

    .line 325
    .line 326
    check-cast v16, Ljava/lang/Number;

    .line 327
    .line 328
    .line 329
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    .line 330
    move-result v16

    .line 331
    .line 332
    mul-float v15, v15, v16

    .line 333
    sub-float/2addr v14, v15

    .line 334
    .line 335
    .line 336
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 337
    move-result-object v14

    .line 338
    .line 339
    .line 340
    invoke-interface {v5, v8, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    if-eq v13, v9, :cond_d

    .line 343
    .line 344
    add-int/lit8 v13, v13, -0x1

    .line 345
    goto :goto_d

    .line 346
    .line 347
    .line 348
    :cond_d
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    move-result-object v9

    .line 350
    .line 351
    check-cast v9, Ljava/lang/Number;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 355
    move-result v9

    .line 356
    .line 357
    .line 358
    invoke-virtual {v12, v8, v8}, Landroidx/compose/ui/input/pointer/util/Matrix;->a(II)F

    .line 359
    move-result v13

    .line 360
    div-float/2addr v9, v13

    .line 361
    .line 362
    .line 363
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 364
    move-result-object v9

    .line 365
    .line 366
    .line 367
    invoke-interface {v5, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    add-int/lit8 v8, v8, -0x1

    .line 370
    goto :goto_c

    .line 371
    :cond_e
    move v3, v6

    .line 372
    const/4 v4, 0x0

    .line 373
    .line 374
    :goto_e
    if-ge v3, v2, :cond_f

    .line 375
    .line 376
    .line 377
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 378
    move-result-object v8

    .line 379
    .line 380
    check-cast v8, Ljava/lang/Number;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 384
    move-result v8

    .line 385
    add-float/2addr v4, v8

    .line 386
    .line 387
    add-int/lit8 v3, v3, 0x1

    .line 388
    goto :goto_e

    .line 389
    :cond_f
    int-to-float v3, v2

    .line 390
    div-float/2addr v4, v3

    .line 391
    move v9, v6

    .line 392
    const/4 v3, 0x0

    .line 393
    const/4 v8, 0x0

    .line 394
    .line 395
    :goto_f
    if-ge v9, v2, :cond_11

    .line 396
    .line 397
    .line 398
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 399
    move-result-object v10

    .line 400
    .line 401
    check-cast v10, Ljava/lang/Number;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 405
    move-result v10

    .line 406
    .line 407
    .line 408
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 409
    move-result-object v12

    .line 410
    .line 411
    check-cast v12, Ljava/lang/Number;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 415
    move-result v12

    .line 416
    sub-float/2addr v10, v12

    .line 417
    move v13, v11

    .line 418
    const/4 v12, 0x1

    .line 419
    .line 420
    :goto_10
    if-ge v12, v7, :cond_10

    .line 421
    .line 422
    .line 423
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 424
    move-result-object v14

    .line 425
    .line 426
    check-cast v14, Ljava/lang/Number;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 430
    move-result v14

    .line 431
    mul-float/2addr v13, v14

    .line 432
    .line 433
    .line 434
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    move-result-object v14

    .line 436
    .line 437
    check-cast v14, Ljava/lang/Number;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 441
    move-result v14

    .line 442
    mul-float/2addr v14, v13

    .line 443
    sub-float/2addr v10, v14

    .line 444
    .line 445
    add-int/lit8 v12, v12, 0x1

    .line 446
    goto :goto_10

    .line 447
    .line 448
    :cond_10
    mul-float v12, v10, v11

    .line 449
    mul-float/2addr v12, v10

    .line 450
    add-float/2addr v3, v12

    .line 451
    .line 452
    .line 453
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 454
    move-result-object v10

    .line 455
    .line 456
    check-cast v10, Ljava/lang/Number;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 460
    move-result v10

    .line 461
    sub-float/2addr v10, v4

    .line 462
    .line 463
    mul-float v12, v10, v11

    .line 464
    mul-float/2addr v12, v10

    .line 465
    add-float/2addr v8, v12

    .line 466
    .line 467
    add-int/lit8 v9, v9, 0x1

    .line 468
    goto :goto_f

    .line 469
    .line 470
    .line 471
    :cond_11
    const v0, 0x358637bd    # 1.0E-6f

    .line 472
    .line 473
    cmpg-float v0, v8, v0

    .line 474
    .line 475
    if-gtz v0, :cond_12

    .line 476
    goto :goto_11

    .line 477
    :cond_12
    div-float/2addr v3, v8

    .line 478
    sub-float/2addr v11, v3

    .line 479
    .line 480
    :goto_11
    new-instance v0, Landroidx/compose/ui/input/pointer/util/PolynomialFit;

    .line 481
    .line 482
    .line 483
    invoke-direct {v0, v5, v11}, Landroidx/compose/ui/input/pointer/util/PolynomialFit;-><init>(Ljava/util/List;F)V

    .line 484
    return-object v0

    .line 485
    .line 486
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 487
    .line 488
    const-string v1, "At least one point must be provided"

    .line 489
    .line 490
    .line 491
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 492
    throw v0

    .line 493
    .line 494
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 495
    .line 496
    const-string/jumbo v1, "x and y must be the same length"

    .line 497
    .line 498
    .line 499
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 500
    throw v0

    .line 501
    .line 502
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 503
    .line 504
    const-string v1, "The degree must be at positive integer"

    .line 505
    .line 506
    .line 507
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 508
    throw v0
.end method
