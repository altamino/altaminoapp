.class public Lcom/narvii/widget/shadow/ShadowConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public circleShadowPaint:Landroid/graphics/Paint;

.field public contentBounds:Landroid/graphics/RectF;

.field public cornerShadowPaintLB:Landroid/graphics/Paint;

.field public cornerShadowPaintLT:Landroid/graphics/Paint;

.field public cornerShadowPaintRB:Landroid/graphics/Paint;

.field public cornerShadowPaintRT:Landroid/graphics/Paint;

.field public cornerShadowPathLB:Landroid/graphics/Path;

.field public cornerShadowPathLT:Landroid/graphics/Path;

.field public cornerShadowPathRB:Landroid/graphics/Path;

.field public cornerShadowPathRT:Landroid/graphics/Path;

.field public edgeShadowPaintLB:Landroid/graphics/Paint;

.field public edgeShadowPaintLT:Landroid/graphics/Paint;

.field public edgeShadowPaintRB:Landroid/graphics/Paint;

.field public edgeShadowPaintRT:Landroid/graphics/Paint;

.field public innerBounds:Landroid/graphics/RectF;

.field public outerBoundsCircle:Landroid/graphics/RectF;

.field public outerBoundsLB:Landroid/graphics/RectF;

.field public outerBoundsLT:Landroid/graphics/RectF;

.field public outerBoundsRB:Landroid/graphics/RectF;

.field public outerBoundsRT:Landroid/graphics/RectF;

.field public shadowCornerRadius:F

.field public shadowEndColor:I

.field public shadowMiddleColor:I

.field public shadowOffsetX:I

.field public shadowOffsetY:I

.field public shadowSize:I

