.class public Lcom/narvii/widget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# static fields
.field private static final STYLE_FILL:I = 0x1

.field private static final STYLE_STROKE:I


# instance fields
.field gradient:Z

.field gradientEndColor:I

.field gradientFromColor:I

.field gradientMatrix:Landroid/graphics/Matrix;

.field mSweepGradient:Landroid/graphics/SweepGradient;

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private final progressStyle:I

.field reverseSwipe:Z

.field private final roundBackgroundColor:I

.field private final roundProgressColor:I

.field private roundWidth:F

.field private final startAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 35
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/narvii/widget/CircleProgressBar;->gradientMatrix:Landroid/graphics/Matrix;

    .line 52
    sget-object p3, Lcom/narvii/lib/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_roundBackgroundColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->roundBackgroundColor:I

    .line 54
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_roundProgressColor:I

    const/high16 p3, -0x10000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->roundProgressColor:I

    .line 56
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_roundWidth:I

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->roundWidth:F

    .line 58
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_progressStyle:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->progressStyle:I

    .line 59
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->max:I

    .line 60
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_progress:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->progress:I

    .line 61
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_startAngle:I

    const/16 p3, -0x5a

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->startAngle:I

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/widget/CircleProgressBar;->roundWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 75
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 76
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget v3, p0, Lcom/narvii/widget/CircleProgressBar;->progressStyle:I

    if-eq v3, v4, :cond_0

    .line 78
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/narvii/widget/CircleProgressBar;->roundWidth:F

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/narvii/widget/CircleProgressBar;->roundBackgroundColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v0

    int-to-float v5, v1

    int-to-float v6, v2

    .line 85
    iget-object v7, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 87
    iget-object v6, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/narvii/widget/CircleProgressBar;->roundProgressColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance v9, Landroid/graphics/RectF;

    sub-int v6, v0, v2

    int-to-float v6, v6

    sub-int v7, v1, v2

    int-to-float v7, v7

    add-int/2addr v0, v2

    int-to-float v0, v0

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v9, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 90
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->gradientFromColor:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->gradientMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/narvii/widget/CircleProgressBar;->startAngle:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/narvii/widget/CircleProgressBar;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    :cond_1
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->progress:I

    if-eqz v0, :cond_4

    .line 97
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->startAngle:I

    int-to-float v10, v0

    iget-boolean v0, p0, Lcom/narvii/widget/CircleProgressBar;->reverseSwipe:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    mul-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/narvii/widget/CircleProgressBar;->progress:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/narvii/widget/CircleProgressBar;->max:I

    div-int/2addr v0, v1

    int-to-float v11, v0

    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->progressStyle:I

    if-ne v0, v4, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_2
    iget-object v13, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 112
    iget-boolean p1, p0, Lcom/narvii/widget/CircleProgressBar;->gradient:Z

    if-eqz p1, :cond_0

    .line 113
    new-instance p1, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p4, p0, Lcom/narvii/widget/CircleProgressBar;->gradientFromColor:I

    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->gradientEndColor:I

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    iput-object p1, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/narvii/widget/CircleProgressBar;->max:I

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/narvii/widget/CircleProgressBar;->progress:I

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSwipeGradientColor(ZZII)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/narvii/widget/CircleProgressBar;->reverseSwipe:Z

    .line 103
    iput-boolean p2, p0, Lcom/narvii/widget/CircleProgressBar;->gradient:Z

    .line 104
    iput p3, p0, Lcom/narvii/widget/CircleProgressBar;->gradientFromColor:I

    .line 105
    iput p4, p0, Lcom/narvii/widget/CircleProgressBar;->gradientEndColor:I

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
