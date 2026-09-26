.class public Lcom/narvii/chat/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field static final pressedFilter:Landroid/graphics/ColorFilter;

.field static final rect:Landroid/graphics/Rect;

.field static final rectf:Landroid/graphics/RectF;


# instance fields
.field protected hideArrow:Z

.field protected l:I

.field protected left:Z

.field protected middleArrow:Z

.field protected paddingH:I

.field protected paddingV:I

.field protected final paint:Landroid/graphics/Paint;

.field protected final path:Landroid/graphics/Path;

.field protected pressed:Z

.field protected r:I

.field protected t:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/chat/BubbleDrawable;->rect:Landroid/graphics/Rect;

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/RectF;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 20
    .line 21
    .line 22
    const v1, 0x3f4ccccd    # 0.8f

    .line 23
    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 28
    .line 29
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 33
    .line 34
    sput-object v1, Lcom/narvii/chat/BubbleDrawable;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    .line 21
    .line 22
    const v1, -0x333334

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Path;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result v3

    .line 21
    .line 22
    iget-object v4, v0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 23
    .line 24
    iget-boolean v5, v0, Lcom/narvii/chat/BubbleDrawable;->pressed:Z

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    sget-object v5, Lcom/narvii/chat/BubbleDrawable;->pressedFilter:Landroid/graphics/ColorFilter;

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    if-ge v2, v4, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    .line 44
    move-result v4

    .line 45
    .line 46
    if-ge v3, v4, :cond_4

    .line 47
    .line 48
    iget-boolean v4, v0, Lcom/narvii/chat/BubbleDrawable;->middleArrow:Z

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    div-int/lit8 v4, v3, 0x2

    .line 53
    .line 54
    iput v4, v0, Lcom/narvii/chat/BubbleDrawable;->t:I

    .line 55
    .line 56
    :cond_1
    iget v4, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 57
    int-to-float v4, v4

    .line 58
    .line 59
    .line 60
    const v6, 0x3fb33333    # 1.4f

    .line 61
    mul-float/2addr v4, v6

    .line 62
    .line 63
    iget-boolean v6, v0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    .line 64
    .line 65
    const/high16 v7, 0x40800000    # 4.0f

    .line 66
    .line 67
    const/high16 v8, 0x40400000    # 3.0f

    .line 68
    .line 69
    const/high16 v9, 0x40a00000    # 5.0f

    .line 70
    .line 71
    const/high16 v10, 0x40000000    # 2.0f

    .line 72
    .line 73
    const/high16 v11, 0x41000000    # 8.0f

    .line 74
    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    iget-object v6, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 81
    .line 82
    sget-object v6, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    .line 83
    .line 84
    iget v12, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 85
    int-to-float v12, v12

    .line 86
    .line 87
    iput v12, v6, Landroid/graphics/RectF;->left:F

    .line 88
    int-to-float v2, v2

    .line 89
    .line 90
    iput v2, v6, Landroid/graphics/RectF;->right:F

    .line 91
    .line 92
    iput v5, v6, Landroid/graphics/RectF;->top:F

    .line 93
    int-to-float v2, v3

    .line 94
    .line 95
    iput v2, v6, Landroid/graphics/RectF;->bottom:F

    .line 96
    .line 97
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 98
    .line 99
    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->r:I

    .line 100
    int-to-float v5, v3

    .line 101
    int-to-float v3, v3

    .line 102
    .line 103
    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v6, v5, v3, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 107
    .line 108
    iget v2, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 109
    .line 110
    if-lez v2, :cond_3

    .line 111
    .line 112
    iget-boolean v3, v0, Lcom/narvii/chat/BubbleDrawable;->hideArrow:Z

    .line 113
    .line 114
    if-nez v3, :cond_3

    .line 115
    .line 116
    div-int/lit8 v3, v2, 0x4

    .line 117
    .line 118
    iget v5, v0, Lcom/narvii/chat/BubbleDrawable;->t:I

    .line 119
    .line 120
    div-int/lit8 v6, v2, 0x2

    .line 121
    sub-int/2addr v5, v6

    .line 122
    sub-int/2addr v5, v3

    .line 123
    .line 124
    iget-object v3, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 125
    int-to-float v2, v2

    .line 126
    int-to-float v5, v5

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 130
    .line 131
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 132
    .line 133
    iget v2, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 134
    int-to-float v3, v2

    .line 135
    .line 136
    div-float v6, v4, v10

    .line 137
    .line 138
    sub-float v13, v3, v6

    .line 139
    int-to-float v3, v2

    .line 140
    mul-float/2addr v9, v4

    .line 141
    div-float/2addr v9, v11

    .line 142
    .line 143
    sub-float v15, v3, v9

    .line 144
    mul-float/2addr v8, v4

    .line 145
    div-float/2addr v8, v11

    .line 146
    .line 147
    sub-float v16, v5, v8

    .line 148
    int-to-float v2, v2

    .line 149
    .line 150
    sub-float v17, v2, v9

    .line 151
    mul-float/2addr v10, v4

    .line 152
    div-float/2addr v10, v11

    .line 153
    .line 154
    sub-float v18, v5, v10

    .line 155
    move v14, v5

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 159
    .line 160
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 161
    .line 162
    iget v2, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 163
    int-to-float v3, v2

    .line 164
    .line 165
    sub-float v13, v3, v9

    .line 166
    int-to-float v3, v2

    .line 167
    .line 168
    sub-float v15, v3, v8

    .line 169
    mul-float/2addr v4, v7

    .line 170
    div-float/2addr v4, v11

    .line 171
    .line 172
    add-float v16, v5, v4

    .line 173
    int-to-float v2, v2

    .line 174
    .line 175
    add-float v18, v5, v9

    .line 176
    .line 177
    move/from16 v17, v2

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 181
    .line 182
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_2
    iget-object v6, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 193
    .line 194
    sget-object v6, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    .line 195
    .line 196
    iput v5, v6, Landroid/graphics/RectF;->left:F

    .line 197
    .line 198
    iget v12, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 199
    .line 200
    sub-int v12, v2, v12

    .line 201
    int-to-float v12, v12

    .line 202
    .line 203
    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 204
    .line 205
    iput v5, v6, Landroid/graphics/RectF;->top:F

    .line 206
    int-to-float v3, v3

    .line 207
    .line 208
    iput v3, v6, Landroid/graphics/RectF;->bottom:F

    .line 209
    .line 210
    iget-object v3, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 211
    .line 212
    iget v5, v0, Lcom/narvii/chat/BubbleDrawable;->r:I

    .line 213
    int-to-float v12, v5

    .line 214
    int-to-float v5, v5

    .line 215
    .line 216
    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v6, v12, v5, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 220
    .line 221
    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 222
    .line 223
    if-lez v3, :cond_3

    .line 224
    .line 225
    iget-boolean v5, v0, Lcom/narvii/chat/BubbleDrawable;->hideArrow:Z

    .line 226
    .line 227
    if-nez v5, :cond_3

    .line 228
    .line 229
    div-int/lit8 v5, v3, 0x4

    .line 230
    .line 231
    iget v6, v0, Lcom/narvii/chat/BubbleDrawable;->t:I

    .line 232
    .line 233
    div-int/lit8 v12, v3, 0x2

    .line 234
    sub-int/2addr v6, v12

    .line 235
    sub-int/2addr v6, v5

    .line 236
    .line 237
    iget-object v5, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 238
    .line 239
    sub-int v3, v2, v3

    .line 240
    int-to-float v3, v3

    .line 241
    int-to-float v6, v6

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    .line 246
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 247
    .line 248
    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 249
    .line 250
    sub-int v5, v2, v3

    .line 251
    int-to-float v5, v5

    .line 252
    .line 253
    div-float v13, v4, v10

    .line 254
    add-float/2addr v13, v5

    .line 255
    .line 256
    sub-int v5, v2, v3

    .line 257
    int-to-float v5, v5

    .line 258
    mul-float/2addr v9, v4

    .line 259
    div-float/2addr v9, v11

    .line 260
    .line 261
    add-float v15, v5, v9

    .line 262
    mul-float/2addr v8, v4

    .line 263
    div-float/2addr v8, v11

    .line 264
    .line 265
    sub-float v16, v6, v8

    .line 266
    .line 267
    sub-int v3, v2, v3

    .line 268
    int-to-float v3, v3

    .line 269
    .line 270
    add-float v17, v3, v9

    .line 271
    mul-float/2addr v10, v4

    .line 272
    div-float/2addr v10, v11

    .line 273
    .line 274
    sub-float v18, v6, v10

    .line 275
    move v14, v6

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 279
    .line 280
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 281
    .line 282
    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 283
    .line 284
    sub-int v5, v2, v3

    .line 285
    int-to-float v5, v5

    .line 286
    .line 287
    add-float v13, v5, v9

    .line 288
    .line 289
    sub-int v5, v2, v3

    .line 290
    int-to-float v5, v5

    .line 291
    .line 292
    add-float v15, v5, v8

    .line 293
    mul-float/2addr v4, v7

    .line 294
    div-float/2addr v4, v11

    .line 295
    .line 296
    add-float v16, v6, v4

    .line 297
    sub-int/2addr v2, v3

    .line 298
    int-to-float v2, v2

    .line 299
    .line 300
    add-float v18, v6, v9

    .line 301
    .line 302
    move/from16 v17, v2

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 306
    .line 307
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 311
    .line 312
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    .line 313
    .line 314
    iget-object v3, v0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    goto :goto_3

    .line 319
    .line 320
    :cond_4
    iget-boolean v4, v0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    .line 321
    .line 322
    if-eqz v4, :cond_5

    .line 323
    .line 324
    sget-object v4, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    .line 325
    .line 326
    iget v6, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 327
    int-to-float v6, v6

    .line 328
    .line 329
    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 330
    int-to-float v2, v2

    .line 331
    .line 332
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 333
    .line 334
    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 335
    int-to-float v2, v3

    .line 336
    .line 337
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 338
    goto :goto_2

    .line 339
    .line 340
    :cond_5
    sget-object v4, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    .line 341
    .line 342
    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 343
    .line 344
    iget v6, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 345
    sub-int/2addr v2, v6

    .line 346
    int-to-float v2, v2

    .line 347
    .line 348
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 349
    .line 350
    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 351
    int-to-float v2, v3

    .line 352
    .line 353
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 354
    .line 355
    :goto_2
    sget-object v2, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    .line 356
    .line 357
    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->r:I

    .line 358
    int-to-float v4, v3

    .line 359
    int-to-float v3, v3

    .line 360
    .line 361
    iget-object v5, v0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 365
    :goto_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingH:I

    .line 3
    .line 4
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 5
    .line 6
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 21
    add-int/2addr v0, v1

    .line 22
    .line 23
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 26
    add-int/2addr v0, v1

    .line 27
    .line 28
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 34
    add-int/2addr v0, v1

    .line 35
    .line 36
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 40
    add-int/2addr v0, v1

    .line 41
    .line 42
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 43
    .line 44
    :goto_0
    iget v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingV:I

    .line 45
    .line 46
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 49
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setArrowMiddle(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->middleArrow:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setArrowSize(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public setDefault(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0700d4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->r:I

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0700e1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->t:I

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0700d5

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    move-result v0

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0700de

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v0

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingH:I

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0700df

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v0

    .line 48
    .line 49
    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingV:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    const v1, 0x7f06008c

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 58
    move-result p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 65
    return-void
.end method

.method public setDirection(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    :cond_0
    return-void
.end method

.method public setHideArrow(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->hideArrow:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/BubbleDrawable;->r:I

    return-void
.end method

.method public setState([I)Z
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const/4 v4, 0x1

    .line 6
    .line 7
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    aget v5, p1, v2

    .line 10
    .line 11
    .line 12
    const v6, 0x10100a7

    .line 13
    .line 14
    if-ne v5, v6, :cond_0

    .line 15
    move v3, v4

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->pressed:Z

    .line 24
    .line 25
    if-eq p1, v3, :cond_2

    .line 26
    .line 27
    iput-boolean v3, p0, Lcom/narvii/chat/BubbleDrawable;->pressed:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 31
    return v4

    .line 32
    :cond_2
    return v1
.end method
