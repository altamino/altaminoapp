.class public Lcom/narvii/widget/GradientView;
.super Landroid/view/View;
.source "GradientView.java"


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

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/narvii/widget/GradientView;->startXPercent:F

    .line 42
    iput p1, p0, Lcom/narvii/widget/GradientView;->startYPercent:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    iput p1, p0, Lcom/narvii/widget/GradientView;->endXPercent:F

    .line 44
    iput p1, p0, Lcom/narvii/widget/GradientView;->endYPercent:F

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    .line 49
    iget-object p1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    .line 52
    iget-object p1, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public allowPress()V
    .locals 2

    .line 71
    iget v0, p0, Lcom/narvii/widget/GradientView;->color1:I

    invoke-static {v0}, Lcom/narvii/util/Utils;->darkColor(I)I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/GradientView;->color2:I

    invoke-static {v1}, Lcom/narvii/util/Utils;->darkColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/narvii/widget/GradientView;->setPressedColor(II)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget v0, p0, Lcom/narvii/widget/GradientView;->color1:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/GradientView;->color2:I

    if-eqz v0, :cond_7

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 120
    iget v2, p0, Lcom/narvii/widget/GradientView;->color1:I

    iget v3, p0, Lcom/narvii/widget/GradientView;->color2:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 121
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 122
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/GradientView;->color1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/narvii/widget/GradientView;->pressedColor1:I

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/narvii/widget/GradientView;->color1:I

    :goto_0
    move v10, v2

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/narvii/widget/GradientView;->pressedColor2:I

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/narvii/widget/GradientView;->color2:I

    :goto_1
    move v11, v2

    .line 128
    iget v2, p0, Lcom/narvii/widget/GradientView;->startXPercent:F

    mul-float v6, v2, v0

    .line 129
    iget v2, p0, Lcom/narvii/widget/GradientView;->startYPercent:F

    mul-float v7, v2, v1

    .line 130
    iget v2, p0, Lcom/narvii/widget/GradientView;->endXPercent:F

    mul-float v8, v2, v0

    .line 131
    iget v0, p0, Lcom/narvii/widget/GradientView;->endYPercent:F

    mul-float v9, v0, v1

    .line 133
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 135
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 136
    iget-object v1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->radiusArray:[F

    if-eqz v0, :cond_5

    .line 145
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 146
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/narvii/widget/GradientView;->radiusArray:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 148
    iget v0, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 154
    iget v0, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    if-eqz v0, :cond_7

    .line 155
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 159
    :cond_5
    iget v0, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    if-eqz v0, :cond_6

    .line 160
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/GradientView;->radius:F

    iget-object v2, p0, Lcom/narvii/widget/GradientView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/GradientView;->radius:F

    iget-object v2, p0, Lcom/narvii/widget/GradientView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    iget v0, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lcom/narvii/widget/GradientView;->boundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/GradientView;->radius:F

    iget-object v2, p0, Lcom/narvii/widget/GradientView;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/narvii/widget/GradientView;->bgColor:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColor(II)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/narvii/widget/GradientView;->color1:I

    .line 60
    iput p2, p0, Lcom/narvii/widget/GradientView;->color2:I

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGradientLine(FFFF)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/narvii/widget/GradientView;->startXPercent:F

    .line 96
    iput p2, p0, Lcom/narvii/widget/GradientView;->startYPercent:F

    .line 97
    iput p3, p0, Lcom/narvii/widget/GradientView;->endXPercent:F

    .line 98
    iput p4, p0, Lcom/narvii/widget/GradientView;->endYPercent:F

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOverlayColor(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/narvii/widget/GradientView;->overlayColor:I

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 105
    iget p1, p0, Lcom/narvii/widget/GradientView;->pressedColor1:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/widget/GradientView;->pressedColor2:I

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPressedColor(II)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/narvii/widget/GradientView;->pressedColor1:I

    .line 66
    iput p2, p0, Lcom/narvii/widget/GradientView;->pressedColor2:I

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/widget/GradientView;->radius:F

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius([F)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/widget/GradientView;->radiusArray:[F

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
