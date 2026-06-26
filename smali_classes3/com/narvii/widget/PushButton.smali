.class public Lcom/narvii/widget/PushButton;
.super Landroid/widget/FrameLayout;
.source "PushButton.java"


# instance fields
.field color:I

.field color2:I

.field protected cornerRadius:F

.field private isForcePressed:Z

.field liftDistance:I

.field liftWider:I

.field paint:Landroid/graphics/Paint;

.field rect:Landroid/graphics/Rect;

.field rectf:Landroid/graphics/RectF;

.field shadow:Landroid/graphics/drawable/Drawable;

.field shadowPadding:Landroid/graphics/Rect;

.field showShadow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$drawable;->push_button_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 42
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$dimen;->push_button_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    .line 45
    sget-object v1, Lcom/narvii/lib/R$styleable;->PushButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 46
    sget v1, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonLift:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/narvii/lib/R$dimen;->push_button_lift_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 47
    sget p1, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonWider:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/PushButton;->liftWider:I

    .line 48
    sget p1, Lcom/narvii/lib/R$styleable;->PushButton_showShadow:I

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/widget/PushButton;->showShadow:Z

    .line 49
    sget p1, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 50
    sget v2, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonColorDark:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 51
    sget v2, Lcom/narvii/lib/R$styleable;->PushButton_pushShadowAlpha:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    cmpg-float p2, v2, v3

    if-gez p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 56
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    .line 57
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 59
    iget-object p2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object p2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/PushButton;->setColor(II)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/widget/PushButton;->setColor(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetPressed(Z)V

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 130
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v2, 0x0

    .line 132
    iget v3, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 134
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eq v0, v1, :cond_1

    .line 136
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return p2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 152
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-boolean v1, p0, Lcom/narvii/widget/PushButton;->showShadow:Z

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 158
    iget v2, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    iget-object v3, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 160
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 161
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 162
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    .line 166
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 168
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 170
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    int-to-float v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    if-nez v0, :cond_2

    .line 171
    iget-boolean v0, p0, Lcom/narvii/widget/PushButton;->isForcePressed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/PushButton;->setShadowPaintStyle(Landroid/graphics/Paint;)V

    .line 176
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    iget-object v3, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 178
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/PushButton;->liftWider:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 179
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/PushButton;->setContentPaintStyle(Landroid/graphics/Paint;)V

    .line 180
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    iget-object v2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 172
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Lcom/narvii/widget/PushButton;->setContentPaintStyle(Landroid/graphics/Paint;)V

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    iget-object v2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object p4, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p4

    iget p4, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    sub-int/2addr p5, p4

    .line 112
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 111
    invoke-super/range {v0 .. v5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 114
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 115
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 116
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->left:I

    add-int/2addr p4, p5

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 89
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 90
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    .line 92
    :cond_0
    iget-object v5, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v5

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1
    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_3

    .line 95
    :cond_2
    iget-object v5, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v5

    iget v5, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    sub-int/2addr p2, v5

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 97
    :cond_3
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_5

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    add-int/2addr p1, v2

    :cond_5
    if-eq v1, v4, :cond_6

    if-ne v1, v3, :cond_7

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 106
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 73
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 74
    aget v2, v0, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    aput v2, v0, v1

    .line 75
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/PushButton;->setColor(II)V

    return-void
.end method

.method public setColor(II)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/narvii/widget/PushButton;->color:I

    .line 81
    iput p2, p0, Lcom/narvii/widget/PushButton;->color2:I

    .line 82
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setContentPaintStyle(Landroid/graphics/Paint;)V
    .locals 1

    .line 185
    iget v0, p0, Lcom/narvii/widget/PushButton;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setForcePressed(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/narvii/widget/PushButton;->isForcePressed:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    return-void
.end method

.method protected setShadowPaintStyle(Landroid/graphics/Paint;)V
    .locals 1

    .line 189
    iget v0, p0, Lcom/narvii/widget/PushButton;->color2:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
