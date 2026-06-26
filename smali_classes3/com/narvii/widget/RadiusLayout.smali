.class public Lcom/narvii/widget/RadiusLayout;
.super Landroid/widget/FrameLayout;
.source "RadiusLayout.java"


# instance fields
.field private hasStroke:Z

.field private lb:I

.field private lt:I

.field private rb:I

.field private rt:I

.field private shownStroke:Z

.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/RadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/RadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->shownStroke:Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    .line 46
    sget-object v1, Lcom/narvii/lib/R$styleable;->RadiusLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 49
    sget p3, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_left_top:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 50
    sget v1, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_right_top:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 51
    sget v2, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_left_bottom:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 52
    sget v3, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_right_bottom:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 54
    sget v3, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_color:I

    const/high16 v4, -0x1000000

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 55
    sget v4, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_width:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 56
    sget v5, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_dash_width:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 57
    sget v6, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_dash_gap_width:I

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 59
    invoke-virtual {p0, p3, v1, v2, p2}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 60
    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/narvii/widget/RadiusLayout;->setStroke(IIII)V

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private clipRound(Landroid/graphics/Canvas;)V
    .locals 14

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 111
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x8

    if-eqz v4, :cond_1

    .line 112
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v4, v3, v3, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v3, v11, [F

    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    int-to-float v12, v11

    aput v12, v3, v2

    int-to-float v2, v11

    aput v2, v3, v1

    iget v1, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    int-to-float v2, v1

    aput v2, v3, v10

    int-to-float v1, v1

    aput v1, v3, v9

    iget v1, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    int-to-float v2, v1

    aput v2, v3, v8

    int-to-float v1, v1

    aput v1, v3, v7

    iget v1, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    int-to-float v2, v1

    aput v2, v3, v6

    int-to-float v1, v1

    aput v1, v3, v5

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 114
    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v4, v3, v3, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v3, v11, [F

    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    int-to-float v12, v11

    aput v12, v3, v2

    int-to-float v2, v11

    aput v2, v3, v1

    iget v1, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    int-to-float v2, v1

    aput v2, v3, v10

    int-to-float v1, v1

    aput v1, v3, v9

    iget v1, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    int-to-float v2, v1

    aput v2, v3, v8

    int-to-float v1, v1

    aput v1, v3, v7

    iget v1, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    int-to-float v2, v1

    aput v2, v3, v6

    int-to-float v1, v1

    aput v1, v3, v5

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v3, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 116
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_2

    .line 118
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :goto_2
    return-void
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 14

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 128
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 129
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v1, v11, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v10, v10, [F

    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    int-to-float v12, v11

    aput v12, v10, v3

    int-to-float v3, v11

    aput v3, v10, v2

    iget v2, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    int-to-float v3, v2

    aput v3, v10, v9

    int-to-float v2, v2

    aput v2, v10, v8

    iget v2, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    int-to-float v3, v2

    aput v3, v10, v7

    int-to-float v2, v2

    aput v2, v10, v6

    iget v2, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    int-to-float v3, v2

    aput v3, v10, v5

    int-to-float v2, v2

    aput v2, v10, v4

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 132
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v1, v11, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v10, v10, [F

    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    int-to-float v12, v11

    aput v12, v10, v3

    int-to-float v3, v11

    aput v3, v10, v2

    iget v2, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    int-to-float v3, v2

    aput v3, v10, v9

    int-to-float v2, v2

    aput v2, v10, v8

    iget v2, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    int-to-float v3, v2

    aput v3, v10, v7

    int-to-float v2, v2

    aput v2, v10, v6

    iget v2, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    int-to-float v3, v2

    aput v3, v10, v5

    int-to-float v2, v2

    aput v2, v10, v4

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 134
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/widget/RadiusLayout;->clipRound(Landroid/graphics/Canvas;)V

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->shownStroke:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/narvii/widget/RadiusLayout;->drawStroke(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/narvii/widget/RadiusLayout;->clipRound(Landroid/graphics/Canvas;)V

    .line 104
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadius(IIII)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    .line 66
    iput p2, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    .line 67
    iput p3, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    .line 68
    iput p4, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    return-void
.end method

.method public setStroke(IIII)V
    .locals 5

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 77
    iget-object v2, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    int-to-float p3, p3

    aput p3, v4, v0

    int-to-float p3, p4

    aput p3, v4, v1

    const/4 p3, 0x0

    invoke-direct {v3, v4, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 79
    :cond_0
    iget-object p3, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    int-to-float p4, p2

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p3, -0x1000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    :goto_1
    return-void
.end method

.method public setStrokeVisible(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/narvii/widget/RadiusLayout;->shownStroke:Z

    return-void
.end method