.field public shadowStartColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FI[II)V
    .locals 0
    .param p4    # [I
        .annotation build Landroidx/annotation/Size;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    aget p2, p4, p1

    .line 13
    .line 14
    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    aget p2, p4, p2

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 20
    .line 21
    .line 22
    invoke-static {p5}, Landroid/graphics/Color;->alpha(I)I

    .line 23
    move-result p2

    .line 24
    .line 25
    const/16 p3, 0xff

    .line 26
    .line 27
    if-ne p2, p3, :cond_0

    .line 28
    .line 29
    div-int/lit8 p2, p2, 0x2

    .line 30
    .line 31
    :cond_0
    if-ne p2, p3, :cond_1

    .line 32
    int-to-float p3, p2

    .line 33
    .line 34
    const/high16 p4, 0x437f0000    # 255.0f

    .line 35
    div-float/2addr p3, p4

    .line 36
    .line 37
    .line 38
    invoke-static {p5, p3}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 39
    move-result p3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move p3, p5

    .line 42
    .line 43
    :goto_0
    iput p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    .line 44
    int-to-float p2, p2

    .line 45
    .line 46
    const/high16 p3, 0x43ff0000    # 510.0f

    .line 47
    div-float/2addr p2, p3

    .line 48
    .line 49
    .line 50
    invoke-static {p5, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 51
    move-result p2

    .line 52
    .line 53
    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    .line 54
    .line 55
    .line 56
    const p2, 0x3b808081

    .line 57
    .line 58
    .line 59
    invoke-static {p5, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 60
    move-result p2

    .line 61
    .line 62
    iput p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    .line 63
    .line 64
    new-instance p2, Landroid/graphics/Path;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 68
    .line 69
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    .line 70
    .line 71
    new-instance p2, Landroid/graphics/Path;

    .line 72
    .line 73
    .line 74
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 75
    .line 76
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    .line 77
    .line 78
    new-instance p2, Landroid/graphics/Path;

    .line 79
    .line 80
    .line 81
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 82
    .line 83
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    .line 84
    .line 85
    new-instance p2, Landroid/graphics/Path;

    .line 86
    .line 87
    .line 88
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 89
    .line 90
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    .line 91
    .line 92
    new-instance p2, Landroid/graphics/Paint;

    .line 93
    const/4 p3, 0x5

    .line 94
    .line 95
    .line 96
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    .line 97
    .line 98
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 99
    .line 100
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    .line 105
    new-instance p2, Landroid/graphics/Paint;

    .line 106
    .line 107
    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 111
    .line 112
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLB:Landroid/graphics/Paint;

    .line 113
    .line 114
    new-instance p2, Landroid/graphics/Paint;

    .line 115
    .line 116
    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 117
    .line 118
    .line 119
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 120
    .line 121
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRT:Landroid/graphics/Paint;

    .line 122
    .line 123
    new-instance p2, Landroid/graphics/Paint;

    .line 124
    .line 125
    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 129
    .line 130
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRB:Landroid/graphics/Paint;

    .line 131
    .line 132
    new-instance p2, Landroid/graphics/Paint;

    .line 133
    .line 134
    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 135
    .line 136
    .line 137
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 138
    .line 139
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->circleShadowPaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    new-instance p2, Landroid/graphics/Paint;

    .line 142
    .line 143
    iget-object p3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 147
    .line 148
    iput-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    .line 153
    new-instance p1, Landroid/graphics/Paint;

    .line 154
    .line 155
    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    .line 156
    .line 157
    .line 158
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 159
    .line 160
    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLB:Landroid/graphics/Paint;

    .line 161
    .line 162
    new-instance p1, Landroid/graphics/Paint;

    .line 163
    .line 164
    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    .line 165
    .line 166
    .line 167
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 168
    .line 169
    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRT:Landroid/graphics/Paint;

    .line 170
    .line 171
    new-instance p1, Landroid/graphics/Paint;

    .line 172
    .line 173
    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    .line 174
    .line 175
    .line 176
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 177
    .line 178
    iput-object p1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRB:Landroid/graphics/Paint;

    .line 179
    .line 180
    .line 181
    invoke-direct {p0}, Lcom/narvii/widget/shadow/ShadowConfig;->init()V

    .line 182
    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/RectF;

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 9
    neg-float v2, v1

    .line 10
    neg-float v3, v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 19
    neg-float v2, v1

    .line 20
    neg-float v3, v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Landroid/graphics/RectF;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 43
    .line 44
    :goto_1
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Landroid/graphics/RectF;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 62
    .line 63
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/RectF;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    .line 75
    goto :goto_3

    .line 76
    .line 77
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 81
    .line 82
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    .line 83
    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    new-instance v0, Landroid/graphics/RectF;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_4
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 100
    .line 101
    :goto_4
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 102
    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    new-instance v0, Landroid/graphics/RectF;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 111
    .line 112
    iput-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 113
    goto :goto_5

    .line 114
    .line 115
    :cond_5
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 119
    :goto_5
    return-void
.end method

.method private prepareCircleShadowPaint(Landroid/graphics/Paint;)V
    .locals 13

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    const v2, 0x3f666666    # 0.9f

    .line 21
    mul-float/2addr v0, v2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 27
    move-result v2

    .line 28
    div-float/2addr v0, v2

    .line 29
    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    .line 32
    sub-float v3, v2, v0

    .line 33
    .line 34
    const/high16 v4, 0x40000000    # 2.0f

    .line 35
    div-float/2addr v3, v4

    .line 36
    add-float/2addr v3, v0

    .line 37
    .line 38
    new-instance v12, Landroid/graphics/RadialGradient;

    .line 39
    .line 40
    iget-object v5, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    .line 44
    move-result v6

    .line 45
    .line 46
    iget-object v5, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 50
    move-result v7

    .line 51
    .line 52
    iget-object v5, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 56
    move-result v5

    .line 57
    .line 58
    div-float v8, v5, v4

    .line 59
    .line 60
    iget v4, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    .line 61
    .line 62
    iget v5, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    .line 63
    .line 64
    iget v9, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    .line 65
    const/4 v10, 0x0

    .line 66
    .line 67
    .line 68
    filled-new-array {v10, v4, v5, v9}, [I

    .line 69
    move-result-object v9

    .line 70
    const/4 v4, 0x4

    .line 71
    .line 72
    new-array v4, v4, [F

    .line 73
    .line 74
    aput v1, v4, v10

    .line 75
    const/4 v1, 0x1

    .line 76
    .line 77
    aput v0, v4, v1

    .line 78
    const/4 v0, 0x2

    .line 79
    .line 80
    aput v3, v4, v0

    .line 81
    const/4 v0, 0x3

    .line 82
    .line 83
    aput v2, v4, v0

    .line 84
    .line 85
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 86
    move-object v5, v12

    .line 87
    move-object v10, v4

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v5 .. v11}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 94
    :cond_0
    return-void
.end method

.method private prepareCornerShadowPaint(Landroid/graphics/Paint;F)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v1, p2, v0

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 8
    div-float/2addr v1, p2

    .line 9
    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    sub-float v3, v2, v1

    .line 13
    .line 14
    const/high16 v4, 0x40000000    # 2.0f

    .line 15
    div-float/2addr v3, v4

    .line 16
    add-float/2addr v3, v1

    .line 17
    .line 18
    new-instance v11, Landroid/graphics/RadialGradient;

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    .line 22
    iget v4, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    .line 23
    .line 24
    iget v7, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    .line 25
    .line 26
    iget v8, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    .line 27
    const/4 v9, 0x0

    .line 28
    .line 29
    .line 30
    filled-new-array {v9, v4, v7, v8}, [I

    .line 31
    move-result-object v8

    .line 32
    const/4 v4, 0x4

    .line 33
    .line 34
    new-array v10, v4, [F

    .line 35
    .line 36
    aput v0, v10, v9

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    aput v1, v10, v0

    .line 40
    const/4 v0, 0x2

    .line 41
    .line 42
    aput v3, v10, v0

    .line 43
    const/4 v0, 0x3

    .line 44
    .line 45
    aput v2, v10, v0

    .line 46
    .line 47
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 48
    move-object v4, v11

    .line 49
    move v7, p2

    .line 50
    move-object v9, v10

    .line 51
    move-object v10, v0

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 58
    :cond_0
    return-void
.end method

.method private prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V
    .locals 9

    .line 1
    .line 2
    new-instance v8, Landroid/graphics/LinearGradient;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 6
    .line 7
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    iget v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowStartColor:I

    .line 11
    .line 12
    iget v4, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowMiddleColor:I

    .line 13
    .line 14
    iget v5, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowEndColor:I

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v4, v5}, [I

    .line 18
    move-result-object v5

    .line 19
    const/4 v0, 0x3

    .line 20
    .line 21
    new-array v6, v0, [F

    .line 22
    .line 23
    .line 24
    fill-array-data v6, :array_0

    .line 25
    .line 26
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 27
    move-object v0, v8

    .line 28
    move v4, p2

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35
    const/4 p2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    return-void

    .line 40
    nop

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    .line 15
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    .line 20
    const/high16 v0, 0x42b40000    # 90.0f

    .line 21
    sub-float/2addr v0, p3

    .line 22
    .line 23
    const/high16 v1, 0x43340000    # 180.0f

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->innerBounds:Landroid/graphics/RectF;

    .line 30
    .line 31
    const/high16 v0, 0x43870000    # 270.0f

    .line 32
    sub-float/2addr v0, p3

    .line 33
    .line 34
    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 35
    add-float/2addr p3, v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 42
    return-void
.end method


# virtual methods
.method public prepareShadow()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 5
    .line 6
    if-ltz v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 9
    neg-int v1, v1

    .line 10
    int-to-float v1, v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 14
    neg-int v2, v2

    .line 15
    add-int/2addr v2, v1

    .line 16
    int-to-float v1, v2

    .line 17
    .line 18
    :goto_0
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 19
    .line 20
    if-ltz v2, :cond_1

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 23
    neg-int v2, v2

    .line 24
    int-to-float v2, v2

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 28
    neg-int v3, v3

    .line 29
    add-int/2addr v3, v2

    .line 30
    int-to-float v2, v3

    .line 31
    .line 32
    .line 33
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 38
    .line 39
    if-ltz v1, :cond_2

    .line 40
    .line 41
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 42
    neg-int v2, v2

    .line 43
    sub-int/2addr v2, v1

    .line 44
    int-to-float v1, v2

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 48
    neg-int v1, v1

    .line 49
    int-to-float v1, v1

    .line 50
    .line 51
    :goto_2
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 52
    .line 53
    if-ltz v2, :cond_3

    .line 54
    .line 55
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 56
    neg-int v2, v2

    .line 57
    int-to-float v2, v2

    .line 58
    goto :goto_3

    .line 59
    .line 60
    :cond_3
    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 61
    neg-int v3, v3

    .line 62
    add-int/2addr v3, v2

    .line 63
    int-to-float v2, v3

    .line 64
    .line 65
    .line 66
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    .line 69
    .line 70
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 71
    .line 72
    if-ltz v1, :cond_4

    .line 73
    .line 74
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 75
    neg-int v1, v1

    .line 76
    int-to-float v1, v1

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_4
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 80
    neg-int v2, v2

    .line 81
    add-int/2addr v2, v1

    .line 82
    int-to-float v1, v2

    .line 83
    .line 84
    :goto_4
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 85
    .line 86
    if-ltz v2, :cond_5

    .line 87
    .line 88
    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 89
    neg-int v3, v3

    .line 90
    sub-int/2addr v3, v2

    .line 91
    int-to-float v2, v3

    .line 92
    goto :goto_5

    .line 93
    .line 94
    :cond_5
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 95
    neg-int v2, v2

    .line 96
    int-to-float v2, v2

    .line 97
    .line 98
    .line 99
    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    .line 102
    .line 103
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetX:I

    .line 104
    .line 105
    if-ltz v1, :cond_6

    .line 106
    .line 107
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 108
    neg-int v2, v2

    .line 109
    sub-int/2addr v2, v1

    .line 110
    int-to-float v1, v2

    .line 111
    goto :goto_6

    .line 112
    .line 113
    :cond_6
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 114
    neg-int v1, v1

    .line 115
    int-to-float v1, v1

    .line 116
    .line 117
    :goto_6
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowOffsetY:I

    .line 118
    .line 119
    if-ltz v2, :cond_7

    .line 120
    .line 121
    iget v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 122
    neg-int v3, v3

    .line 123
    sub-int/2addr v3, v2

    .line 124
    int-to-float v2, v3

    .line 125
    goto :goto_7

    .line 126
    .line 127
    :cond_7
    iget v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 128
    neg-int v2, v2

    .line 129
    int-to-float v2, v2

    .line 130
    .line 131
    .line 132
    :goto_7
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsCircle:Landroid/graphics/RectF;

    .line 135
    .line 136
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowSize:I

    .line 137
    neg-int v2, v1

    .line 138
    int-to-float v2, v2

    .line 139
    neg-int v1, v1

    .line 140
    int-to-float v1, v1

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 149
    move-result v0

    .line 150
    .line 151
    iget v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 152
    .line 153
    const/high16 v2, 0x40000000    # 2.0f

    .line 154
    mul-float/2addr v1, v2

    .line 155
    sub-float/2addr v0, v1

    .line 156
    const/4 v1, 0x0

    .line 157
    .line 158
    cmpl-float v0, v0, v1

    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x1

    .line 161
    .line 162
    if-lez v0, :cond_8

    .line 163
    move v0, v4

    .line 164
    goto :goto_8

    .line 165
    :cond_8
    move v0, v3

    .line 166
    .line 167
    :goto_8
    iget-object v5, p0, Lcom/narvii/widget/shadow/ShadowConfig;->contentBounds:Landroid/graphics/RectF;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 171
    move-result v5

    .line 172
    .line 173
    iget v6, p0, Lcom/narvii/widget/shadow/ShadowConfig;->shadowCornerRadius:F

    .line 174
    mul-float/2addr v6, v2

    .line 175
    sub-float/2addr v5, v6

    .line 176
    .line 177
    cmpl-float v2, v5, v1

    .line 178
    .line 179
    if-lez v2, :cond_9

    .line 180
    move v3, v4

    .line 181
    .line 182
    :cond_9
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    .line 183
    .line 184
    iget-object v4, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    .line 185
    .line 186
    .line 187
    const v5, 0x402ccccd    # 2.7f

    .line 188
    .line 189
    if-eqz v0, :cond_a

    .line 190
    move v6, v1

    .line 191
    goto :goto_9

    .line 192
    :cond_a
    move v6, v5

    .line 193
    .line 194
    .line 195
    :goto_9
    invoke-direct {p0, v2, v4, v6}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 196
    .line 197
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    .line 198
    .line 199
    iget-object v4, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    .line 200
    .line 201
    if-eqz v3, :cond_b

    .line 202
    move v6, v1

    .line 203
    goto :goto_a

    .line 204
    :cond_b
    move v6, v5

    .line 205
    .line 206
    .line 207
    :goto_a
    invoke-direct {p0, v2, v4, v6}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 208
    .line 209
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    .line 210
    .line 211
    iget-object v4, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    .line 212
    .line 213
    if-eqz v3, :cond_c

    .line 214
    move v3, v1

    .line 215
    goto :goto_b

    .line 216
    :cond_c
    move v3, v5

    .line 217
    .line 218
    .line 219
    :goto_b
    invoke-direct {p0, v2, v4, v3}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 220
    .line 221
    iget-object v2, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    .line 222
    .line 223
    iget-object v3, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    .line 224
    .line 225
    if-eqz v0, :cond_d

    .line 226
    goto :goto_c

    .line 227
    :cond_d
    move v1, v5

    .line 228
    .line 229
    .line 230
    :goto_c
    invoke-direct {p0, v2, v3, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->preparePath(Landroid/graphics/Path;Landroid/graphics/RectF;F)V

    .line 231
    .line 232
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLT:Landroid/graphics/Paint;

    .line 233
    .line 234
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    .line 235
    .line 236
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 237
    neg-float v2, v2

    .line 238
    .line 239
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 240
    neg-float v1, v1

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 244
    move-result v1

    .line 245
    .line 246
    .line 247
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintLB:Landroid/graphics/Paint;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    .line 252
    .line 253
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 254
    neg-float v2, v2

    .line 255
    .line 256
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 257
    neg-float v1, v1

    .line 258
    .line 259
    .line 260
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 261
    move-result v1

    .line 262
    .line 263
    .line 264
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 265
    .line 266
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRT:Landroid/graphics/Paint;

    .line 267
    .line 268
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    .line 269
    .line 270
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 271
    neg-float v2, v2

    .line 272
    .line 273
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 274
    neg-float v1, v1

    .line 275
    .line 276
    .line 277
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 278
    move-result v1

    .line 279
    .line 280
    .line 281
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 282
    .line 283
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPaintRB:Landroid/graphics/Paint;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    .line 286
    .line 287
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 288
    neg-float v2, v2

    .line 289
    .line 290
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 291
    neg-float v1, v1

    .line 292
    .line 293
    .line 294
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 295
    move-result v1

    .line 296
    .line 297
    .line 298
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCornerShadowPaint(Landroid/graphics/Paint;F)V

    .line 299
    .line 300
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->circleShadowPaint:Landroid/graphics/Paint;

    .line 301
    .line 302
    .line 303
    invoke-direct {p0, v0}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareCircleShadowPaint(Landroid/graphics/Paint;)V

    .line 304
    .line 305
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLT:Landroid/graphics/Paint;

    .line 306
    .line 307
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLT:Landroid/graphics/RectF;

    .line 308
    .line 309
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 310
    .line 311
    .line 312
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    .line 313
    .line 314
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintLB:Landroid/graphics/Paint;

    .line 315
    .line 316
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsLB:Landroid/graphics/RectF;

    .line 317
    .line 318
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 319
    .line 320
    .line 321
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    .line 322
    .line 323
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRT:Landroid/graphics/Paint;

    .line 324
    .line 325
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRT:Landroid/graphics/RectF;

    .line 326
    .line 327
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 328
    .line 329
    .line 330
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    .line 331
    .line 332
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->edgeShadowPaintRB:Landroid/graphics/Paint;

    .line 333
    .line 334
    iget-object v1, p0, Lcom/narvii/widget/shadow/ShadowConfig;->outerBoundsRB:Landroid/graphics/RectF;

    .line 335
    .line 336
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 337
    .line 338
    .line 339
    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareEdgeShadowPaint(Landroid/graphics/Paint;F)V

    .line 340
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLT:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathLB:Landroid/graphics/Path;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRT:Landroid/graphics/Path;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/shadow/ShadowConfig;->cornerShadowPathRB:Landroid/graphics/Path;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/widget/shadow/ShadowConfig;->init()V

    .line 24
    return-void
.end method
