.class public Lcom/narvii/widget/Card2View;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field content:Landroid/widget/TextView;

.field imgCount:I

.field imgs:[Lcom/narvii/widget/NVImageView;

.field isDarkTheme:Z

.field isOfficial:Z

.field more:Landroid/view/View;

.field rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->content:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    .line 26
    :goto_0
    if-ge v3, v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    instance-of v5, v4, Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    const/high16 v6, 0x40000000    # 2.0f

    .line 46
    .line 47
    .line 48
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 49
    move-result v5

    .line 50
    float-to-int v5, v5

    .line 51
    .line 52
    iput v5, v4, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 53
    .line 54
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    new-array v1, v2, [Lcom/narvii/widget/NVImageView;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    check-cast v0, [Lcom/narvii/widget/NVImageView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 66
    .line 67
    sget v0, Lcom/narvii/lib/R$id;->mask:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    iput-object v0, p0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    .line 74
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x1

    .line 7
    add-int/2addr v2, v3

    .line 8
    const/4 v4, 0x2

    .line 9
    div-int/2addr v2, v4

    .line 10
    .line 11
    iget v5, v0, Lcom/narvii/widget/Card2View;->imgCount:I

    .line 12
    array-length v1, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result v1

    .line 17
    .line 18
    sub-int v5, p4, p2

    .line 19
    .line 20
    sub-int v6, p5, p3

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v7

    .line 25
    .line 26
    sub-int v7, v5, v7

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 30
    move-result v8

    .line 31
    sub-int/2addr v7, v8

    .line 32
    div-int/2addr v7, v2

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    move-result v8

    .line 37
    .line 38
    iget-object v9, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    move-result v9

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    move-result v10

    .line 47
    .line 48
    sub-int v10, v6, v10

    .line 49
    .line 50
    mul-int/lit8 v11, v7, 0x2

    .line 51
    sub-int/2addr v10, v11

    .line 52
    .line 53
    if-le v9, v10, :cond_0

    .line 54
    .line 55
    if-le v1, v2, :cond_0

    .line 56
    move v1, v2

    .line 57
    :cond_0
    const/4 v9, 0x0

    .line 58
    move v10, v9

    .line 59
    .line 60
    :goto_0
    iget-object v11, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 61
    array-length v12, v11

    .line 62
    const/4 v13, 0x4

    .line 63
    .line 64
    if-ge v10, v12, :cond_2

    .line 65
    .line 66
    aget-object v11, v11, v10

    .line 67
    .line 68
    if-ge v10, v1, :cond_1

    .line 69
    move v13, v9

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    add-int/lit8 v10, v10, 0x1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    iget-object v10, v0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    .line 78
    .line 79
    iget v11, v0, Lcom/narvii/widget/Card2View;->imgCount:I

    .line 80
    .line 81
    if-le v11, v1, :cond_3

    .line 82
    move v13, v9

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 89
    move-result v10

    .line 90
    .line 91
    sub-int v10, v6, v10

    .line 92
    .line 93
    if-nez v1, :cond_4

    .line 94
    move v4, v9

    .line 95
    goto :goto_1

    .line 96
    .line 97
    :cond_4
    if-le v1, v2, :cond_5

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move v4, v3

    .line 100
    :goto_1
    mul-int/2addr v4, v7

    .line 101
    sub-int/2addr v10, v4

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 105
    move-result v1

    .line 106
    .line 107
    sub-int v1, v10, v1

    .line 108
    .line 109
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    move-result v4

    .line 114
    .line 115
    if-le v4, v1, :cond_8

    .line 116
    .line 117
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 121
    move-result v11

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 125
    move-result v12

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 129
    move-result v13

    .line 130
    .line 131
    sub-int v13, v5, v13

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v11, v12, v13, v10}, Landroid/view/View;->layout(IIII)V

    .line 135
    .line 136
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    .line 137
    .line 138
    if-nez v4, :cond_6

    .line 139
    .line 140
    new-instance v4, Landroid/graphics/Rect;

    .line 141
    .line 142
    .line 143
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 144
    .line 145
    iput-object v4, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    .line 146
    .line 147
    :cond_6
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    .line 151
    move-result v4

    .line 152
    move v11, v3

    .line 153
    .line 154
    :goto_2
    if-ge v11, v4, :cond_9

    .line 155
    .line 156
    iget-object v12, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 157
    .line 158
    iget-object v13, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v12, v11, v13}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 162
    .line 163
    iget-object v12, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    .line 164
    .line 165
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 166
    .line 167
    if-le v12, v1, :cond_7

    .line 168
    .line 169
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 170
    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 173
    move-result v4

    .line 174
    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 177
    move-result v11

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 181
    move-result v12

    .line 182
    .line 183
    sub-int v12, v5, v12

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 187
    move-result v13

    .line 188
    .line 189
    iget-object v14, v0, Lcom/narvii/widget/Card2View;->rect:Landroid/graphics/Rect;

    .line 190
    .line 191
    iget v14, v14, Landroid/graphics/Rect;->top:I

    .line 192
    add-int/2addr v13, v14

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v4, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 196
    goto :goto_3

    .line 197
    .line 198
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 199
    goto :goto_2

    .line 200
    .line 201
    :cond_8
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 205
    move-result v4

    .line 206
    .line 207
    sub-int v4, v5, v4

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 211
    move-result v11

    .line 212
    sub-int/2addr v4, v11

    .line 213
    .line 214
    const/high16 v11, 0x40000000    # 2.0f

    .line 215
    .line 216
    .line 217
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 218
    move-result v4

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 222
    move-result v12

    .line 223
    .line 224
    sub-int v12, v10, v12

    .line 225
    .line 226
    .line 227
    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 228
    move-result v11

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v4, v11}, Landroid/view/View;->measure(II)V

    .line 232
    .line 233
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 237
    move-result v4

    .line 238
    .line 239
    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 241
    move-result v11

    .line 242
    .line 243
    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 245
    move-result v12

    .line 246
    .line 247
    sub-int v12, v5, v12

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v4, v11, v12, v10}, Landroid/view/View;->layout(IIII)V

    .line 251
    .line 252
    .line 253
    :cond_9
    :goto_3
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 254
    move-result v1

    .line 255
    .line 256
    if-eqz v1, :cond_c

    .line 257
    .line 258
    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 260
    move-result v1

    .line 261
    .line 262
    iget-object v4, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 263
    array-length v8, v4

    .line 264
    move v11, v10

    .line 265
    move v10, v9

    .line 266
    .line 267
    :goto_4
    if-ge v9, v8, :cond_f

    .line 268
    .line 269
    aget-object v12, v4, v9

    .line 270
    .line 271
    .line 272
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 273
    move-result v13

    .line 274
    .line 275
    if-nez v13, :cond_b

    .line 276
    .line 277
    sub-int v13, v5, v7

    .line 278
    sub-int/2addr v13, v1

    .line 279
    .line 280
    add-int v14, v13, v7

    .line 281
    sub-int/2addr v14, v3

    .line 282
    .line 283
    add-int v15, v11, v7

    .line 284
    .line 285
    add-int/lit8 v3, v15, -0x1

    .line 286
    .line 287
    .line 288
    invoke-virtual {v12, v13, v11, v14, v3}, Landroid/view/View;->layout(IIII)V

    .line 289
    .line 290
    add-int/lit8 v10, v10, 0x1

    .line 291
    .line 292
    if-ne v10, v2, :cond_a

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 296
    move-result v1

    .line 297
    move v11, v15

    .line 298
    goto :goto_5

    .line 299
    :cond_a
    add-int/2addr v1, v7

    .line 300
    .line 301
    :cond_b
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 302
    const/4 v3, 0x1

    .line 303
    goto :goto_4

    .line 304
    .line 305
    :cond_c
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 306
    array-length v3, v1

    .line 307
    move v4, v9

    .line 308
    .line 309
    :goto_6
    if-ge v9, v3, :cond_f

    .line 310
    .line 311
    aget-object v5, v1, v9

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 315
    move-result v11

    .line 316
    .line 317
    if-nez v11, :cond_e

    .line 318
    .line 319
    add-int v11, v8, v7

    .line 320
    .line 321
    add-int/lit8 v12, v11, -0x1

    .line 322
    .line 323
    add-int v13, v10, v7

    .line 324
    .line 325
    add-int/lit8 v14, v13, -0x1

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v8, v10, v12, v14}, Landroid/view/View;->layout(IIII)V

    .line 329
    .line 330
    add-int/lit8 v4, v4, 0x1

    .line 331
    .line 332
    if-ne v4, v2, :cond_d

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 336
    move-result v5

    .line 337
    move v8, v5

    .line 338
    move v10, v13

    .line 339
    goto :goto_7

    .line 340
    :cond_d
    move v8, v11

    .line 341
    .line 342
    :cond_e
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 343
    goto :goto_6

    .line 344
    .line 345
    :cond_f
    iget-object v1, v0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 349
    move-result v1

    .line 350
    .line 351
    if-nez v1, :cond_11

    .line 352
    .line 353
    .line 354
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 355
    move-result v1

    .line 356
    .line 357
    if-eqz v1, :cond_10

    .line 358
    .line 359
    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 361
    move-result v1

    .line 362
    goto :goto_8

    .line 363
    .line 364
    .line 365
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 366
    move-result v1

    .line 367
    const/4 v3, 0x1

    .line 368
    sub-int/2addr v2, v3

    .line 369
    mul-int/2addr v2, v7

    .line 370
    add-int/2addr v1, v2

    .line 371
    .line 372
    .line 373
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 374
    move-result v2

    .line 375
    sub-int/2addr v6, v2

    .line 376
    sub-int/2addr v6, v7

    .line 377
    .line 378
    iget-object v2, v0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    .line 379
    .line 380
    add-int v3, v1, v7

    .line 381
    add-int/2addr v7, v6

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1, v6, v3, v7}, Landroid/view/View;->layout(IIII)V

    .line 385
    :cond_11
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v0

    .line 12
    sub-int/2addr p1, v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v0

    .line 17
    sub-int/2addr p1, v0

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    move-result p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v0

    .line 26
    sub-int/2addr p2, v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v0

    .line 31
    sub-int/2addr p2, v0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 34
    .line 35
    const/high16 v1, 0x40000000    # 2.0f

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result v2

    .line 40
    .line 41
    const/high16 v3, -0x80000000

    .line 42
    .line 43
    .line 44
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 45
    move-result p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, p2}, Landroid/view/View;->measure(II)V

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 51
    array-length v0, p2

    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    div-int/lit8 v0, v0, 0x2

    .line 56
    div-int/2addr p1, v0

    .line 57
    array-length v0, p2

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    :goto_0
    if-ge v2, v0, :cond_0

    .line 61
    .line 62
    aget-object v3, p2, v2

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 66
    move-result v4

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result v5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/Card2View;->more:Landroid/view/View;

    .line 79
    .line 80
    .line 81
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    move-result v0

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 86
    move-result p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    .line 90
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/Card2View;->isDarkTheme:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/Card2View;->isDarkTheme:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/Card2View;->content:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    const/4 p1, -0x1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_1
    const p1, -0x777778

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    return-void
.end method

.method public setImages(Ljava/util/List;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 15
    array-length v2, v2

    .line 16
    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    add-int v2, v1, p2

    .line 20
    .line 21
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/model/Media;

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    .line 31
    :goto_1
    iget-object v3, p0, Lcom/narvii/widget/Card2View;->imgs:[Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    aget-object v3, v3, v1

    .line 34
    .line 35
    instance-of v4, v3, Lcom/narvii/widget/SecretImageView;

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    check-cast v3, Lcom/narvii/widget/SecretImageView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2, p3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 47
    .line 48
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    move-result p1

    .line 54
    sub-int/2addr p1, p2

    .line 55
    .line 56
    iput p1, p0, Lcom/narvii/widget/Card2View;->imgCount:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 60
    return-void
.end method

.method public setOfficial(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/Card2View;->isOfficial:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/widget/Card2View;->isOfficial:Z

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p1, Lcom/narvii/lib/R$drawable;->feed_item_card_2_gold:I

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_1
    sget p1, Lcom/narvii/lib/R$drawable;->feed_item_card_2:I

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18
    return-void
.end method
