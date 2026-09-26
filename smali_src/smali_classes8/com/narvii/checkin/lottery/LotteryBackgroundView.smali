.class public Lcom/narvii/checkin/lottery/LotteryBackgroundView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;
    }
.end annotation


# static fields
.field public static final CIRCLE_LIVE_TIME:I = 0x2710

.field public static final COLOR_BACKGROUND:I = -0x7aca89

.field public static final MIN_DP:I = 0x19

.field public static final OVERLAY_COLOR:I = 0x32ffaba0


# instance fields
.field angleSpeed:F

.field centerX:I

.field centerY:I

.field circleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;",
            ">;"
        }
    .end annotation
.end field

.field lastDrawTime:J

.field lastOverlayColor:Z

.field maxRadius:F

.field minRadius:F

.field paint:Landroid/graphics/Paint;

.field radiusSpeed:F

.field savedLayerType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/Paint;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    .line 25
    const/4 p2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    .line 31
    .line 32
    .line 33
    const v0, 0x32ffaba0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    .line 39
    .line 40
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    .line 47
    move-result p1

    .line 48
    .line 49
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->savedLayerType:I

    .line 50
    const/4 p1, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 54
    .line 55
    .line 56
    const p1, 0x3d1374bc    # 0.036f

    .line 57
    .line 58
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->angleSpeed:F

    .line 59
    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
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
    const v2, -0x7aca89

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 11
    .line 12
    iget-wide v3, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    cmp-long v3, v3, v5

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    iput-wide v3, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v3

    .line 29
    .line 30
    iget v5, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->radiusSpeed:F

    .line 31
    .line 32
    const/high16 v6, 0x41800000    # 16.0f

    .line 33
    mul-float/2addr v5, v6

    .line 34
    .line 35
    iget v7, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->angleSpeed:F

    .line 36
    mul-float/2addr v7, v6

    .line 37
    .line 38
    iget-object v6, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v6

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v8

    .line 47
    .line 48
    if-eqz v8, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v8

    .line 53
    .line 54
    check-cast v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    .line 55
    .line 56
    iget-object v9, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget-boolean v10, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->overlayColor:Z

    .line 59
    .line 60
    if-eqz v10, :cond_2

    .line 61
    .line 62
    .line 63
    const v10, 0x32ffaba0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move v10, v2

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    .line 70
    iget v9, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 71
    add-float/2addr v9, v5

    .line 72
    .line 73
    iput v9, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 74
    .line 75
    iget v10, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerX:I

    .line 76
    int-to-float v10, v10

    .line 77
    .line 78
    iget v11, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerY:I

    .line 79
    int-to-float v11, v11

    .line 80
    .line 81
    iget-object v12, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->paint:Landroid/graphics/Paint;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v10, v11, v9, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    .line 86
    iget v8, v8, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 87
    .line 88
    iget v9, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->maxRadius:F

    .line 89
    .line 90
    iget v10, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    .line 91
    add-float/2addr v9, v10

    .line 92
    .line 93
    cmpl-float v8, v8, v9

    .line 94
    .line 95
    if-ltz v8, :cond_1

    .line 96
    .line 97
    .line 98
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_3
    iget-object v2, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v5

    .line 110
    const/4 v6, 0x0

    .line 111
    .line 112
    if-eqz v5, :cond_4

    .line 113
    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v5

    .line 117
    .line 118
    check-cast v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    .line 119
    .line 120
    iget-wide v8, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    .line 121
    float-to-double v10, v7

    .line 122
    add-double/2addr v8, v10

    .line 123
    .line 124
    iput-wide v8, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    move-result-object v8

    .line 129
    .line 130
    iget v9, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starId:I

    .line 131
    .line 132
    .line 133
    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 134
    move-result-object v8

    .line 135
    .line 136
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 140
    move-result-object v8

    .line 141
    .line 142
    iget-wide v9, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->starAngle:D

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 148
    div-double/2addr v9, v11

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    const-wide v11, 0x400921fb54442d18L    # Math.PI

    .line 154
    mul-double/2addr v9, v11

    .line 155
    .line 156
    iget v11, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerX:I

    .line 157
    int-to-double v11, v11

    .line 158
    .line 159
    iget v13, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 160
    float-to-double v13, v13

    .line 161
    .line 162
    .line 163
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 164
    move-result-wide v15

    .line 165
    mul-double/2addr v13, v15

    .line 166
    add-double/2addr v11, v13

    .line 167
    double-to-float v11, v11

    .line 168
    .line 169
    iget v12, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerY:I

    .line 170
    int-to-double v12, v12

    .line 171
    .line 172
    iget v5, v5, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 173
    float-to-double v14, v5

    .line 174
    .line 175
    .line 176
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 177
    move-result-wide v9

    .line 178
    mul-double/2addr v14, v9

    .line 179
    add-double/2addr v12, v14

    .line 180
    double-to-float v5, v12

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 184
    move-result v9

    .line 185
    int-to-float v9, v9

    .line 186
    .line 187
    const/high16 v10, 0x40000000    # 2.0f

    .line 188
    div-float/2addr v9, v10

    .line 189
    sub-float/2addr v11, v9

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    .line 193
    move-result v9

    .line 194
    int-to-float v9, v9

    .line 195
    div-float/2addr v9, v10

    .line 196
    sub-float/2addr v5, v9

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v8, v11, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 200
    goto :goto_2

    .line 201
    .line 202
    :cond_4
    const/high16 v2, 0x5600000

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 206
    .line 207
    iget-object v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 211
    move-result v1

    .line 212
    .line 213
    if-nez v1, :cond_5

    .line 214
    .line 215
    iget-object v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 219
    move-result-object v1

    .line 220
    move-object v6, v1

    .line 221
    .line 222
    check-cast v6, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    .line 223
    .line 224
    :cond_5
    if-eqz v6, :cond_6

    .line 225
    .line 226
    iget v1, v6, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;->radius:F

    .line 227
    .line 228
    iget v2, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    .line 229
    .line 230
    cmpl-float v1, v1, v2

    .line 231
    .line 232
    if-lez v1, :cond_6

    .line 233
    .line 234
    iget-boolean v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastOverlayColor:Z

    .line 235
    .line 236
    xor-int/lit8 v1, v1, 0x1

    .line 237
    .line 238
    iput-boolean v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastOverlayColor:Z

    .line 239
    .line 240
    iget-object v1, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 241
    .line 242
    new-instance v2, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    .line 243
    const/4 v5, 0x0

    .line 244
    .line 245
    iget-boolean v6, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastOverlayColor:Z

    .line 246
    .line 247
    .line 248
    invoke-direct {v2, v5, v6}, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;-><init>(FZ)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 252
    .line 253
    :cond_6
    iput-wide v3, v0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 254
    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 257
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    const v2, 0x7f070251

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v4

    .line 35
    int-to-float v4, v4

    .line 36
    const/4 v5, 0x0

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 40
    int-to-float v1, v1

    .line 41
    .line 42
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 49
    .line 50
    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    .line 59
    .line 60
    :catch_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    return-void

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->drawCircles(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 9
    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    iput-wide p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->lastDrawTime:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result p1

    .line 17
    .line 18
    div-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerX:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    move-result p1

    .line 25
    .line 26
    div-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->centerY:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result p1

    .line 33
    .line 34
    div-int/lit8 p1, p1, 0x2

    .line 35
    int-to-double p1, p1

    .line 36
    .line 37
    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    .line 41
    move-result-wide p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v0

    .line 46
    .line 47
    div-int/lit8 v0, v0, 0x2

    .line 48
    int-to-double v0, v0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    .line 52
    move-result-wide p3

    .line 53
    add-double/2addr p1, p3

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 57
    move-result-wide p1

    .line 58
    double-to-float p1, p1

    .line 59
    .line 60
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->maxRadius:F

    .line 61
    .line 62
    .line 63
    const p2, 0x461c4000    # 10000.0f

    .line 64
    div-float/2addr p1, p2

    .line 65
    .line 66
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->radiusSpeed:F

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const/high16 p2, 0x41c80000    # 25.0f

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 76
    move-result p1

    .line 77
    .line 78
    iput p1, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    .line 79
    const/4 p2, 0x0

    .line 80
    .line 81
    :goto_0
    iget p3, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->maxRadius:F

    .line 82
    .line 83
    cmpg-float p3, p1, p3

    .line 84
    .line 85
    if-gez p3, :cond_0

    .line 86
    .line 87
    iget-object p3, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->circleList:Ljava/util/LinkedList;

    .line 88
    .line 89
    new-instance p4, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;

    .line 90
    .line 91
    .line 92
    invoke-direct {p4, p1, p2}, Lcom/narvii/checkin/lottery/LotteryBackgroundView$Circle;-><init>(FZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, p4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 96
    .line 97
    iget p3, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->minRadius:F

    .line 98
    add-float/2addr p1, p3

    .line 99
    .line 100
    xor-int/lit8 p2, p2, 0x1

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public revertLayerType()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/checkin/lottery/LotteryBackgroundView;->savedLayerType:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7
    return-void
.end method
