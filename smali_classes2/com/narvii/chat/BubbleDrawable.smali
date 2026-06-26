.class public Lcom/narvii/chat/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BubbleDrawable.java"


# static fields
.field static final pressedFilter:Landroid/graphics/ColorFilter;

.field static final rect:Landroid/graphics/Rect;

.field static final rectf:Landroid/graphics/RectF;


# instance fields
.field protected hideArrow:Z

.field protected l:I

.field protected left:Z

.field protected middleArrow:Z

.field protected paddingH:I

.field protected paddingV:I

.field protected final paint:Landroid/graphics/Paint;

.field protected final path:Landroid/graphics/Path;

.field protected pressed:Z

.field protected r:I

.field protected t:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/narvii/chat/BubbleDrawable;->rect:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 44
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    sput-object v1, Lcom/narvii/chat/BubbleDrawable;->pressedFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 60
    iget-object v4, v0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    iget-boolean v5, v0, Lcom/narvii/chat/BubbleDrawable;->pressed:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/narvii/chat/BubbleDrawable;->pressedFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v4

    const/4 v5, 0x0

    if-ge v2, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 62
    iget-boolean v4, v0, Lcom/narvii/chat/BubbleDrawable;->middleArrow:Z

    if-eqz v4, :cond_1

    .line 63
    div-int/lit8 v4, v3, 0x2

    iput v4, v0, Lcom/narvii/chat/BubbleDrawable;->t:I

    .line 67
    :cond_1
    iget v4, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    int-to-float v4, v4

    const v6, 0x3fb33333    # 1.4f

    mul-float v4, v4, v6

    .line 70
    iget-boolean v6, v0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x41000000    # 8.0f

    if-eqz v6, :cond_2

    .line 71
    iget-object v6, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 73
    sget-object v6, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    iget v12, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    int-to-float v12, v12

    iput v12, v6, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    .line 74
    iput v2, v6, Landroid/graphics/RectF;->right:F

    .line 75
    iput v5, v6, Landroid/graphics/RectF;->top:F

    int-to-float v2, v3

    .line 76
    iput v2, v6, Landroid/graphics/RectF;->bottom:F

    .line 77
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->r:I

    int-to-float v5, v3

    int-to-float v3, v3

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v5, v3, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 79
    iget v2, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    if-lez v2, :cond_3

    iget-boolean v3, v0, Lcom/narvii/chat/BubbleDrawable;->hideArrow:Z

    if-nez v3, :cond_3

    .line 80
    div-int/lit8 v3, v2, 0x4

    .line 81
    iget v5, v0, Lcom/narvii/chat/BubbleDrawable;->t:I

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    .line 82
    iget-object v3, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v5, v5

    invoke-virtual {v3, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    iget v2, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    int-to-float v3, v2

    div-float v6, v4, v10

    sub-float v13, v3, v6

    int-to-float v3, v2

    mul-float v9, v9, v4

    div-float/2addr v9, v11

    sub-float v15, v3, v9

    mul-float v8, v8, v4

    div-float/2addr v8, v11

    sub-float v16, v5, v8

    int-to-float v2, v2

    sub-float v17, v2, v9

    mul-float v10, v10, v4

    div-float/2addr v10, v11

    sub-float v18, v5, v10

    move v14, v5

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 84
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    iget v2, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    int-to-float v3, v2

    sub-float v13, v3, v9

    int-to-float v3, v2

    sub-float v15, v3, v8

    mul-float v4, v4, v7

    div-float/2addr v4, v11

    add-float v16, v5, v4

    int-to-float v2, v2

    add-float v18, v5, v9

    move/from16 v17, v2

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 85
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    goto/16 :goto_1

    .line 88
    :cond_2
    iget-object v6, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 90
    sget-object v6, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    iput v5, v6, Landroid/graphics/RectF;->left:F

    .line 91
    iget v12, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    sub-int v12, v2, v12

    int-to-float v12, v12

    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 92
    iput v5, v6, Landroid/graphics/RectF;->top:F

    int-to-float v3, v3

    .line 93
    iput v3, v6, Landroid/graphics/RectF;->bottom:F

    .line 94
    iget-object v3, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    iget v5, v0, Lcom/narvii/chat/BubbleDrawable;->r:I

    int-to-float v12, v5

    int-to-float v5, v5

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v6, v12, v5, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 96
    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    if-lez v3, :cond_3

    iget-boolean v5, v0, Lcom/narvii/chat/BubbleDrawable;->hideArrow:Z

    if-nez v5, :cond_3

    .line 97
    div-int/lit8 v5, v3, 0x4

    .line 98
    iget v6, v0, Lcom/narvii/chat/BubbleDrawable;->t:I

    div-int/lit8 v12, v3, 0x2

    sub-int/2addr v6, v12

    sub-int/2addr v6, v5

    .line 99
    iget-object v5, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    sub-int v3, v2, v3

    int-to-float v3, v3

    int-to-float v6, v6

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    sub-int v5, v2, v3

    int-to-float v5, v5

    div-float v13, v4, v10

    add-float/2addr v13, v5

    sub-int v5, v2, v3

    int-to-float v5, v5

    mul-float v9, v9, v4

    div-float/2addr v9, v11

    add-float v15, v5, v9

    mul-float v8, v8, v4

    div-float/2addr v8, v11

    sub-float v16, v6, v8

    sub-int v3, v2, v3

    int-to-float v3, v3

    add-float v17, v3, v9

    mul-float v10, v10, v4

    div-float/2addr v10, v11

    sub-float v18, v6, v10

    move v14, v6

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 101
    iget-object v12, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    sub-int v5, v2, v3

    int-to-float v5, v5

    add-float v13, v5, v9

    sub-int v5, v2, v3

    int-to-float v5, v5

    add-float v15, v5, v8

    mul-float v4, v4, v7

    div-float/2addr v4, v11

    add-float v16, v6, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float v18, v6, v9

    move/from16 v17, v2

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 102
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 106
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/narvii/chat/BubbleDrawable;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 108
    :cond_4
    iget-boolean v4, v0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    if-eqz v4, :cond_5

    .line 109
    sget-object v4, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    iget v6, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    int-to-float v6, v6

    iput v6, v4, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    .line 110
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 111
    iput v5, v4, Landroid/graphics/RectF;->top:F

    int-to-float v2, v3

    .line 112
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 114
    :cond_5
    sget-object v4, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 115
    iget v6, v0, Lcom/narvii/chat/BubbleDrawable;->l:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 116
    iput v5, v4, Landroid/graphics/RectF;->top:F

    int-to-float v2, v3

    .line 117
    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 119
    :goto_2
    sget-object v2, Lcom/narvii/chat/BubbleDrawable;->rectf:Landroid/graphics/RectF;

    iget v3, v0, Lcom/narvii/chat/BubbleDrawable;->r:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .line 200
    iget v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingH:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 201
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 202
    iget-boolean v0, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 205
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 207
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 210
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 212
    :goto_0
    iget v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingV:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 213
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x1

    return p1
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowMiddle(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->middleArrow:Z

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowSize(I)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDefault(Landroid/content/Context;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07009a

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->r:I

    const v0, 0x7f0700a7

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->t:I

    const v0, 0x7f07009b

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->l:I

    const v0, 0x7f0700a4

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingH:I

    const v0, 0x7f0700a5

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/BubbleDrawable;->paddingV:I

    .line 130
    iget-object v0, p0, Lcom/narvii/chat/BubbleDrawable;->paint:Landroid/graphics/Paint;

    const v1, 0x7f06006c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDirection(Z)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    if-eq v0, p1, :cond_0

    .line 181
    iput-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->left:Z

    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setHideArrow(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->hideArrow:Z

    .line 144
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/narvii/chat/BubbleDrawable;->r:I

    return-void
.end method

.method public setState([I)Z
    .locals 7

    .line 160
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    aget v5, p1, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    iget-boolean p1, p0, Lcom/narvii/chat/BubbleDrawable;->pressed:Z

    if-eq p1, v3, :cond_2

    .line 166
    iput-boolean v3, p0, Lcom/narvii/chat/BubbleDrawable;->pressed:Z

    .line 167
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v4

    :cond_2
    return v1
.end method
