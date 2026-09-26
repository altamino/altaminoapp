.class public Lcom/narvii/widget/PopupBubble;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected autoRtl:Z

.field protected backgroundColor:I

.field protected indicatorSize:I

.field protected indicatorTop:Z

.field protected indicatorX:I

.field private paddingIncludeRadius:Z

.field protected radius:I

.field protected shadowColor:I

.field protected shadowSize:I

.field protected strokeColor:I

.field protected strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/widget/PopupBubble;->autoRtl:Z

    .line 7
    .line 8
    new-instance v1, Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/lib/R$styleable;->PopupBubble:[I

    .line 21
    .line 22
    sget v2, Lcom/narvii/lib/R$style;->PopupBubble:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleRadius:I

    .line 29
    .line 30
    const/16 v1, 0x14

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 34
    move-result p2

    .line 35
    .line 36
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 37
    .line 38
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleShadowSize:I

    .line 39
    .line 40
    const/16 v1, 0x12

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 44
    move-result p2

    .line 45
    .line 46
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 47
    .line 48
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleShadowColor:I

    .line 49
    .line 50
    const/high16 v1, -0x1000000

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 54
    move-result p2

    .line 55
    .line 56
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->shadowColor:I

    .line 57
    .line 58
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleIndicatorSize:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 62
    move-result p2

    .line 63
    .line 64
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 65
    .line 66
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleColor:I

    .line 67
    const/4 v2, -0x1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 71
    move-result p2

    .line 72
    .line 73
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->backgroundColor:I

    .line 74
    .line 75
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleStrokeWidth:I

    .line 76
    const/4 v2, 0x3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 80
    move-result p2

    .line 81
    .line 82
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->strokeWidth:I

    .line 83
    .line 84
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleStrokeColor:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 88
    move-result p2

    .line 89
    .line 90
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->strokeColor:I

    .line 91
    .line 92
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubblePaddingIncludeRadius:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 96
    move-result p1

    .line 97
    .line 98
    iput-boolean p1, p0, Lcom/narvii/widget/PopupBubble;->paddingIncludeRadius:Z

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/narvii/widget/PopupBubble;->updatePadding()V

    .line 102
    return-void
.end method

.method private updatePadding()V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/PopupBubble;->paddingIncludeRadius:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    .line 11
    :goto_0
    iget v2, p0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 12
    .line 13
    add-int v3, v2, v0

    .line 14
    .line 15
    add-int v4, v2, v0

    .line 16
    .line 17
    add-int v5, v2, v0

    .line 18
    .line 19
    iget-boolean v6, p0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    .line 20
    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    iget v7, p0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v7, v1

    .line 26
    :goto_1
    add-int/2addr v5, v7

    .line 27
    add-int/2addr v2, v0

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    goto :goto_2

    .line 31
    .line 32
    :cond_2
    iget v1, p0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 33
    :goto_2
    add-int/2addr v2, v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v3, v5, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 37
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
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    iget-boolean v2, v0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    .line 10
    .line 11
    iget v3, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 12
    .line 13
    iget v4, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget v5, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v5, 0x0

    .line 20
    :goto_0
    add-int/2addr v5, v4

    .line 21
    .line 22
    iget v6, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 23
    .line 24
    iget-boolean v7, v0, Lcom/narvii/widget/PopupBubble;->autoRtl:Z

    .line 25
    .line 26
    if-eqz v7, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 30
    move-result v7

    .line 31
    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v7

    .line 37
    .line 38
    iget v8, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    .line 39
    sub-int/2addr v7, v8

    .line 40
    .line 41
    iget v8, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 42
    .line 43
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 44
    add-int/2addr v8, v9

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result v7

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    iget v7, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    .line 52
    .line 53
    iget v8, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 54
    .line 55
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 56
    add-int/2addr v8, v9

    .line 57
    .line 58
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 59
    add-int/2addr v8, v9

    .line 60
    .line 61
    .line 62
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 63
    move-result v7

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 67
    move-result v8

    .line 68
    .line 69
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 70
    sub-int/2addr v8, v9

    .line 71
    .line 72
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 73
    sub-int/2addr v8, v9

    .line 74
    .line 75
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 76
    sub-int/2addr v8, v9

    .line 77
    .line 78
    .line 79
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 80
    move-result v7

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_2
    iget v7, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    .line 84
    .line 85
    add-int v8, v3, v4

    .line 86
    add-int/2addr v8, v6

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 90
    move-result v7

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 94
    move-result v8

    .line 95
    .line 96
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 97
    sub-int/2addr v8, v9

    .line 98
    .line 99
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 100
    sub-int/2addr v8, v9

    .line 101
    .line 102
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 103
    sub-int/2addr v8, v9

    .line 104
    .line 105
    .line 106
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 107
    move-result v7

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 111
    move-result v8

    .line 112
    .line 113
    mul-int/lit8 v9, v4, 0x2

    .line 114
    sub-int/2addr v8, v9

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 118
    move-result v10

    .line 119
    sub-int/2addr v10, v9

    .line 120
    .line 121
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 122
    sub-int/2addr v10, v9

    .line 123
    .line 124
    new-instance v9, Landroid/graphics/RectF;

    .line 125
    .line 126
    .line 127
    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 128
    .line 129
    new-instance v11, Landroid/graphics/Path;

    .line 130
    .line 131
    .line 132
    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 133
    .line 134
    add-int v12, v4, v3

    .line 135
    int-to-float v12, v12

    .line 136
    int-to-float v13, v5

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    sub-int v14, v7, v6

    .line 144
    int-to-float v14, v14

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 148
    int-to-float v14, v7

    .line 149
    .line 150
    sub-int v15, v5, v6

    .line 151
    int-to-float v15, v15

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    .line 156
    add-int v14, v7, v6

    .line 157
    int-to-float v14, v14

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 161
    .line 162
    add-int v14, v4, v8

    .line 163
    sub-int/2addr v14, v3

    .line 164
    int-to-float v14, v14

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    goto :goto_2

    .line 169
    .line 170
    :cond_3
    add-int v14, v4, v8

    .line 171
    sub-int/2addr v14, v3

    .line 172
    int-to-float v14, v14

    .line 173
    .line 174
    .line 175
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    :goto_2
    add-int/2addr v8, v4

    .line 177
    .line 178
    mul-int/lit8 v14, v3, 0x2

    .line 179
    .line 180
    sub-int v15, v8, v14

    .line 181
    int-to-float v15, v15

    .line 182
    .line 183
    iput v15, v9, Landroid/graphics/RectF;->left:F

    .line 184
    .line 185
    iput v13, v9, Landroid/graphics/RectF;->top:F

    .line 186
    int-to-float v8, v8

    .line 187
    .line 188
    iput v8, v9, Landroid/graphics/RectF;->right:F

    .line 189
    .line 190
    add-int v1, v5, v14

    .line 191
    int-to-float v1, v1

    .line 192
    .line 193
    iput v1, v9, Landroid/graphics/RectF;->bottom:F

    .line 194
    .line 195
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 196
    .line 197
    move/from16 v16, v1

    .line 198
    .line 199
    const/high16 v1, 0x42b40000    # 90.0f

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v9, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 203
    add-int/2addr v10, v5

    .line 204
    .line 205
    sub-int v0, v10, v3

    .line 206
    int-to-float v0, v0

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    .line 211
    iput v15, v9, Landroid/graphics/RectF;->left:F

    .line 212
    .line 213
    sub-int v0, v10, v14

    .line 214
    int-to-float v0, v0

    .line 215
    .line 216
    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 217
    .line 218
    iput v8, v9, Landroid/graphics/RectF;->right:F

    .line 219
    int-to-float v8, v10

    .line 220
    .line 221
    iput v8, v9, Landroid/graphics/RectF;->bottom:F

    .line 222
    const/4 v15, 0x0

    .line 223
    .line 224
    .line 225
    invoke-virtual {v11, v9, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 226
    .line 227
    if-eqz v2, :cond_4

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11, v12, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    goto :goto_3

    .line 232
    .line 233
    :cond_4
    add-int v2, v7, v6

    .line 234
    int-to-float v2, v2

    .line 235
    .line 236
    .line 237
    invoke-virtual {v11, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    int-to-float v2, v7

    .line 239
    add-int/2addr v10, v6

    .line 240
    int-to-float v10, v10

    .line 241
    .line 242
    .line 243
    invoke-virtual {v11, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 244
    sub-int/2addr v7, v6

    .line 245
    int-to-float v2, v7

    .line 246
    .line 247
    .line 248
    invoke-virtual {v11, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v11, v12, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    :goto_3
    int-to-float v2, v4

    .line 253
    .line 254
    iput v2, v9, Landroid/graphics/RectF;->left:F

    .line 255
    .line 256
    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 257
    add-int/2addr v4, v14

    .line 258
    int-to-float v0, v4

    .line 259
    .line 260
    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 261
    .line 262
    iput v8, v9, Landroid/graphics/RectF;->bottom:F

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v9, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 266
    add-int/2addr v5, v3

    .line 267
    int-to-float v3, v5

    .line 268
    .line 269
    .line 270
    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    .line 272
    iput v2, v9, Landroid/graphics/RectF;->left:F

    .line 273
    .line 274
    iput v13, v9, Landroid/graphics/RectF;->top:F

    .line 275
    .line 276
    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 277
    .line 278
    move/from16 v0, v16

    .line 279
    .line 280
    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    .line 281
    .line 282
    const/high16 v0, 0x43340000    # 180.0f

    .line 283
    .line 284
    .line 285
    invoke-virtual {v11, v9, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 286
    .line 287
    new-instance v0, Landroid/graphics/Paint;

    .line 288
    .line 289
    .line 290
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 291
    const/4 v1, 0x1

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 295
    .line 296
    move-object/from16 v1, p0

    .line 297
    .line 298
    iget v2, v1, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 299
    .line 300
    if-eqz v2, :cond_5

    .line 301
    .line 302
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    .line 303
    .line 304
    iget v3, v1, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 305
    int-to-float v3, v3

    .line 306
    .line 307
    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 308
    .line 309
    .line 310
    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 314
    .line 315
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    .line 320
    iget v2, v1, Lcom/narvii/widget/PopupBubble;->shadowColor:I

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 324
    .line 325
    move-object/from16 v2, p1

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 329
    goto :goto_4

    .line 330
    .line 331
    :cond_5
    move-object/from16 v2, p1

    .line 332
    :goto_4
    const/4 v3, 0x0

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 336
    .line 337
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    .line 342
    iget v3, v1, Lcom/narvii/widget/PopupBubble;->backgroundColor:I

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 349
    .line 350
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    .line 355
    iget v3, v1, Lcom/narvii/widget/PopupBubble;->strokeWidth:I

    .line 356
    int-to-float v3, v3

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    .line 361
    iget v3, v1, Lcom/narvii/widget/PopupBubble;->strokeColor:I

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 368
    return-void
.end method

.method public setAutoRtl(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/PopupBubble;->autoRtl:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setBubbleBackgroundColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/PopupBubble;->backgroundColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setIndicator(ZI)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/widget/PopupBubble;->updatePadding()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    return-void
.end method
