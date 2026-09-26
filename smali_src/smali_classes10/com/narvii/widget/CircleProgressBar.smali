.class public Lcom/narvii/widget/CircleProgressBar;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 5
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/narvii/widget/CircleProgressBar;->gradientMatrix:Landroid/graphics/Matrix;

    .line 6
    sget-object p3, Lcom/narvii/lib/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_roundBackgroundColor:I

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->roundBackgroundColor:I

    .line 8
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_roundProgressColor:I

    const/high16 p3, -0x10000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->roundProgressColor:I

    .line 9
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_roundWidth:I

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->roundWidth:F

    .line 10
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_progressStyle:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->progressStyle:I

    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->max:I

    .line 12
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_progress:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->progress:I

    .line 13
    sget p2, Lcom/narvii/lib/R$styleable;->CircleProgressBar_startAngle:I

    const/16 p3, -0x5a

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/CircleProgressBar;->startAngle:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v0

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v1

    .line 14
    .line 15
    div-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    move-result v2

    .line 20
    int-to-float v2, v2

    .line 21
    .line 22
    iget v3, p0, Lcom/narvii/widget/CircleProgressBar;->roundWidth:F

    .line 23
    .line 24
    const/high16 v4, 0x40000000    # 2.0f

    .line 25
    div-float/2addr v3, v4

    .line 26
    sub-float/2addr v2, v3

    .line 27
    float-to-int v2, v2

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 36
    const/4 v4, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/widget/CircleProgressBar;->progressStyle:I

    .line 42
    .line 43
    if-eq v3, v4, :cond_0

    .line 44
    .line 45
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 46
    .line 47
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 53
    .line 54
    iget v5, p0, Lcom/narvii/widget/CircleProgressBar;->roundWidth:F

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 61
    .line 62
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    .line 67
    :goto_0
    iget-object v3, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 68
    .line 69
    iget v5, p0, Lcom/narvii/widget/CircleProgressBar;->roundBackgroundColor:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    int-to-float v3, v0

    .line 74
    int-to-float v5, v1

    .line 75
    int-to-float v6, v2

    .line 76
    .line 77
    iget-object v7, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    iget-object v6, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 83
    .line 84
    iget v7, p0, Lcom/narvii/widget/CircleProgressBar;->roundProgressColor:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    .line 89
    new-instance v9, Landroid/graphics/RectF;

    .line 90
    .line 91
    sub-int v6, v0, v2

    .line 92
    int-to-float v6, v6

    .line 93
    .line 94
    sub-int v7, v1, v2

    .line 95
    int-to-float v7, v7

    .line 96
    add-int/2addr v0, v2

    .line 97
    int-to-float v0, v0

    .line 98
    add-int/2addr v1, v2

    .line 99
    int-to-float v1, v1

    .line 100
    .line 101
    .line 102
    invoke-direct {v9, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 103
    .line 104
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->gradientFromColor:I

    .line 105
    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->gradientMatrix:Landroid/graphics/Matrix;

    .line 113
    .line 114
    iget v1, p0, Lcom/narvii/widget/CircleProgressBar;->startAngle:I

    .line 115
    int-to-float v1, v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    .line 121
    .line 122
    iget-object v1, p0, Lcom/narvii/widget/CircleProgressBar;->gradientMatrix:Landroid/graphics/Matrix;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    .line 134
    :cond_1
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->progress:I

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    iget v1, p0, Lcom/narvii/widget/CircleProgressBar;->startAngle:I

    .line 139
    int-to-float v10, v1

    .line 140
    .line 141
    iget-boolean v1, p0, Lcom/narvii/widget/CircleProgressBar;->reverseSwipe:Z

    .line 142
    .line 143
    if-eqz v1, :cond_2

    .line 144
    const/4 v1, -0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    move v1, v4

    .line 147
    .line 148
    :goto_1
    mul-int/lit16 v1, v1, 0x168

    .line 149
    mul-int/2addr v1, v0

    .line 150
    .line 151
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->max:I

    .line 152
    div-int/2addr v1, v0

    .line 153
    int-to-float v11, v1

    .line 154
    .line 155
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->progressStyle:I

    .line 156
    .line 157
    if-ne v0, v4, :cond_3

    .line 158
    :goto_2
    move v12, v4

    .line 159
    goto :goto_3

    .line 160
    :cond_3
    const/4 v4, 0x0

    .line 161
    goto :goto_2

    .line 162
    .line 163
    :goto_3
    iget-object v13, p0, Lcom/narvii/widget/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 164
    move-object v8, p1

    .line 165
    .line 166
    .line 167
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/widget/CircleProgressBar;->gradient:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/graphics/SweepGradient;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result p2

    .line 14
    .line 15
    div-int/lit8 p2, p2, 0x2

    .line 16
    int-to-float p2, p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p3

    .line 21
    .line 22
    div-int/lit8 p3, p3, 0x2

    .line 23
    int-to-float p3, p3

    .line 24
    .line 25
    iget p4, p0, Lcom/narvii/widget/CircleProgressBar;->gradientFromColor:I

    .line 26
    .line 27
    iget v0, p0, Lcom/narvii/widget/CircleProgressBar;->gradientEndColor:I

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/widget/CircleProgressBar;->mSweepGradient:Landroid/graphics/SweepGradient;

    .line 33
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/CircleProgressBar;->max:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/CircleProgressBar;->progress:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method

.method public setSwipeGradientColor(ZZII)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/CircleProgressBar;->reverseSwipe:Z

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/widget/CircleProgressBar;->gradient:Z

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/widget/CircleProgressBar;->gradientFromColor:I

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/widget/CircleProgressBar;->gradientEndColor:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    return-void
.end method
