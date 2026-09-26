.class public Lcom/narvii/widget/CheckMarkView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COLOR:I = -0xfe3794

.field private static final DEFAULT_DURATION:I = 0xc8

.field private static final RATIO_HEIGHT_WIDTH:F = 0.8333333f


# instance fields
.field private allDistance:F

.field animator:Landroid/animation/ValueAnimator;

.field private centerPoint:Landroid/graphics/Point;

.field private checkColor:I

.field private drawedDistance:F

.field private duration:I

.field private height:I

.field private isChecked:Z

.field private isRunningAnimation:Z

.field private leftDistance:F

.field private marKPoints:[Landroid/graphics/Point;

.field private markPath:Landroid/graphics/Path;

.field private paint:Landroid/graphics/Paint;

.field private rightDistance:F

.field private runedPercent:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CheckMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/CheckMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p2}, Lcom/narvii/widget/CheckMarkView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/CheckMarkView;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    return-void
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isChecked:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    .line 15
    .line 16
    cmpg-float v0, v0, v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    .line 20
    if-gez v0, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->allDistance:F

    .line 23
    .line 24
    iget v4, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    .line 25
    mul-float/2addr v0, v4

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 28
    .line 29
    iget-object v4, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 30
    .line 31
    aget-object v2, v4, v2

    .line 32
    .line 33
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 34
    int-to-float v6, v5

    .line 35
    .line 36
    aget-object v4, v4, v3

    .line 37
    .line 38
    iget v7, v4, Landroid/graphics/Point;->x:I

    .line 39
    sub-int/2addr v7, v5

    .line 40
    int-to-float v7, v7

    .line 41
    mul-float/2addr v7, v0

    .line 42
    div-float/2addr v7, v1

    .line 43
    add-float/2addr v6, v7

    .line 44
    .line 45
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 46
    int-to-float v7, v2

    .line 47
    .line 48
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 49
    sub-int/2addr v4, v2

    .line 50
    int-to-float v4, v4

    .line 51
    mul-float/2addr v4, v0

    .line 52
    div-float/2addr v4, v1

    .line 53
    add-float/2addr v7, v4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 56
    int-to-float v1, v5

    .line 57
    int-to-float v2, v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    .line 74
    iput-boolean v3, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    .line 75
    .line 76
    iget p1, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 77
    .line 78
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    .line 79
    .line 80
    cmpl-float p1, p1, v0

    .line 81
    .line 82
    if-lez p1, :cond_3

    .line 83
    .line 84
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 91
    .line 92
    aget-object v1, v1, v2

    .line 93
    .line 94
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 95
    int-to-float v4, v4

    .line 96
    .line 97
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 98
    int-to-float v1, v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    .line 103
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 106
    .line 107
    aget-object v1, v1, v3

    .line 108
    .line 109
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 110
    int-to-float v4, v4

    .line 111
    .line 112
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 113
    int-to-float v1, v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    .line 125
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 126
    .line 127
    iget v1, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    .line 128
    .line 129
    iget v4, p0, Lcom/narvii/widget/CheckMarkView;->rightDistance:F

    .line 130
    .line 131
    add-float v5, v1, v4

    .line 132
    .line 133
    cmpg-float v5, v0, v5

    .line 134
    const/4 v6, 0x2

    .line 135
    .line 136
    if-gez v5, :cond_2

    .line 137
    .line 138
    iget-object v2, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 139
    .line 140
    aget-object v5, v2, v3

    .line 141
    .line 142
    iget v7, v5, Landroid/graphics/Point;->x:I

    .line 143
    int-to-float v8, v7

    .line 144
    .line 145
    aget-object v2, v2, v6

    .line 146
    .line 147
    iget v6, v2, Landroid/graphics/Point;->x:I

    .line 148
    sub-int/2addr v6, v7

    .line 149
    int-to-float v6, v6

    .line 150
    .line 151
    sub-float v7, v0, v1

    .line 152
    mul-float/2addr v6, v7

    .line 153
    div-float/2addr v6, v4

    .line 154
    add-float/2addr v8, v6

    .line 155
    .line 156
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 157
    int-to-float v6, v5

    .line 158
    .line 159
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 160
    sub-int/2addr v5, v2

    .line 161
    int-to-float v2, v5

    .line 162
    sub-float/2addr v0, v1

    .line 163
    mul-float/2addr v2, v0

    .line 164
    div-float/2addr v2, v4

    .line 165
    sub-float/2addr v6, v2

    .line 166
    .line 167
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 175
    .line 176
    aget-object v1, v1, v3

    .line 177
    .line 178
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 179
    int-to-float v2, v2

    .line 180
    .line 181
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 182
    int-to-float v1, v1

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    .line 192
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 198
    .line 199
    iget p1, p0, Lcom/narvii/widget/CheckMarkView;->allDistance:F

    .line 200
    .line 201
    iget v0, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    .line 202
    mul-float/2addr p1, v0

    .line 203
    .line 204
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 205
    .line 206
    iput-boolean v3, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    .line 207
    goto :goto_0

    .line 208
    .line 209
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 213
    .line 214
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 215
    .line 216
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 217
    .line 218
    aget-object v1, v1, v3

    .line 219
    .line 220
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 221
    int-to-float v3, v3

    .line 222
    .line 223
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 224
    int-to-float v1, v1

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    .line 229
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 230
    .line 231
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 232
    .line 233
    aget-object v1, v1, v6

    .line 234
    .line 235
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 236
    int-to-float v3, v3

    .line 237
    .line 238
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 239
    int-to-float v1, v1

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    .line 244
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 245
    .line 246
    iget-object v1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 250
    .line 251
    iput-boolean v2, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    .line 252
    :cond_3
    :goto_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const/4 p1, 0x3

    .line 2
    .line 3
    new-array p1, p1, [Landroid/graphics/Point;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    aput-object v0, p1, v1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Point;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    aput-object v0, p1, v1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Point;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 31
    const/4 v2, 0x2

    .line 32
    .line 33
    aput-object v0, p1, v2

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/Paint;

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 41
    .line 42
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 48
    .line 49
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 55
    .line 56
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 62
    .line 63
    .line 64
    const v0, -0xfe3794

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    .line 69
    new-instance p1, Landroid/graphics/Point;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 73
    .line 74
    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->centerPoint:Landroid/graphics/Point;

    .line 75
    .line 76
    new-instance p1, Landroid/graphics/Path;

    .line 77
    .line 78
    .line 79
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 80
    .line 81
    iput-object p1, p0, Lcom/narvii/widget/CheckMarkView;->markPath:Landroid/graphics/Path;

    .line 82
    .line 83
    const/16 p1, 0xc8

    .line 84
    .line 85
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->duration:I

    .line 86
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    .line 24
    return-void
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
    invoke-direct {p0, p1}, Lcom/narvii/widget/CheckMarkView;->drawCheckMark(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    move-result p1

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->width:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 13
    move-result p1

    .line 14
    .line 15
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->height:I

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/widget/CheckMarkView;->centerPoint:Landroid/graphics/Point;

    .line 18
    .line 19
    iget p3, p0, Lcom/narvii/widget/CheckMarkView;->width:I

    .line 20
    const/4 p4, 0x2

    .line 21
    div-int/2addr p3, p4

    .line 22
    .line 23
    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 24
    div-int/2addr p1, p4

    .line 25
    .line 26
    iput p1, p2, Landroid/graphics/Point;->y:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    aget-object p1, p1, p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    move-result p3

    .line 36
    int-to-float p3, p3

    .line 37
    .line 38
    .line 39
    const p5, 0x3dcccccd    # 0.1f

    .line 40
    mul-float/2addr p3, p5

    .line 41
    .line 42
    .line 43
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 44
    move-result p3

    .line 45
    .line 46
    iput p3, p1, Landroid/graphics/Point;->x:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 49
    .line 50
    aget-object p1, p1, p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    move-result p3

    .line 55
    int-to-float p3, p3

    .line 56
    .line 57
    .line 58
    const p5, 0x3f160419    # 0.586f

    .line 59
    mul-float/2addr p3, p5

    .line 60
    .line 61
    .line 62
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 63
    move-result p3

    .line 64
    .line 65
    iput p3, p1, Landroid/graphics/Point;->y:I

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 68
    const/4 p3, 0x1

    .line 69
    .line 70
    aget-object p1, p1, p3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 74
    move-result p5

    .line 75
    int-to-float p5, p5

    .line 76
    .line 77
    .line 78
    const v0, 0x3eaa7efa    # 0.333f

    .line 79
    mul-float/2addr p5, v0

    .line 80
    .line 81
    .line 82
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    .line 83
    move-result p5

    .line 84
    .line 85
    iput p5, p1, Landroid/graphics/Point;->x:I

    .line 86
    .line 87
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 88
    .line 89
    aget-object p1, p1, p3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 93
    move-result p5

    .line 94
    int-to-float p5, p5

    .line 95
    .line 96
    .line 97
    const v0, 0x3f666666    # 0.9f

    .line 98
    mul-float/2addr p5, v0

    .line 99
    .line 100
    .line 101
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    .line 102
    move-result p5

    .line 103
    .line 104
    iput p5, p1, Landroid/graphics/Point;->y:I

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 107
    .line 108
    aget-object p1, p1, p4

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    move-result p5

    .line 113
    int-to-float p5, p5

    .line 114
    mul-float/2addr p5, v0

    .line 115
    .line 116
    .line 117
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    .line 118
    move-result p5

    .line 119
    .line 120
    iput p5, p1, Landroid/graphics/Point;->x:I

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 123
    .line 124
    aget-object p1, p1, p4

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    move-result p5

    .line 129
    int-to-float p5, p5

    .line 130
    .line 131
    .line 132
    const v0, 0x3e8d4fdf    # 0.276f

    .line 133
    mul-float/2addr p5, v0

    .line 134
    .line 135
    .line 136
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    .line 137
    move-result p5

    .line 138
    .line 139
    iput p5, p1, Landroid/graphics/Point;->y:I

    .line 140
    .line 141
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 142
    .line 143
    aget-object p5, p1, p3

    .line 144
    .line 145
    iget p5, p5, Landroid/graphics/Point;->x:I

    .line 146
    .line 147
    aget-object p1, p1, p2

    .line 148
    .line 149
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 150
    sub-int/2addr p5, p1

    .line 151
    int-to-double v0, p5

    .line 152
    .line 153
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 157
    move-result-wide v0

    .line 158
    .line 159
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 160
    .line 161
    aget-object p5, p1, p3

    .line 162
    .line 163
    iget p5, p5, Landroid/graphics/Point;->y:I

    .line 164
    .line 165
    aget-object p1, p1, p2

    .line 166
    .line 167
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 168
    sub-int/2addr p5, p1

    .line 169
    int-to-double p1, p5

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 173
    move-result-wide p1

    .line 174
    add-double/2addr v0, p1

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 178
    move-result-wide p1

    .line 179
    double-to-float p1, p1

    .line 180
    .line 181
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    .line 182
    .line 183
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 184
    .line 185
    aget-object p2, p1, p4

    .line 186
    .line 187
    iget p2, p2, Landroid/graphics/Point;->x:I

    .line 188
    .line 189
    aget-object p1, p1, p3

    .line 190
    .line 191
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 192
    sub-int/2addr p2, p1

    .line 193
    int-to-double p1, p2

    .line 194
    .line 195
    .line 196
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 197
    move-result-wide p1

    .line 198
    .line 199
    iget-object p5, p0, Lcom/narvii/widget/CheckMarkView;->marKPoints:[Landroid/graphics/Point;

    .line 200
    .line 201
    aget-object p4, p5, p4

    .line 202
    .line 203
    iget p4, p4, Landroid/graphics/Point;->y:I

    .line 204
    .line 205
    aget-object p3, p5, p3

    .line 206
    .line 207
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 208
    sub-int/2addr p4, p3

    .line 209
    int-to-double p3, p4

    .line 210
    .line 211
    .line 212
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 213
    move-result-wide p3

    .line 214
    add-double/2addr p1, p3

    .line 215
    .line 216
    .line 217
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 218
    move-result-wide p1

    .line 219
    double-to-float p1, p1

    .line 220
    .line 221
    iput p1, p0, Lcom/narvii/widget/CheckMarkView;->rightDistance:F

    .line 222
    .line 223
    iget p2, p0, Lcom/narvii/widget/CheckMarkView;->leftDistance:F

    .line 224
    add-float/2addr p2, p1

    .line 225
    .line 226
    iput p2, p0, Lcom/narvii/widget/CheckMarkView;->allDistance:F

    .line 227
    .line 228
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 229
    .line 230
    iget p2, p0, Lcom/narvii/widget/CheckMarkView;->width:I

    .line 231
    int-to-float p2, p2

    .line 232
    .line 233
    .line 234
    const p3, 0x3f555555

    .line 235
    mul-float/2addr p2, p3

    .line 236
    .line 237
    const/high16 p3, 0x3e800000    # 0.25f

    .line 238
    mul-float/2addr p2, p3

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    return-void
.end method

.method public reset(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->drawedDistance:F

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/widget/CheckMarkView;->runedPercent:F

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/widget/CheckMarkView;->showChecked(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 27
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    return-void
.end method

.method public showChecked(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isRunningAnimation:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/widget/CheckMarkView;->isChecked:Z

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/widget/CheckMarkView;->duration:I

    .line 23
    int-to-long v1, v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    new-instance v1, Lcom/narvii/widget/CheckMarkView$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/narvii/widget/CheckMarkView$1;-><init>(Lcom/narvii/widget/CheckMarkView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    .line 55
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/CheckMarkView;->animator:Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    return-void

    .line 60
    nop

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
