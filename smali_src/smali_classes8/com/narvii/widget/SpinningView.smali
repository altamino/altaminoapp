.class public Lcom/narvii/widget/SpinningView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field color:I

.field paint:Landroid/graphics/Paint;

.field rectf:Landroid/graphics/RectF;

.field size:I

.field style:I

.field time:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->SpinningView:[I

    .line 6
    .line 7
    sget v1, Lcom/narvii/lib/R$style;->SpinningView:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinStyle:I

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 18
    move-result p2

    .line 19
    .line 20
    iput p2, p0, Lcom/narvii/widget/SpinningView;->style:I

    .line 21
    .line 22
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinSize:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 26
    move-result p2

    .line 27
    .line 28
    iput p2, p0, Lcom/narvii/widget/SpinningView;->size:I

    .line 29
    .line 30
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinColor:I

    .line 31
    .line 32
    .line 33
    const v0, -0x777778

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 37
    move-result p2

    .line 38
    .line 39
    iput p2, p0, Lcom/narvii/widget/SpinningView;->color:I

    .line 40
    .line 41
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinTime:I

    .line 42
    .line 43
    const/16 v0, 0x258

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 47
    move-result p2

    .line 48
    .line 49
    iput p2, p0, Lcom/narvii/widget/SpinningView;->time:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    new-instance p1, Landroid/graphics/RectF;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    .line 60
    .line 61
    new-instance p1, Landroid/graphics/Paint;

    .line 62
    .line 63
    .line 64
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 67
    const/4 p2, 0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 19
    move-result-wide v3

    .line 20
    .line 21
    iget v5, v0, Lcom/narvii/widget/SpinningView;->style:I

    .line 22
    const/4 v6, 0x2

    .line 23
    .line 24
    if-eqz v5, :cond_2

    .line 25
    const/4 v8, 0x1

    .line 26
    .line 27
    if-ne v5, v8, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    if-ne v5, v6, :cond_4

    .line 32
    .line 33
    iget v5, v0, Lcom/narvii/widget/SpinningView;->size:I

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result v5

    .line 40
    div-int/2addr v5, v6

    .line 41
    :goto_0
    move v8, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    div-int/2addr v5, v6

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :goto_1
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 54
    .line 55
    mul-int/lit8 v9, v8, 0xf

    .line 56
    .line 57
    div-int/lit8 v9, v9, 0x64

    .line 58
    int-to-float v9, v9

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    .line 63
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 64
    .line 65
    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    .line 70
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 71
    .line 72
    iget v9, v0, Lcom/narvii/widget/SpinningView;->color:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    div-int/2addr v1, v6

    .line 80
    int-to-float v1, v1

    .line 81
    div-int/2addr v2, v6

    .line 82
    int-to-float v2, v2

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    .line 87
    mul-int/lit8 v1, v8, 0x55

    .line 88
    .line 89
    div-int/lit8 v1, v1, 0x64

    .line 90
    .line 91
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    .line 92
    neg-int v5, v1

    .line 93
    int-to-float v5, v5

    .line 94
    .line 95
    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 96
    int-to-float v1, v1

    .line 97
    .line 98
    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 99
    .line 100
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 101
    .line 102
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    .line 103
    long-to-double v9, v3

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 109
    .line 110
    mul-double v13, v9, v11

    .line 111
    .line 112
    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    .line 113
    int-to-double v3, v1

    .line 114
    .line 115
    div-double v3, v13, v3

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    const-wide v15, 0x4076800000000000L    # 360.0

    .line 121
    rem-double/2addr v3, v15

    .line 122
    double-to-float v3, v3

    .line 123
    .line 124
    const/high16 v4, 0x42700000    # 60.0f

    .line 125
    const/4 v5, 0x0

    .line 126
    .line 127
    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 128
    .line 129
    move-object/from16 v1, p1

    .line 130
    .line 131
    .line 132
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 133
    .line 134
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    .line 135
    .line 136
    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    .line 137
    int-to-double v3, v1

    .line 138
    div-double/2addr v13, v3

    .line 139
    add-double/2addr v13, v11

    .line 140
    rem-double/2addr v13, v15

    .line 141
    double-to-float v3, v13

    .line 142
    .line 143
    const/high16 v4, 0x42700000    # 60.0f

    .line 144
    .line 145
    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 146
    .line 147
    move-object/from16 v1, p1

    .line 148
    .line 149
    .line 150
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 151
    .line 152
    mul-int/lit8 v8, v8, 0x3c

    .line 153
    .line 154
    div-int/lit8 v8, v8, 0x64

    .line 155
    .line 156
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    .line 157
    neg-int v1, v8

    .line 158
    int-to-float v1, v1

    .line 159
    .line 160
    iput v1, v2, Landroid/graphics/RectF;->left:F

    .line 161
    int-to-float v3, v8

    .line 162
    .line 163
    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 164
    .line 165
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 166
    .line 167
    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    const-wide v3, 0x406a400000000000L    # 210.0

    .line 173
    mul-double/2addr v9, v3

    .line 174
    .line 175
    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    .line 176
    int-to-double v3, v1

    .line 177
    .line 178
    div-double v3, v9, v3

    .line 179
    rem-double/2addr v3, v15

    .line 180
    double-to-float v3, v3

    .line 181
    .line 182
    const/high16 v4, 0x42700000    # 60.0f

    .line 183
    .line 184
    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 185
    .line 186
    move-object/from16 v1, p1

    .line 187
    .line 188
    .line 189
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 190
    .line 191
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    .line 192
    .line 193
    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    .line 194
    int-to-double v3, v1

    .line 195
    div-double/2addr v9, v3

    .line 196
    add-double/2addr v9, v11

    .line 197
    rem-double/2addr v9, v15

    .line 198
    double-to-float v3, v9

    .line 199
    .line 200
    const/high16 v4, 0x42700000    # 60.0f

    .line 201
    .line 202
    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 203
    .line 204
    move-object/from16 v1, p1

    .line 205
    .line 206
    .line 207
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 211
    goto :goto_4

    .line 212
    .line 213
    :cond_2
    :goto_2
    iget v5, v0, Lcom/narvii/widget/SpinningView;->size:I

    .line 214
    .line 215
    if-nez v5, :cond_3

    .line 216
    .line 217
    div-int/lit8 v5, v1, 0x9

    .line 218
    goto :goto_3

    .line 219
    .line 220
    :cond_3
    div-int/lit8 v5, v5, 0x9

    .line 221
    .line 222
    :goto_3
    iget-object v8, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 223
    .line 224
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    .line 229
    iget-object v8, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 230
    .line 231
    iget v9, v0, Lcom/narvii/widget/SpinningView;->color:I

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    div-int/2addr v1, v6

    .line 239
    int-to-float v1, v1

    .line 240
    div-int/2addr v2, v6

    .line 241
    int-to-float v2, v2

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    long-to-double v1, v3

    .line 246
    .line 247
    iget v3, v0, Lcom/narvii/widget/SpinningView;->time:I

    .line 248
    int-to-double v3, v3

    .line 249
    .line 250
    div-double v3, v1, v3

    .line 251
    .line 252
    const-wide/16 v8, 0x0

    .line 253
    add-double/2addr v3, v8

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    .line 259
    mul-double/2addr v3, v8

    .line 260
    .line 261
    .line 262
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 263
    move-result-wide v3

    .line 264
    double-to-float v3, v3

    .line 265
    neg-int v4, v5

    .line 266
    int-to-float v4, v4

    .line 267
    .line 268
    const/high16 v6, 0x40400000    # 3.0f

    .line 269
    mul-float/2addr v4, v6

    .line 270
    int-to-float v5, v5

    .line 271
    mul-float/2addr v3, v5

    .line 272
    .line 273
    iget-object v10, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 274
    const/4 v11, 0x0

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v4, v11, v3, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 278
    .line 279
    iget v3, v0, Lcom/narvii/widget/SpinningView;->time:I

    .line 280
    int-to-double v3, v3

    .line 281
    .line 282
    div-double v3, v1, v3

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    const-wide v12, -0x402ccccccccccccdL    # -0.3

    .line 288
    add-double/2addr v3, v12

    .line 289
    mul-double/2addr v3, v8

    .line 290
    .line 291
    .line 292
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 293
    move-result-wide v3

    .line 294
    double-to-float v3, v3

    .line 295
    mul-float/2addr v3, v5

    .line 296
    .line 297
    iget-object v4, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7, v11, v11, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 301
    .line 302
    iget v3, v0, Lcom/narvii/widget/SpinningView;->time:I

    .line 303
    int-to-double v3, v3

    .line 304
    div-double/2addr v1, v3

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    const-wide v3, -0x401ccccccccccccdL    # -0.6

    .line 310
    add-double/2addr v1, v3

    .line 311
    mul-double/2addr v1, v8

    .line 312
    .line 313
    .line 314
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 315
    move-result-wide v1

    .line 316
    double-to-float v1, v1

    .line 317
    mul-float/2addr v6, v5

    .line 318
    mul-float/2addr v5, v1

    .line 319
    .line 320
    iget-object v1, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7, v6, v11, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 327
    .line 328
    .line 329
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 330
    return-void
.end method

.method public setSpinColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/SpinningView;->color:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
