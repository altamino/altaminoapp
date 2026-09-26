.class public Lcom/narvii/widget/NVGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
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

.field radius:F

.field radiusArray:[F

.field private startXPercent:F

.field private startYPercent:F


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Path;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/RectF;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->startXPercent:F

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->startYPercent:F

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->endXPercent:F

    .line 27
    .line 28
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->endYPercent:F

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Paint;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 34
    .line 35
    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 36
    const/4 v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    .line 61
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    .line 62
    .line 63
    iput p2, p0, Lcom/narvii/widget/NVGradientDrawable;->color2:I

    .line 64
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->color2:I

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    .line 27
    int-to-float v0, v0

    .line 28
    int-to-float v1, v1

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    .line 34
    iget v9, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    .line 35
    .line 36
    iget v10, p0, Lcom/narvii/widget/NVGradientDrawable;->color2:I

    .line 37
    const/4 v2, 0x1

    .line 38
    .line 39
    if-ne v9, v10, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget v3, p0, Lcom/narvii/widget/NVGradientDrawable;->startXPercent:F

    .line 61
    .line 62
    mul-float v5, v3, v0

    .line 63
    .line 64
    iget v3, p0, Lcom/narvii/widget/NVGradientDrawable;->startYPercent:F

    .line 65
    .line 66
    mul-float v6, v3, v1

    .line 67
    .line 68
    iget v3, p0, Lcom/narvii/widget/NVGradientDrawable;->endXPercent:F

    .line 69
    .line 70
    mul-float v7, v3, v0

    .line 71
    .line 72
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->endYPercent:F

    .line 73
    .line 74
    mul-float v8, v0, v1

    .line 75
    .line 76
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 77
    .line 78
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 79
    move-object v4, v0

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    .line 94
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 95
    .line 96
    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    .line 101
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    .line 102
    .line 103
    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->radiusArray:[F

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 116
    .line 117
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    .line 120
    .line 121
    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->radiusArray:[F

    .line 122
    .line 123
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 127
    .line 128
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    .line 129
    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 138
    .line 139
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    .line 146
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    .line 147
    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    .line 151
    .line 152
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 156
    goto :goto_1

    .line 157
    .line 158
    :cond_3
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    .line 159
    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    .line 163
    .line 164
    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    .line 165
    .line 166
    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 170
    .line 171
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    .line 172
    .line 173
    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    .line 174
    .line 175
    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 179
    .line 180
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    .line 181
    .line 182
    if-eqz v0, :cond_5

    .line 183
    .line 184
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    .line 185
    .line 186
    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    .line 187
    .line 188
    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 192
    :cond_5
    :goto_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setGradientLine(FFFF)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->startXPercent:F

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/NVGradientDrawable;->startYPercent:F

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/widget/NVGradientDrawable;->endXPercent:F

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/widget/NVGradientDrawable;->endYPercent:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius([F)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVGradientDrawable;->radiusArray:[F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
