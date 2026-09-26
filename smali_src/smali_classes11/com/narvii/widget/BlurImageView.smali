.class public Lcom/narvii/widget/BlurImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private blurRadius:I

.field private bmp:Landroid/graphics/Bitmap;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private ignoreResize:Z

.field private lightenColor:I

.field private origHeight:I

.field private origWidth:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->BlurImageView:[I

    .line 6
    .line 7
    sget v1, Lcom/narvii/lib/R$style;->BlurImageView:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    sget p2, Lcom/narvii/lib/R$styleable;->BlurImageView_blurRadius:I

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 19
    move-result p2

    .line 20
    .line 21
    iput p2, p0, Lcom/narvii/widget/BlurImageView;->blurRadius:I

    .line 22
    .line 23
    sget p2, Lcom/narvii/lib/R$styleable;->BlurImageView_lightenColor:I

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 28
    move-result p2

    .line 29
    .line 30
    iput p2, p0, Lcom/narvii/widget/BlurImageView;->lightenColor:I

    .line 31
    .line 32
    sget p2, Lcom/narvii/lib/R$styleable;->BlurImageView_ignoreResize:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 36
    move-result p2

    .line 37
    .line 38
    iput-boolean p2, p0, Lcom/narvii/widget/BlurImageView;->ignoreResize:Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .line 43
    new-instance p1, Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    .line 49
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    :goto_0
    iget v1, p0, Lcom/narvii/widget/BlurImageView;->blurRadius:I

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_7

    .line 16
    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-lez v1, :cond_7

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-gtz v1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    iget v1, p0, Lcom/narvii/widget/BlurImageView;->origWidth:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    move-result v4

    .line 38
    sub-int/2addr v1, v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    move-result v4

    .line 43
    sub-int/2addr v1, v4

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    div-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    iget v4, p0, Lcom/narvii/widget/BlurImageView;->origHeight:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 53
    move-result v5

    .line 54
    sub-int/2addr v4, v5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 58
    move-result v5

    .line 59
    sub-int/2addr v4, v5

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    div-int/lit8 v4, v4, 0x2

    .line 64
    .line 65
    iget-object v5, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 71
    move-result v5

    .line 72
    .line 73
    if-ne v5, v1, :cond_2

    .line 74
    .line 75
    iget-object v5, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 79
    move-result v5

    .line 80
    .line 81
    if-eq v5, v4, :cond_8

    .line 82
    :cond_2
    const/4 v5, 0x0

    .line 83
    .line 84
    :try_start_0
    instance-of v6, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    move-object v6, v0

    .line 88
    .line 89
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 93
    move-result-object v6

    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    .line 97
    goto/16 :goto_5

    .line 98
    :cond_3
    move-object v6, v5

    .line 99
    .line 100
    :goto_1
    if-eqz v6, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 104
    move-result v7

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 108
    move-result v8

    .line 109
    goto :goto_2

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 113
    move-result v7

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 117
    move-result v8

    .line 118
    .line 119
    :goto_2
    mul-int v9, v7, v4

    .line 120
    .line 121
    mul-int v10, v1, v8

    .line 122
    .line 123
    const/high16 v11, 0x3f000000    # 0.5f

    .line 124
    .line 125
    if-le v9, v10, :cond_5

    .line 126
    int-to-float v9, v4

    .line 127
    int-to-float v10, v8

    .line 128
    div-float/2addr v9, v10

    .line 129
    int-to-float v10, v1

    .line 130
    int-to-float v12, v7

    .line 131
    mul-float/2addr v12, v9

    .line 132
    sub-float/2addr v10, v12

    .line 133
    mul-float/2addr v10, v11

    .line 134
    move v11, v3

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    int-to-float v9, v1

    .line 137
    int-to-float v10, v7

    .line 138
    div-float/2addr v9, v10

    .line 139
    int-to-float v10, v4

    .line 140
    int-to-float v12, v8

    .line 141
    mul-float/2addr v12, v9

    .line 142
    sub-float/2addr v10, v12

    .line 143
    mul-float/2addr v10, v11

    .line 144
    move v11, v10

    .line 145
    move v10, v3

    .line 146
    .line 147
    :goto_3
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 148
    .line 149
    .line 150
    invoke-static {v1, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    iput-object v1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 154
    const/4 v4, -0x1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 158
    .line 159
    new-instance v1, Landroid/graphics/Canvas;

    .line 160
    .line 161
    iget-object v12, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 171
    .line 172
    if-eqz v6, :cond_6

    .line 173
    .line 174
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    .line 179
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v6, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    goto :goto_4

    .line 184
    .line 185
    .line 186
    :cond_6
    invoke-virtual {v0, v2, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    .line 191
    :goto_4
    new-instance v0, Lcom/narvii/util/blur/NativeBlurProcess;

    .line 192
    .line 193
    .line 194
    invoke-direct {v0}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    .line 195
    .line 196
    iget-object v1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 197
    .line 198
    iget v4, p0, Lcom/narvii/widget/BlurImageView;->blurRadius:I

    .line 199
    int-to-float v4, v4

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1, v4}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    iput-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    goto :goto_7

    .line 207
    .line 208
    :goto_5
    iput-object v5, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 209
    .line 210
    const-string v1, "fail to process blur image"

    .line 211
    .line 212
    .line 213
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    goto :goto_7

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    .line 219
    :cond_8
    :goto_7
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 220
    .line 221
    if-nez v0, :cond_9

    .line 222
    .line 223
    .line 224
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    goto :goto_8

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 229
    .line 230
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    .line 231
    .line 232
    const/high16 v1, -0x1000000

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 239
    move-result v0

    .line 240
    .line 241
    iget v1, p0, Lcom/narvii/widget/BlurImageView;->origHeight:I

    .line 242
    sub-int/2addr v0, v1

    .line 243
    .line 244
    div-int/lit8 v0, v0, 0x2

    .line 245
    .line 246
    .line 247
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 248
    move-result v0

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 252
    move-result v1

    .line 253
    int-to-float v1, v1

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 257
    move-result v2

    .line 258
    int-to-float v2, v2

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 262
    int-to-float v0, v0

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    .line 267
    const/high16 v0, 0x40000000    # 2.0f

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 271
    .line 272
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 273
    .line 274
    iget-object v1, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 281
    .line 282
    :goto_8
    iget v0, p0, Lcom/narvii/widget/BlurImageView;->lightenColor:I

    .line 283
    .line 284
    .line 285
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 286
    move-result v0

    .line 287
    .line 288
    if-lez v0, :cond_a

    .line 289
    .line 290
    iget-object v0, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    .line 291
    .line 292
    iget v1, p0, Lcom/narvii/widget/BlurImageView;->lightenColor:I

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    const/4 v3, 0x0

    .line 297
    const/4 v4, 0x0

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 301
    move-result v0

    .line 302
    int-to-float v5, v0

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 306
    move-result v0

    .line 307
    int-to-float v6, v0

    .line 308
    .line 309
    iget-object v7, p0, Lcom/narvii/widget/BlurImageView;->paint:Landroid/graphics/Paint;

    .line 310
    move-object v2, p1

    .line 311
    .line 312
    .line 313
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 314
    :cond_a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/widget/BlurImageView;->ignoreResize:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/narvii/widget/BlurImageView;->origWidth:I

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    move-result p1

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/widget/BlurImageView;->origWidth:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/widget/BlurImageView;->origHeight:I

    .line 24
    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 14
    :cond_0
    return-void
.end method

.method public setImageDrawable2(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 13
    .line 14
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/widget/BlurImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 39
    :cond_2
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/widget/BlurImageView;->bmp:Landroid/graphics/Bitmap;

    .line 14
    :cond_0
    return-void
.end method
