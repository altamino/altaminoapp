.class public Lcom/narvii/widget/GradientView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field bgColor:I

.field bgPaint:Landroid/graphics/Paint;

.field private boundRect:Landroid/graphics/RectF;

.field color1:I

.field color2:I

.field private endXPercent:F

.field private endYPercent:F

.field mPath:Landroid/graphics/Path;

.field overlayColor:I

.field overlayPaint:Landroid/graphics/Paint;

.field paint:Landroid/graphics/Paint;

.field pressedColor1:I

.field pressedColor2:I

.field radius:F

.field radiusArray:[F

.field private startXPercent:F

.field private startYPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Path;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/RectF;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/widget/GradientView;->startXPercent:F

    .line 21
    .line 22
    iput p1, p0, Lcom/narvii/widget/GradientView;->startYPercent:F

    .line 23
    .line 24
    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/widget/GradientView;->endXPercent:F

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/widget/GradientView;->endYPercent:F

    .line 29
    .line 30
    new-instance p1, Landroid/graphics/Paint;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 36
    const/4 p2, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    new-instance p1, Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    .line 51
    new-instance p1, Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public allowPress()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/GradientView;->color1:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->darkColor(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/widget/GradientView;->color2:I

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/narvii/util/Utils;->darkColor(I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/GradientView;->setPressedColor(II)V

    .line 16
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/widget/GradientView;->color1:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/widget/GradientView;->color2:I

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    .line 22
    int-to-float v0, v0

    .line 23
    int-to-float v1, v1

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    .line 29
    iget v2, p0, Lcom/narvii/widget/GradientView;->color1:I

    .line 30
    .line 31
    iget v3, p0, Lcom/narvii/widget/GradientView;->color2:I

    .line 32
    const/4 v4, 0x1

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 48
    .line 49
    iget v1, p0, Lcom/narvii/widget/GradientView;->color1:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    goto :goto_4

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 57
    move-result v2

    .line 58
    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    iget v2, p0, Lcom/narvii/widget/GradientView;->pressedColor1:I

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    :goto_0
    move v10, v2

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_2
    iget v2, p0, Lcom/narvii/widget/GradientView;->color1:I

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    iget v2, p0, Lcom/narvii/widget/GradientView;->pressedColor2:I

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    :goto_2
    move v11, v2

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_3
    iget v2, p0, Lcom/narvii/widget/GradientView;->color2:I

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :goto_3
    iget v2, p0, Lcom/narvii/widget/GradientView;->startXPercent:F

    .line 86
    .line 87
    mul-float v6, v2, v0

    .line 88
    .line 89
    iget v2, p0, Lcom/narvii/widget/GradientView;->startYPercent:F

    .line 90
    .line 91
    mul-float v7, v2, v1

    .line 92
    .line 93
    iget v2, p0, Lcom/narvii/widget/GradientView;->endXPercent:F

    .line 94
    .line 95
    mul-float v8, v2, v0

    .line 96
    .line 97
    iget v0, p0, Lcom/narvii/widget/GradientView;->endYPercent:F

    .line 98
    .line 99
    mul-float v9, v0, v1

    .line 100
    .line 101
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 102
    .line 103
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 104
    move-object v5, v0

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 113
    .line 114
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    .line 119
    :goto_4
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    .line 120
    .line 121
    iget v1, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    .line 127
    .line 128
    iget v1, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->radiusArray:[F

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 141
    .line 142
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/narvii/widget/GradientView;->radiusArray:[F

    .line 147
    .line 148
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 152
    .line 153
    iget v0, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    .line 164
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    .line 171
    iget v0, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    .line 172
    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    goto :goto_5

    .line 182
    .line 183
    :cond_5
    iget v0, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    .line 184
    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    .line 188
    .line 189
    iget v1, p0, Lcom/narvii/widget/GradientView;->radius:F

    .line 190
    .line 191
    iget-object v2, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 195
    .line 196
    :cond_6
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    .line 197
    .line 198
    iget v1, p0, Lcom/narvii/widget/GradientView;->radius:F

    .line 199
    .line 200
    iget-object v2, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 204
    .line 205
    iget v0, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    .line 206
    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    .line 210
    .line 211
    iget v1, p0, Lcom/narvii/widget/GradientView;->radius:F

    .line 212
    .line 213
    iget-object v2, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    :cond_7
    :goto_5
    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setColor(II)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/GradientView;->color1:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/GradientView;->color2:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public setGradientLine(FFFF)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/GradientView;->startXPercent:F

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/GradientView;->startYPercent:F

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/widget/GradientView;->endXPercent:F

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/widget/GradientView;->endYPercent:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/widget/GradientView;->pressedColor1:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/narvii/widget/GradientView;->pressedColor2:I

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 15
    :cond_0
    return-void
.end method

.method public setPressedColor(II)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/GradientView;->pressedColor1:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/GradientView;->pressedColor2:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/GradientView;->radius:F

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius([F)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/GradientView;->radiusArray:[F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
