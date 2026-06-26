.class public Lcom/narvii/story/detail/StoryUserHintBubble;
.super Lcom/narvii/widget/PopupBubble;
.source "StoryUserHintBubble.java"

# interfaces
.implements Lcom/narvii/util/ToolTipHelper$CustomTooltipBubble;


# static fields
.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2


# instance fields
.field private paddingHightLight:I

.field private radius2:I

.field private strokeColor2:I

.field private strokeWidth2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/PopupBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lcom/narvii/amino/R$styleable;->StoryUserHintBubble:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const/16 v0, 0x3c

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/story/detail/StoryUserHintBubble;->radius2:I

    .line 35
    iget p2, p0, Lcom/narvii/widget/PopupBubble;->strokeWidth:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    .line 36
    iget p2, p0, Lcom/narvii/widget/PopupBubble;->strokeColor:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeColor2:I

    const/4 p2, 0x0

    const/16 v0, 0xf

    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/story/detail/StoryUserHintBubble;->paddingHightLight:I

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getLayoutMarginLeft(Landroid/graphics/Rect;I)I
    .locals 5

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    sub-int/2addr v1, v2

    add-int v2, v1, v0

    .line 241
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    if-gez v3, :cond_2

    if-le v2, p2, :cond_2

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v3, p2, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    .line 246
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    if-le p1, v3, :cond_1

    sub-int/2addr p2, v0

    .line 249
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    return v1

    :cond_2
    if-gez v3, :cond_3

    return v1

    :cond_3
    if-le v2, p2, :cond_4

    return v3

    .line 259
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    div-int/lit8 p2, p2, 0x2

    if-ge p1, p2, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 49
    iget-boolean v2, v0, Lcom/narvii/widget/PopupBubble;->autoRtl:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 52
    :cond_0
    iget v2, v0, Lcom/narvii/widget/PopupBubble;->indicatorX:I

    iget v3, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 56
    :goto_0
    iget v3, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    iget v4, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ge v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget v6, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    sub-int/2addr v3, v6

    iget v6, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    sub-int/2addr v3, v6

    iget v6, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int/2addr v3, v6

    if-le v2, v3, :cond_8

    const/4 v2, 0x2

    .line 65
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget v6, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iget v7, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    mul-int/lit8 v8, v7, 0x2

    sub-int/2addr v6, v8

    iget v8, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int/2addr v6, v8

    .line 67
    iget-boolean v9, v0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    add-int/2addr v7, v8

    add-int v8, v7, v6

    .line 69
    iget v9, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    add-int v10, v9, v3

    .line 71
    iget v11, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    div-int/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 72
    iget v12, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->radius2:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v3, v5

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 74
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 75
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 76
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    .line 77
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    int-to-float v15, v9

    .line 79
    iget v5, v0, Lcom/narvii/widget/PopupBubble;->radius:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v12, v15, v5}, Landroid/graphics/Path;->moveTo(FF)V

    if-ne v2, v4, :cond_4

    sub-int v2, v10, v11

    int-to-float v2, v2

    int-to-float v4, v8

    .line 82
    invoke-virtual {v12, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    iget-boolean v5, v0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    if-eqz v5, :cond_3

    add-int v5, v9, v3

    int-to-float v5, v5

    .line 85
    invoke-virtual {v12, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    iput v15, v6, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int v5, v8, v3

    int-to-float v5, v5

    .line 88
    iput v5, v6, Landroid/graphics/RectF;->top:F

    add-int/2addr v3, v9

    int-to-float v3, v3

    .line 89
    iput v3, v6, Landroid/graphics/RectF;->right:F

    .line 90
    iput v4, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x42b40000    # 90.0f

    .line 91
    invoke-virtual {v12, v6, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 93
    iget v3, v6, Landroid/graphics/RectF;->left:F

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->paddingHightLight:I

    int-to-float v1, v5

    add-float/2addr v3, v1

    iput v3, v13, Landroid/graphics/RectF;->left:F

    .line 94
    iget v1, v6, Landroid/graphics/RectF;->top:F

    int-to-float v3, v5

    add-float/2addr v1, v3

    iput v1, v13, Landroid/graphics/RectF;->top:F

    .line 95
    iget v1, v6, Landroid/graphics/RectF;->right:F

    int-to-float v3, v5

    sub-float/2addr v1, v3

    iput v1, v13, Landroid/graphics/RectF;->right:F

    .line 96
    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v5

    sub-float/2addr v1, v3

    iput v1, v13, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 97
    invoke-virtual {v14, v13, v1, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 98
    iget v1, v13, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    const/16 v16, 0x2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 99
    iget v1, v13, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget v1, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int v1, v7, v1

    int-to-float v1, v1

    invoke-virtual {v12, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    iget v1, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    add-int/2addr v9, v1

    int-to-float v1, v9

    int-to-float v3, v7

    invoke-virtual {v12, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 104
    :cond_3
    iget v1, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    add-int/2addr v1, v9

    int-to-float v1, v1

    invoke-virtual {v12, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    iget v1, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    add-int/2addr v1, v8

    int-to-float v1, v1

    invoke-virtual {v12, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v1, v7, v3

    int-to-float v1, v1

    .line 107
    invoke-virtual {v12, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    iput v15, v6, Landroid/graphics/RectF;->left:F

    int-to-float v1, v7

    .line 110
    iput v1, v6, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v9, v3

    int-to-float v1, v9

    .line 111
    iput v1, v6, Landroid/graphics/RectF;->right:F

    add-int/2addr v3, v7

    int-to-float v1, v3

    .line 112
    iput v1, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 113
    invoke-virtual {v12, v6, v1, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 115
    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v3, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->paddingHightLight:I

    int-to-float v5, v3

    add-float/2addr v1, v5

    iput v1, v13, Landroid/graphics/RectF;->left:F

    .line 116
    iget v1, v6, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    add-float/2addr v1, v5

    iput v1, v13, Landroid/graphics/RectF;->top:F

    .line 117
    iget v1, v6, Landroid/graphics/RectF;->right:F

    int-to-float v5, v3

    sub-float/2addr v1, v5

    iput v1, v13, Landroid/graphics/RectF;->right:F

    .line 118
    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iput v1, v13, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 119
    invoke-virtual {v14, v13, v1, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 120
    iget v1, v13, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    const/4 v9, 0x2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 121
    iget v1, v13, Landroid/graphics/RectF;->left:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v14, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    int-to-float v1, v7

    .line 124
    invoke-virtual {v12, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v2, v11, 0x2

    sub-int v3, v10, v2

    int-to-float v3, v3

    .line 126
    iput v3, v6, Landroid/graphics/RectF;->left:F

    .line 127
    iput v1, v6, Landroid/graphics/RectF;->top:F

    int-to-float v1, v10

    .line 128
    iput v1, v6, Landroid/graphics/RectF;->right:F

    add-int/2addr v7, v2

    int-to-float v5, v7

    .line 129
    iput v5, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v7, 0x42b40000    # 90.0f

    .line 130
    invoke-virtual {v12, v6, v5, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-int v5, v8, v11

    int-to-float v5, v5

    .line 132
    invoke-virtual {v12, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    iput v3, v6, Landroid/graphics/RectF;->left:F

    sub-int/2addr v8, v2

    int-to-float v2, v8

    .line 135
    iput v2, v6, Landroid/graphics/RectF;->top:F

    .line 136
    iput v1, v6, Landroid/graphics/RectF;->right:F

    .line 137
    iput v4, v6, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v12, v6, v1, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_5

    :cond_4
    add-int v1, v9, v11

    int-to-float v1, v1

    int-to-float v2, v7

    .line 140
    invoke-virtual {v12, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 142
    iget-boolean v4, v0, Lcom/narvii/widget/PopupBubble;->indicatorTop:Z

    if-eqz v4, :cond_5

    .line 143
    iget v4, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int v4, v10, v4

    int-to-float v4, v4

    invoke-virtual {v12, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v4, v10

    .line 144
    iget v5, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int v5, v7, v5

    int-to-float v5, v5

    invoke-virtual {v12, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sub-int v5, v8, v3

    int-to-float v5, v5

    .line 146
    invoke-virtual {v12, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v5, 0x2

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v10, v3

    int-to-float v5, v10

    .line 148
    iput v5, v6, Landroid/graphics/RectF;->left:F

    sub-int v3, v8, v3

    int-to-float v3, v3

    .line 149
    iput v3, v6, Landroid/graphics/RectF;->top:F

    .line 150
    iput v4, v6, Landroid/graphics/RectF;->right:F

    int-to-float v3, v8

    .line 151
    iput v3, v6, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    .line 152
    invoke-virtual {v12, v6, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 154
    iget v3, v6, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->paddingHightLight:I

    int-to-float v5, v4

    add-float/2addr v3, v5

    iput v3, v13, Landroid/graphics/RectF;->left:F

    .line 155
    iget v3, v6, Landroid/graphics/RectF;->top:F

    int-to-float v5, v4

    add-float/2addr v3, v5

    iput v3, v13, Landroid/graphics/RectF;->top:F

    .line 156
    iget v3, v6, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    sub-float/2addr v3, v5

    iput v3, v13, Landroid/graphics/RectF;->right:F

    .line 157
    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v13, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    .line 158
    invoke-virtual {v14, v13, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 159
    iget v3, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    const/16 v16, 0x2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 160
    iget v3, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v17, v2

    goto :goto_4

    :cond_5
    const/16 v16, 0x2

    sub-int v4, v10, v3

    int-to-float v4, v4

    .line 163
    invoke-virtual {v12, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    mul-int/lit8 v3, v3, 0x2

    sub-int v4, v10, v3

    int-to-float v4, v4

    .line 165
    iput v4, v6, Landroid/graphics/RectF;->left:F

    .line 166
    iput v2, v6, Landroid/graphics/RectF;->top:F

    int-to-float v4, v10

    .line 167
    iput v4, v6, Landroid/graphics/RectF;->right:F

    add-int/2addr v3, v7

    int-to-float v3, v3

    .line 168
    iput v3, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v5, 0x42b40000    # 90.0f

    .line 169
    invoke-virtual {v12, v6, v3, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 172
    iget v3, v6, Landroid/graphics/RectF;->left:F

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->paddingHightLight:I

    move/from16 v17, v2

    int-to-float v2, v5

    add-float/2addr v3, v2

    iput v3, v13, Landroid/graphics/RectF;->left:F

    .line 173
    iget v2, v6, Landroid/graphics/RectF;->top:F

    int-to-float v3, v5

    add-float/2addr v2, v3

    iput v2, v13, Landroid/graphics/RectF;->top:F

    .line 174
    iget v2, v6, Landroid/graphics/RectF;->right:F

    int-to-float v3, v5

    sub-float/2addr v2, v3

    iput v2, v13, Landroid/graphics/RectF;->right:F

    .line 175
    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v5

    sub-float/2addr v2, v3

    iput v2, v13, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 176
    invoke-virtual {v14, v13, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 177
    iget v2, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    const/16 v16, 0x2

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    iget v2, v13, Landroid/graphics/RectF;->right:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v5, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    iget v2, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    add-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v12, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget v2, v0, Lcom/narvii/widget/PopupBubble;->indicatorSize:I

    sub-int/2addr v10, v2

    int-to-float v2, v10

    int-to-float v3, v8

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    int-to-float v2, v8

    .line 184
    invoke-virtual {v12, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iput v15, v6, Landroid/graphics/RectF;->left:F

    mul-int/lit8 v1, v11, 0x2

    sub-int/2addr v8, v1

    int-to-float v3, v8

    .line 187
    iput v3, v6, Landroid/graphics/RectF;->top:F

    add-int/2addr v9, v1

    int-to-float v3, v9

    .line 188
    iput v3, v6, Landroid/graphics/RectF;->right:F

    .line 189
    iput v2, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v2, 0x42b40000    # 90.0f

    .line 190
    invoke-virtual {v12, v6, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-int/2addr v11, v7

    int-to-float v4, v11

    .line 192
    invoke-virtual {v12, v15, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    iput v15, v6, Landroid/graphics/RectF;->left:F

    move/from16 v4, v17

    .line 195
    iput v4, v6, Landroid/graphics/RectF;->top:F

    .line 196
    iput v3, v6, Landroid/graphics/RectF;->right:F

    add-int/2addr v7, v1

    int-to-float v1, v7

    .line 197
    iput v1, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43340000    # 180.0f

    .line 198
    invoke-virtual {v12, v6, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 201
    :goto_5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 202
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    iget v2, v0, Lcom/narvii/widget/PopupBubble;->shadowSize:I

    if-eqz v2, :cond_6

    .line 204
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 205
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 206
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    iget v2, v0, Lcom/narvii/widget/PopupBubble;->shadowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v2, p1

    .line 208
    invoke-virtual {v2, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_6
    move-object/from16 v2, p1

    :goto_6
    const/4 v3, 0x0

    .line 211
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 212
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    iget v4, v0, Lcom/narvii/widget/PopupBubble;->backgroundColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 216
    new-instance v4, Landroid/graphics/LinearGradient;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    const/16 v23, 0x0

    sget-object v24, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_7

    .line 218
    :cond_7
    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    const/16 v31, 0x0

    sget-object v32, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v25, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v30, v7

    invoke-direct/range {v25 .. v32}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 220
    :goto_7
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 221
    invoke-virtual {v2, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 223
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget v4, v0, Lcom/narvii/widget/PopupBubble;->strokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget v4, v0, Lcom/narvii/widget/PopupBubble;->strokeColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    invoke-virtual {v2, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget v3, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeWidth2:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    iget v3, v0, Lcom/narvii/story/detail/StoryUserHintBubble;->strokeColor2:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 233
    invoke-virtual {v2, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_8
    move-object v2, v1

    .line 61
    invoke-super/range {p0 .. p1}, Lcom/narvii/widget/PopupBubble;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :array_0
    .array-data 4
        -0x3e00
        -0x5100
    .end array-data

    :array_1
    .array-data 4
        -0x3e00
        -0x5100
    .end array-data
.end method

.method public setIndicator(ZI)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    return-void
.end method
