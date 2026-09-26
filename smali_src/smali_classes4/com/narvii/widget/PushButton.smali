.class public Lcom/narvii/widget/PushButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sget v2, Lcom/narvii/lib/R$drawable;->push_button_shadow:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iput-object v1, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    iput-object v1, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    sget v2, Lcom/narvii/lib/R$dimen;->push_button_corner_radius:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 44
    move-result v1

    .line 45
    .line 46
    iput v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    .line 47
    .line 48
    sget-object v1, Lcom/narvii/lib/R$styleable;->PushButton:[I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    sget v1, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonLift:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    sget v2, Lcom/narvii/lib/R$dimen;->push_button_lift_distance:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 64
    move-result p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 68
    move-result p1

    .line 69
    .line 70
    iput p1, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 71
    .line 72
    sget p1, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonWider:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 76
    move-result p1

    .line 77
    .line 78
    iput p1, p0, Lcom/narvii/widget/PushButton;->liftWider:I

    .line 79
    .line 80
    sget p1, Lcom/narvii/lib/R$styleable;->PushButton_showShadow:I

    .line 81
    const/4 v1, 0x1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 85
    move-result p1

    .line 86
    .line 87
    iput-boolean p1, p0, Lcom/narvii/widget/PushButton;->showShadow:Z

    .line 88
    .line 89
    sget p1, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonColor:I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 93
    move-result p1

    .line 94
    .line 95
    sget v2, Lcom/narvii/lib/R$styleable;->PushButton_pushButtonColorDark:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 99
    move-result v0

    .line 100
    .line 101
    sget v2, Lcom/narvii/lib/R$styleable;->PushButton_pushShadowAlpha:I

    .line 102
    .line 103
    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 107
    move-result v2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    .line 112
    cmpg-float p2, v2, v3

    .line 113
    .line 114
    if-gez p2, :cond_0

    .line 115
    .line 116
    iget-object p2, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    const/high16 v3, 0x437f0000    # 255.0f

    .line 119
    mul-float/2addr v2, v3

    .line 120
    float-to-int v2, v2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    .line 125
    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 129
    .line 130
    iput-object p2, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    .line 131
    .line 132
    new-instance p2, Landroid/graphics/RectF;

    .line 133
    .line 134
    .line 135
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 136
    .line 137
    iput-object p2, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 138
    .line 139
    new-instance p2, Landroid/graphics/Paint;

    .line 140
    .line 141
    .line 142
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 143
    .line 144
    iput-object p2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    .line 149
    iget-object p2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 150
    .line 151
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    .line 156
    if-eqz p1, :cond_2

    .line 157
    .line 158
    if-eqz v0, :cond_1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/PushButton;->setColor(II)V

    .line 162
    goto :goto_0

    .line 163
    .line 164
    .line 165
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/widget/PushButton;->setColor(I)V

    .line 166
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSetPressed(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget v2, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 14
    int-to-float v2, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 30
    :cond_1
    return p2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/narvii/widget/PushButton;->showShadow:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    iget v2, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 25
    sub-int/2addr v2, v3

    .line 26
    .line 27
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v2

    .line 32
    .line 33
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    move-result v2

    .line 40
    .line 41
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/widget/PushButton;->rect:Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->shadow:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 58
    .line 59
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 60
    int-to-float v2, v2

    .line 61
    .line 62
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 69
    move-result v3

    .line 70
    .line 71
    iget-object v4, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 72
    .line 73
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 74
    sub-int/2addr v3, v4

    .line 75
    int-to-float v3, v3

    .line 76
    .line 77
    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v3

    .line 84
    .line 85
    iget-object v4, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 86
    .line 87
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 88
    sub-int/2addr v3, v4

    .line 89
    .line 90
    iget v4, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 91
    sub-int/2addr v3, v4

    .line 92
    int-to-float v3, v3

    .line 93
    .line 94
    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 97
    int-to-float v3, v4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 101
    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/narvii/widget/PushButton;->isForcePressed:Z

    .line 105
    .line 106
    if-eqz v0, :cond_1

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lcom/narvii/widget/PushButton;->setShadowPaintStyle(Landroid/graphics/Paint;)V

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 115
    .line 116
    iget v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    .line 117
    .line 118
    iget-object v3, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 124
    .line 125
    iget v1, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 126
    neg-int v1, v1

    .line 127
    int-to-float v1, v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 133
    .line 134
    iget v1, p0, Lcom/narvii/widget/PushButton;->liftWider:I

    .line 135
    neg-int v1, v1

    .line 136
    int-to-float v1, v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 140
    .line 141
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/narvii/widget/PushButton;->setContentPaintStyle(Landroid/graphics/Paint;)V

    .line 145
    .line 146
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 147
    .line 148
    iget v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    .line 149
    .line 150
    iget-object v2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lcom/narvii/widget/PushButton;->setContentPaintStyle(Landroid/graphics/Paint;)V

    .line 160
    .line 161
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->rectf:Landroid/graphics/RectF;

    .line 162
    .line 163
    iget v1, p0, Lcom/narvii/widget/PushButton;->cornerRadius:F

    .line 164
    .line 165
    iget-object v2, p0, Lcom/narvii/widget/PushButton;->paint:Landroid/graphics/Paint;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 169
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 3
    .line 4
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    sub-int/2addr p4, v1

    .line 6
    .line 7
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 8
    sub-int/2addr p4, v0

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    .line 12
    move-result v4

    .line 13
    .line 14
    iget-object p4, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 17
    sub-int/2addr p5, p4

    .line 18
    .line 19
    iget p4, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 20
    sub-int/2addr p5, p4

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v5

    .line 25
    move-object v0, p0

    .line 26
    move v1, p1

    .line 27
    move v2, p2

    .line 28
    move v3, p3

    .line 29
    .line 30
    .line 31
    invoke-super/range {v0 .. v5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 35
    move-result p1

    .line 36
    const/4 p2, 0x0

    .line 37
    .line 38
    :goto_0
    if-ge p2, p1, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 46
    move-result p4

    .line 47
    .line 48
    const/16 p5, 0x8

    .line 49
    .line 50
    if-eq p4, p5, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 54
    move-result p4

    .line 55
    .line 56
    iget-object p5, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget p5, p5, Landroid/graphics/Rect;->left:I

    .line 59
    add-int/2addr p4, p5

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 63
    move-result p5

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 67
    move-result v0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 70
    .line 71
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 72
    add-int/2addr v0, v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 76
    move-result v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 80
    .line 81
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p2

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    const/high16 v3, -0x80000000

    .line 20
    .line 21
    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v5, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 30
    sub-int/2addr p1, v6

    .line 31
    .line 32
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 33
    sub-int/2addr p1, v5

    .line 34
    .line 35
    .line 36
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 37
    move-result p1

    .line 38
    .line 39
    :cond_1
    if-eq v1, v4, :cond_2

    .line 40
    .line 41
    if-ne v1, v3, :cond_3

    .line 42
    .line 43
    :cond_2
    iget-object v5, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 46
    sub-int/2addr p2, v5

    .line 47
    .line 48
    iget v5, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 49
    sub-int/2addr p2, v5

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 57
    move-result p1

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    move-result p2

    .line 62
    .line 63
    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    move-result p2

    .line 73
    .line 74
    if-eq v0, v4, :cond_4

    .line 75
    .line 76
    if-ne v0, v3, :cond_5

    .line 77
    .line 78
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 79
    .line 80
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 83
    add-int/2addr v2, v0

    .line 84
    add-int/2addr p1, v2

    .line 85
    .line 86
    :cond_5
    if-eq v1, v4, :cond_6

    .line 87
    .line 88
    if-ne v1, v3, :cond_7

    .line 89
    .line 90
    :cond_6
    iget-object v0, p0, Lcom/narvii/widget/PushButton;->shadowPadding:Landroid/graphics/Rect;

    .line 91
    .line 92
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    .line 94
    iget v1, p0, Lcom/narvii/widget/PushButton;->liftDistance:I

    .line 95
    add-int/2addr v0, v1

    .line 96
    add-int/2addr p2, v0

    .line 97
    .line 98
    .line 99
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 100
    return-void
.end method

.method public setColor(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 1
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/PushButton;->setColor(II)V

    return-void
.end method

.method public setColor(II)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/PushButton;->color:I

    iput p2, p0, Lcom/narvii/widget/PushButton;->color2:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected setContentPaintStyle(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/PushButton;->color:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    return-void
.end method

.method public setForcePressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/PushButton;->isForcePressed:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 4
    return-void
.end method

.method protected setShadowPaintStyle(Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/PushButton;->color2:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    return-void
.end method
