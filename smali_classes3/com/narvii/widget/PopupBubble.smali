.class public Lcom/narvii/widget/PopupBubble;
.super Landroid/widget/FrameLayout;
.source "PopupBubble.java"


# instance fields
.field protected autoRtl:Z

.field protected backgroundColor:I

.field protected indicatorSize:I

.field protected indicatorTop:Z

.field protected indicatorX:I

.field private paddingIncludeRadius:Z

.field protected radius:I

.field protected shadowColor:I

.field protected shadowSize:I

.field protected strokeColor:I

.field protected strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/narvii/widget/PopupBubble;->autoRtl:Z

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 41
    sget-object v1, Lcom/narvii/lib/R$styleable;->PopupBubble:[I

    sget v2, Lcom/narvii/lib/R$style;->PopupBubble:I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleRadius:I

    const/16 v1, 0x14

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 45
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleShadowSize:I

    const/16 v1, 0x12

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    .line 46
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleShadowColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/PopupBubble;->shadowColor:I

    .line 47
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleIndicatorSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 48
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleColor:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/PopupBubble;->backgroundColor:I

    .line 49
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleStrokeWidth:I

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/PopupBubble;->strokeWidth:I

    .line 50
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubbleStrokeColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/PopupBubble;->strokeColor:I

    .line 51
    sget p2, Lcom/narvii/lib/R$styleable;->PopupBubble_popupBubblePaddingIncludeRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/widget/PopupBubble;->paddingIncludeRadius:Z

    .line 52
    invoke-direct {p0}, Lcom/narvii/widget/PopupBubble;->updatePadding()V

    return-void
.end method

.method private updatePadding()V
    .locals 6

    .line 56
    iget-boolean v0, p0, Lcom/narvii/widget/PopupBubble;->paddingIncludeRadius:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/widget/PopupBubble;->radius:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget v2, p0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    add-int v3, v2, v0

    add-int v4, v2, v0

    add-int/2addr v2, v0

    .line 59
    iget-boolean v5, p0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    add-int/2addr v2, v5

    .line 60
    iget v5, p0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    add-int/2addr v5, v0

    iget-boolean v0, p0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    :goto_2
    add-int/2addr v5, v1

    .line 61
    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 83
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    iget-boolean v2, v0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    .line 86
    iget v3, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    .line 87
    iget v4, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    if-eqz v2, :cond_0

    .line 88
    iget v5, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    add-int/2addr v5, v4

    .line 89
    iget v6, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    .line 91
    iget-boolean v7, v0, Lcom/narvii/widget/PopupBubble;->autoRtl:Z

    if-eqz v7, :cond_2

    .line 92
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget v8, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    sub-int/2addr v7, v8

    iget v8, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 95
    :cond_1
    iget v7, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    iget v8, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    add-int/2addr v8, v9

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    .line 98
    :cond_2
    iget v7, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    iget v8, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    add-int/2addr v8, v9

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    sub-int/2addr v8, v9

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 100
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    mul-int/lit8 v9, v4, 0x2

    sub-int/2addr v8, v9

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    iget v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int/2addr v10, v9

    .line 102
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 103
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    add-int v12, v4, v3

    int-to-float v12, v12

    int-to-float v13, v5

    .line 104
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz v2, :cond_3

    sub-int v14, v7, v6

    int-to-float v14, v14

    .line 106
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v14, v7

    sub-int v15, v5, v6

    int-to-float v15, v15

    .line 107
    invoke-virtual {v11, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v14, v7, v6

    int-to-float v14, v14

    .line 108
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v14, v4, v8

    sub-int/2addr v14, v3

    int-to-float v14, v14

    .line 109
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_3
    add-int v14, v4, v8

    sub-int/2addr v14, v3

    int-to-float v14, v14

    .line 111
    invoke-virtual {v11, v14, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-int/2addr v8, v4

    mul-int/lit8 v14, v3, 0x2

    sub-int v15, v8, v14

    int-to-float v15, v15

    .line 113
    iput v15, v9, Landroid/graphics/RectF;->left:F

    .line 114
    iput v13, v9, Landroid/graphics/RectF;->top:F

    int-to-float v8, v8

    .line 115
    iput v8, v9, Landroid/graphics/RectF;->right:F

    add-int v1, v5, v14

    int-to-float v1, v1

    .line 116
    iput v1, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v0, -0x3d4c0000    # -90.0f

    move/from16 v16, v1

    const/high16 v1, 0x42b40000    # 90.0f

    .line 117
    invoke-virtual {v11, v9, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-int/2addr v10, v5

    sub-int v0, v10, v3

    int-to-float v0, v0

    .line 118
    invoke-virtual {v11, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    iput v15, v9, Landroid/graphics/RectF;->left:F

    sub-int v0, v10, v14

    int-to-float v0, v0

    .line 120
    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 121
    iput v8, v9, Landroid/graphics/RectF;->right:F

    int-to-float v8, v10

    .line 122
    iput v8, v9, Landroid/graphics/RectF;->bottom:F

    const/4 v15, 0x0

    .line 123
    invoke-virtual {v11, v9, v15, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {v11, v12, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_4
    add-int v2, v7, v6

    int-to-float v2, v2

    .line 127
    invoke-virtual {v11, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v2, v7

    add-int/2addr v10, v6

    int-to-float v10, v10

    .line 128
    invoke-virtual {v11, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int/2addr v7, v6

    int-to-float v2, v7

    .line 129
    invoke-virtual {v11, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    invoke-virtual {v11, v12, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    int-to-float v2, v4

    .line 132
    iput v2, v9, Landroid/graphics/RectF;->left:F

    .line 133
    iput v0, v9, Landroid/graphics/RectF;->top:F

    add-int/2addr v4, v14

    int-to-float v0, v4

    .line 134
    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 135
    iput v8, v9, Landroid/graphics/RectF;->bottom:F

    .line 136
    invoke-virtual {v11, v9, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-int/2addr v5, v3

    int-to-float v3, v5

    .line 137
    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    iput v2, v9, Landroid/graphics/RectF;->left:F

    .line 139
    iput v13, v9, Landroid/graphics/RectF;->top:F

    .line 140
    iput v0, v9, Landroid/graphics/RectF;->right:F

    move/from16 v0, v16

    .line 141
    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v0, 0x43340000    # 180.0f

    .line 142
    invoke-virtual {v11, v9, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v1, p0

    .line 147
    iget v2, v1, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    if-eqz v2, :cond_5

    .line 148
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 149
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 150
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    iget v2, v1, Lcom/narvii/widget/PopupBubble;->shadowColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v2, p1

    .line 152
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    move-object/from16 v2, p1

    :goto_4
    const/4 v3, 0x0

    .line 155
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 156
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget v3, v1, Lcom/narvii/widget/PopupBubble;->backgroundColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 160
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget v3, v1, Lcom/narvii/widget/PopupBubble;->strokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 162
    iget v3, v1, Lcom/narvii/widget/PopupBubble;->strokeColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setAutoRtl(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/narvii/widget/PopupBubble;->autoRtl:Z

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setBubbleBackgroundColor(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/narvii/widget/PopupBubble;->backgroundColor:I

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIndicator(ZI)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    .line 66
    iput p2, p0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    .line 67
    invoke-direct {p0}, Lcom/narvii/widget/PopupBubble;->updatePadding()V

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
