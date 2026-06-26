.class public Lcom/narvii/widget/NVGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NVGradientDrawable.java"


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

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->startXPercent:F

    .line 34
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->startYPercent:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->endXPercent:F

    .line 36
    iput v0, p0, Lcom/narvii/widget/NVGradientDrawable;->endYPercent:F

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    .line 49
    iput p2, p0, Lcom/narvii/widget/NVGradientDrawable;->color2:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 84
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->color2:I

    if-eqz v0, :cond_5

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 88
    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    iget v9, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    iget v10, p0, Lcom/narvii/widget/NVGradientDrawable;->color2:I

    const/4 v2, 0x1

    if-ne v9, v10, :cond_1

    .line 91
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 93
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->color1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 98
    :cond_1
    iget v3, p0, Lcom/narvii/widget/NVGradientDrawable;->startXPercent:F

    mul-float v5, v3, v0

    .line 99
    iget v3, p0, Lcom/narvii/widget/NVGradientDrawable;->startYPercent:F

    mul-float v6, v3, v1

    .line 100
    iget v3, p0, Lcom/narvii/widget/NVGradientDrawable;->endXPercent:F

    mul-float v7, v3, v0

    .line 101
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->endYPercent:F

    mul-float v8, v0, v1

    .line 103
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 105
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 106
    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->radiusArray:[F

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 116
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->radiusArray:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 118
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 129
    :cond_3
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 135
    iget v0, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/narvii/widget/NVGradientDrawable;->boundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    iget-object v2, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

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

    .line 59
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->bgColor:I

    .line 60
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setGradientLine(FFFF)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->startXPercent:F

    .line 75
    iput p2, p0, Lcom/narvii/widget/NVGradientDrawable;->startYPercent:F

    .line 76
    iput p3, p0, Lcom/narvii/widget/NVGradientDrawable;->endXPercent:F

    .line 77
    iput p4, p0, Lcom/narvii/widget/NVGradientDrawable;->endYPercent:F

    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setOverlayColor(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->overlayColor:I

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/narvii/widget/NVGradientDrawable;->radius:F

    .line 65
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius([F)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/widget/NVGradientDrawable;->radiusArray:[F

    .line 70
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
