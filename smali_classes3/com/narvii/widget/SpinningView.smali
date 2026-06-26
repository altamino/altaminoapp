.class public Lcom/narvii/widget/SpinningView;
.super Landroid/view/View;
.source "SpinningView.java"


# instance fields
.field color:I

.field paint:Landroid/graphics/Paint;

.field rectf:Landroid/graphics/RectF;

.field size:I

.field style:I

.field time:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lcom/narvii/lib/R$styleable;->SpinningView:[I

    sget v1, Lcom/narvii/lib/R$style;->SpinningView:I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinStyle:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SpinningView;->style:I

    .line 32
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SpinningView;->size:I

    .line 33
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinColor:I

    const v0, -0x777778

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SpinningView;->color:I

    .line 34
    sget p2, Lcom/narvii/lib/R$styleable;->SpinningView_spinTime:I

    const/16 v0, 0x258

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SpinningView;->time:I

    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    .line 39
    iget-object p1, p0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 49
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 53
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 55
    iget v5, v0, Lcom/narvii/widget/SpinningView;->style:I

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne v5, v6, :cond_4

    .line 78
    iget v5, v0, Lcom/narvii/widget/SpinningView;->size:I

    if-nez v5, :cond_1

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/2addr v5, v6

    goto :goto_0

    .line 81
    :cond_1
    div-int/2addr v5, v6

    :goto_0
    move v8, v5

    .line 84
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    mul-int/lit8 v9, v8, 0xf

    div-int/lit8 v9, v9, 0x64

    int-to-float v9, v9

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    iget-object v5, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/narvii/widget/SpinningView;->color:I

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    div-int/2addr v1, v6

    int-to-float v1, v1

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    mul-int/lit8 v1, v8, 0x55

    .line 92
    div-int/lit8 v1, v1, 0x64

    .line 93
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    neg-int v5, v1

    int-to-float v5, v5

    iput v5, v2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    .line 94
    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 95
    iput v5, v2, Landroid/graphics/RectF;->top:F

    .line 96
    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    long-to-double v9, v3

    const-wide v11, 0x4066800000000000L    # 180.0

    .line 97
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v9, v11

    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v13, v3

    const-wide v15, 0x4076800000000000L    # 360.0

    rem-double/2addr v3, v15

    double-to-float v3, v3

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 98
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v3

    add-double/2addr v13, v11

    rem-double/2addr v13, v15

    double-to-float v3, v13

    const/high16 v4, 0x42700000    # 60.0f

    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    mul-int/lit8 v8, v8, 0x3c

    .line 101
    div-int/lit8 v8, v8, 0x64

    .line 102
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    neg-int v1, v8

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v8

    .line 103
    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 104
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 105
    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    const-wide v3, 0x406a400000000000L    # 210.0

    .line 106
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v3

    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v9, v3

    rem-double/2addr v3, v15

    double-to-float v3, v3

    const/high16 v4, 0x42700000    # 60.0f

    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    iget-object v2, v0, Lcom/narvii/widget/SpinningView;->rectf:Landroid/graphics/RectF;

    iget v1, v0, Lcom/narvii/widget/SpinningView;->time:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v3

    add-double/2addr v9, v11

    rem-double/2addr v9, v15

    double-to-float v3, v9

    const/high16 v4, 0x42700000    # 60.0f

    iget-object v6, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 57
    :cond_2
    :goto_1
    iget v5, v0, Lcom/narvii/widget/SpinningView;->size:I

    if-nez v5, :cond_3

    div-int/lit8 v5, v1, 0x9

    goto :goto_2

    :cond_3
    div-int/lit8 v5, v5, 0x9

    .line 59
    :goto_2
    iget-object v8, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v8, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/narvii/widget/SpinningView;->color:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    div-int/2addr v1, v6

    int-to-float v1, v1

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const-wide/16 v1, 0x0

    long-to-double v3, v3

    .line 64
    iget v6, v0, Lcom/narvii/widget/SpinningView;->time:I

    int-to-double v8, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double v8, v3, v8

    add-double/2addr v8, v1

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    neg-int v8, v5

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    mul-float v8, v8, v9

    int-to-float v5, v5

    mul-float v6, v6, v5

    .line 65
    iget-object v10, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-wide v12, -0x402ccccccccccccdL    # -0.3

    .line 67
    iget v6, v0, Lcom/narvii/widget/SpinningView;->time:I

    int-to-double v14, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double v14, v3, v14

    add-double/2addr v14, v12

    mul-double v14, v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v6, v12

    mul-float v6, v6, v5

    .line 68
    iget-object v8, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v11, v6, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-wide v12, -0x401ccccccccccccdL    # -0.6

    .line 70
    iget v6, v0, Lcom/narvii/widget/SpinningView;->time:I

    int-to-double v14, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v14

    add-double/2addr v3, v12

    mul-double v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v9, v9, v5

    mul-float v5, v5, v1

    .line 71
    iget-object v1, v0, Lcom/narvii/widget/SpinningView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v11, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpinColor(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/narvii/widget/SpinningView;->color:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
