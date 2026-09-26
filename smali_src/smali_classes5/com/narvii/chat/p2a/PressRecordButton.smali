.class public Lcom/narvii/chat/p2a/PressRecordButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/p2a/PressRecordButton$PressListener;
    }
.end annotation


# instance fields
.field public cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

.field private paint:Landroid/graphics/Paint;

.field private pressed:Z

.field public pressedListener:Lcom/narvii/chat/p2a/PressRecordButton$PressListener;

.field private prevTime:J

.field private progress:F

.field private final rectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    new-instance p1, Landroid/graphics/RectF;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->rectF:Landroid/graphics/RectF;

    .line 22
    return-void
.end method

.method private c(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    iget-wide v4, v0, Lcom/narvii/chat/p2a/PressRecordButton;->prevTime:J

    .line 13
    .line 14
    const-wide/16 v7, 0x0

    .line 15
    .line 16
    cmp-long v6, v4, v7

    .line 17
    .line 18
    const/high16 v9, 0x40400000    # 3.0f

    .line 19
    .line 20
    const/high16 v10, 0x3f800000    # 1.0f

    .line 21
    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    sub-long v11, v2, v4

    .line 25
    .line 26
    const-wide/16 v13, 0x14

    .line 27
    .line 28
    cmp-long v6, v11, v13

    .line 29
    .line 30
    if-gez v6, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sub-long/2addr v2, v4

    .line 33
    long-to-float v2, v2

    .line 34
    mul-float/2addr v2, v10

    .line 35
    .line 36
    .line 37
    const v3, 0x41855604    # 16.667f

    .line 38
    div-float/2addr v2, v3

    .line 39
    .line 40
    .line 41
    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    .line 42
    move-result v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move v2, v10

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 48
    move-result v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v4

    .line 53
    .line 54
    const/high16 v5, 0x40a00000    # 5.0f

    .line 55
    .line 56
    iget v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v9, v5, v6}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    .line 60
    move-result v5

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 68
    move-result-object v6

    .line 69
    const/4 v9, 0x1

    .line 70
    .line 71
    .line 72
    invoke-static {v9, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 73
    move-result v5

    .line 74
    .line 75
    iget-boolean v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    .line 76
    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    iget v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 80
    .line 81
    cmpg-float v9, v6, v10

    .line 82
    .line 83
    if-gez v9, :cond_2

    .line 84
    .line 85
    sub-float v9, v10, v6

    .line 86
    mul-float/2addr v9, v9

    .line 87
    .line 88
    .line 89
    const v11, 0x3e851eb8    # 0.26f

    .line 90
    mul-float/2addr v9, v11

    .line 91
    .line 92
    .line 93
    const v11, 0x3ca3d70a    # 0.02f

    .line 94
    add-float/2addr v9, v11

    .line 95
    mul-float/2addr v9, v2

    .line 96
    add-float/2addr v6, v9

    .line 97
    .line 98
    .line 99
    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    .line 100
    move-result v6

    .line 101
    .line 102
    iput v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 103
    .line 104
    :cond_2
    iget-boolean v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    .line 105
    const/4 v9, 0x0

    .line 106
    .line 107
    if-nez v6, :cond_3

    .line 108
    .line 109
    iget v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 110
    .line 111
    cmpl-float v11, v6, v9

    .line 112
    .line 113
    if-lez v11, :cond_3

    .line 114
    .line 115
    .line 116
    const v11, 0x3dcccccd    # 0.1f

    .line 117
    mul-float/2addr v2, v11

    .line 118
    sub-float/2addr v6, v2

    .line 119
    .line 120
    .line 121
    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    .line 122
    move-result v2

    .line 123
    .line 124
    iput v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 125
    .line 126
    :cond_3
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 127
    .line 128
    .line 129
    const v6, -0x15edee

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    .line 134
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 135
    .line 136
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    .line 141
    div-int/lit8 v3, v3, 0x2

    .line 142
    int-to-float v2, v3

    .line 143
    int-to-float v3, v4

    .line 144
    .line 145
    iget v4, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 146
    .line 147
    const/high16 v6, 0x3f400000    # 0.75f

    .line 148
    .line 149
    const/high16 v11, 0x3f000000    # 0.5f

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v6, v11, v4}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    .line 153
    move-result v4

    .line 154
    mul-float/2addr v4, v3

    .line 155
    .line 156
    .line 157
    const v12, 0x3ec28f5c    # 0.38f

    .line 158
    .line 159
    iget v13, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 160
    .line 161
    const/high16 v14, 0x3e800000    # 0.25f

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v14, v12, v13}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    .line 165
    move-result v12

    .line 166
    mul-float/2addr v12, v3

    .line 167
    .line 168
    const/high16 v13, 0x3fc00000    # 1.5f

    .line 169
    mul-float/2addr v13, v5

    .line 170
    sub-float/2addr v12, v13

    .line 171
    .line 172
    iget-object v13, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2, v4, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    iget v4, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v6, v11, v4}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    .line 181
    move-result v4

    .line 182
    mul-float/2addr v4, v3

    .line 183
    .line 184
    iget v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v14, v11, v6}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    .line 188
    move-result v6

    .line 189
    mul-float/2addr v3, v6

    .line 190
    .line 191
    const/high16 v6, 0x40000000    # 2.0f

    .line 192
    .line 193
    div-float v6, v5, v6

    .line 194
    sub-float/2addr v3, v6

    .line 195
    .line 196
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 197
    .line 198
    iget v11, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v10, v14, v11}, Lcom/narvii/chat/p2a/PressRecordButton;->c(FFF)F

    .line 202
    move-result v11

    .line 203
    .line 204
    const/high16 v12, 0x437f0000    # 255.0f

    .line 205
    mul-float/2addr v11, v12

    .line 206
    float-to-int v11, v11

    .line 207
    .line 208
    shl-int/lit8 v11, v11, 0x18

    .line 209
    .line 210
    .line 211
    const v12, 0xffffff

    .line 212
    or-int/2addr v11, v12

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    .line 217
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 218
    .line 219
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    .line 224
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    .line 229
    iget-object v5, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    .line 234
    iget-object v5, v0, Lcom/narvii/chat/p2a/PressRecordButton;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 235
    .line 236
    if-eqz v5, :cond_4

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Lcom/narvii/chat/video/CameraRenderer;->getRecordDuration()J

    .line 240
    move-result-wide v5

    .line 241
    .line 242
    cmp-long v5, v5, v7

    .line 243
    .line 244
    if-lez v5, :cond_4

    .line 245
    .line 246
    iget-object v5, v0, Lcom/narvii/chat/p2a/PressRecordButton;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Lcom/narvii/chat/video/CameraRenderer;->getRecordTime()J

    .line 250
    move-result-wide v5

    .line 251
    long-to-float v5, v5

    .line 252
    mul-float/2addr v5, v10

    .line 253
    .line 254
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->cameraRenderer:Lcom/narvii/chat/video/CameraRenderer;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6}, Lcom/narvii/chat/video/CameraRenderer;->getRecordDuration()J

    .line 258
    move-result-wide v11

    .line 259
    long-to-float v6, v11

    .line 260
    div-float/2addr v5, v6

    .line 261
    goto :goto_2

    .line 262
    :cond_4
    move v5, v9

    .line 263
    .line 264
    :goto_2
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->rectF:Landroid/graphics/RectF;

    .line 265
    .line 266
    sub-float v11, v2, v3

    .line 267
    .line 268
    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 269
    add-float/2addr v2, v3

    .line 270
    .line 271
    iput v2, v6, Landroid/graphics/RectF;->right:F

    .line 272
    .line 273
    sub-float v2, v4, v3

    .line 274
    .line 275
    iput v2, v6, Landroid/graphics/RectF;->top:F

    .line 276
    add-float/2addr v4, v3

    .line 277
    .line 278
    iput v4, v6, Landroid/graphics/RectF;->bottom:F

    .line 279
    .line 280
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 281
    const/4 v3, -0x1

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    .line 286
    iget-object v2, v0, Lcom/narvii/chat/p2a/PressRecordButton;->rectF:Landroid/graphics/RectF;

    .line 287
    .line 288
    const/high16 v3, 0x43870000    # 270.0f

    .line 289
    .line 290
    const/high16 v4, 0x43b40000    # 360.0f

    .line 291
    mul-float/2addr v4, v5

    .line 292
    const/4 v5, 0x0

    .line 293
    .line 294
    iget-object v6, v0, Lcom/narvii/chat/p2a/PressRecordButton;->paint:Landroid/graphics/Paint;

    .line 295
    .line 296
    move-object/from16 v1, p1

    .line 297
    .line 298
    .line 299
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 300
    .line 301
    iget v1, v0, Lcom/narvii/chat/p2a/PressRecordButton;->progress:F

    .line 302
    .line 303
    cmpl-float v2, v1, v9

    .line 304
    .line 305
    if-eqz v2, :cond_5

    .line 306
    .line 307
    cmpl-float v2, v1, v10

    .line 308
    .line 309
    if-nez v2, :cond_6

    .line 310
    .line 311
    :cond_5
    iput-wide v7, v0, Lcom/narvii/chat/p2a/PressRecordButton;->prevTime:J

    .line 312
    .line 313
    :cond_6
    cmpl-float v1, v1, v9

    .line 314
    .line 315
    if-eqz v1, :cond_7

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 319
    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result v0

    .line 17
    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    cmpl-float p1, p1, v0

    .line 22
    .line 23
    if-lez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressedListener:Lcom/narvii/chat/p2a/PressRecordButton$PressListener;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v2}, Lcom/narvii/chat/p2a/PressRecordButton$PressListener;->onPress(Z)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    return v2

    .line 38
    :cond_1
    return v1

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eq v0, v2, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 48
    move-result v0

    .line 49
    const/4 v3, 0x3

    .line 50
    .line 51
    if-ne v0, v3, :cond_3

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    .line 59
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressedListener:Lcom/narvii/chat/p2a/PressRecordButton$PressListener;

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v1}, Lcom/narvii/chat/p2a/PressRecordButton$PressListener;->onPress(Z)Z

    .line 63
    .line 64
    iput-boolean v1, p0, Lcom/narvii/chat/p2a/PressRecordButton;->pressed:Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    return v2
.end method
