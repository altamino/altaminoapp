.class public Lcom/narvii/widget/RadiusLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/RadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/RadiusLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->shownStroke:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    .line 4
    sget-object v1, Lcom/narvii/lib/R$styleable;->RadiusLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 6
    sget p3, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_left_top:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 7
    sget v1, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_right_top:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 8
    sget v2, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_left_bottom:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 9
    sget v3, Lcom/narvii/lib/R$styleable;->RadiusLayout_layout_corner_radius_right_bottom:I

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 10
    sget v3, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_color:I

    const/high16 v4, -0x1000000

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 11
    sget v4, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_width:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 12
    sget v5, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_dash_width:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 13
    sget v6, Lcom/narvii/lib/R$styleable;->RadiusLayout_radius_stroke_dash_gap_width:I

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 14
    invoke-virtual {p0, p3, v1, v2, p2}, Lcom/narvii/widget/RadiusLayout;->setRadius(IIII)V

    .line 15
    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/narvii/widget/RadiusLayout;->setStroke(IIII)V

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private clipRound(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x7

    .line 11
    const/4 v3, 0x6

    .line 12
    const/4 v4, 0x5

    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x3

    .line 15
    const/4 v7, 0x2

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x0

    .line 18
    .line 19
    const/16 v10, 0x8

    .line 20
    const/4 v11, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/RectF;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v12

    .line 29
    int-to-float v12, v12

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    move-result v13

    .line 34
    int-to-float v13, v13

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v11, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 38
    .line 39
    new-array v10, v10, [F

    .line 40
    .line 41
    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    .line 42
    int-to-float v12, v11

    .line 43
    .line 44
    aput v12, v10, v9

    .line 45
    int-to-float v9, v11

    .line 46
    .line 47
    aput v9, v10, v8

    .line 48
    .line 49
    iget v8, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    .line 50
    int-to-float v9, v8

    .line 51
    .line 52
    aput v9, v10, v7

    .line 53
    int-to-float v7, v8

    .line 54
    .line 55
    aput v7, v10, v6

    .line 56
    .line 57
    iget v6, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    .line 58
    int-to-float v7, v6

    .line 59
    .line 60
    aput v7, v10, v5

    .line 61
    int-to-float v5, v6

    .line 62
    .line 63
    aput v5, v10, v4

    .line 64
    .line 65
    iget v4, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    .line 66
    int-to-float v5, v4

    .line 67
    .line 68
    aput v5, v10, v3

    .line 69
    int-to-float v3, v4

    .line 70
    .line 71
    aput v3, v10, v2

    .line 72
    .line 73
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 83
    move-result v12

    .line 84
    int-to-float v12, v12

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 88
    move-result v13

    .line 89
    int-to-float v13, v13

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v11, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 93
    .line 94
    new-array v10, v10, [F

    .line 95
    .line 96
    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    .line 97
    int-to-float v12, v11

    .line 98
    .line 99
    aput v12, v10, v9

    .line 100
    int-to-float v9, v11

    .line 101
    .line 102
    aput v9, v10, v8

    .line 103
    .line 104
    iget v8, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    .line 105
    int-to-float v9, v8

    .line 106
    .line 107
    aput v9, v10, v7

    .line 108
    int-to-float v7, v8

    .line 109
    .line 110
    aput v7, v10, v6

    .line 111
    .line 112
    iget v6, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    .line 113
    int-to-float v7, v6

    .line 114
    .line 115
    aput v7, v10, v5

    .line 116
    int-to-float v5, v6

    .line 117
    .line 118
    aput v5, v10, v4

    .line 119
    .line 120
    iget v4, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    .line 121
    int-to-float v5, v4

    .line 122
    .line 123
    aput v5, v10, v3

    .line 124
    int-to-float v3, v4

    .line 125
    .line 126
    aput v3, v10, v2

    .line 127
    .line 128
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 135
    return-void
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x7

    .line 16
    const/4 v3, 0x6

    .line 17
    const/4 v4, 0x5

    .line 18
    const/4 v5, 0x4

    .line 19
    const/4 v6, 0x3

    .line 20
    const/4 v7, 0x2

    .line 21
    const/4 v8, 0x1

    .line 22
    const/4 v9, 0x0

    .line 23
    .line 24
    const/16 v10, 0x8

    .line 25
    const/4 v11, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Landroid/graphics/RectF;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v12

    .line 34
    int-to-float v12, v12

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 38
    move-result v13

    .line 39
    int-to-float v13, v13

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v11, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 43
    .line 44
    new-array v10, v10, [F

    .line 45
    .line 46
    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    .line 47
    int-to-float v12, v11

    .line 48
    .line 49
    aput v12, v10, v9

    .line 50
    int-to-float v9, v11

    .line 51
    .line 52
    aput v9, v10, v8

    .line 53
    .line 54
    iget v8, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    .line 55
    int-to-float v9, v8

    .line 56
    .line 57
    aput v9, v10, v7

    .line 58
    int-to-float v7, v8

    .line 59
    .line 60
    aput v7, v10, v6

    .line 61
    .line 62
    iget v6, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    .line 63
    int-to-float v7, v6

    .line 64
    .line 65
    aput v7, v10, v5

    .line 66
    int-to-float v5, v6

    .line 67
    .line 68
    aput v5, v10, v4

    .line 69
    .line 70
    iget v4, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    .line 71
    int-to-float v5, v4

    .line 72
    .line 73
    aput v5, v10, v3

    .line 74
    int-to-float v3, v4

    .line 75
    .line 76
    aput v3, v10, v2

    .line 77
    .line 78
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 88
    move-result v12

    .line 89
    int-to-float v12, v12

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 93
    move-result v13

    .line 94
    int-to-float v13, v13

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v11, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 98
    .line 99
    new-array v10, v10, [F

    .line 100
    .line 101
    iget v11, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    .line 102
    int-to-float v12, v11

    .line 103
    .line 104
    aput v12, v10, v9

    .line 105
    int-to-float v9, v11

    .line 106
    .line 107
    aput v9, v10, v8

    .line 108
    .line 109
    iget v8, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    .line 110
    int-to-float v9, v8

    .line 111
    .line 112
    aput v9, v10, v7

    .line 113
    int-to-float v7, v8

    .line 114
    .line 115
    aput v7, v10, v6

    .line 116
    .line 117
    iget v6, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    .line 118
    int-to-float v7, v6

    .line 119
    .line 120
    aput v7, v10, v5

    .line 121
    int-to-float v5, v6

    .line 122
    .line 123
    aput v5, v10, v4

    .line 124
    .line 125
    iget v4, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    .line 126
    int-to-float v5, v4

    .line 127
    .line 128
    aput v5, v10, v3

    .line 129
    int-to-float v3, v4

    .line 130
    .line 131
    aput v3, v10, v2

    .line 132
    .line 133
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 137
    .line 138
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/RadiusLayout;->clipRound(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->shownStroke:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/widget/RadiusLayout;->drawStroke(Landroid/graphics/Canvas;)V

    .line 18
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/widget/RadiusLayout;->clipRound(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method public setRadius(IIII)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/RadiusLayout;->lt:I

    iput p2, p0, Lcom/narvii/widget/RadiusLayout;->rt:I

    iput p3, p0, Lcom/narvii/widget/RadiusLayout;->lb:I

    iput p4, p0, Lcom/narvii/widget/RadiusLayout;->rb:I

    return-void
.end method

.method public setStroke(IIII)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    new-instance v3, Landroid/graphics/DashPathEffect;

    .line 33
    const/4 v4, 0x2

    .line 34
    .line 35
    new-array v4, v4, [F

    .line 36
    int-to-float p3, p3

    .line 37
    .line 38
    aput p3, v4, v0

    .line 39
    int-to-float p3, p4

    .line 40
    .line 41
    aput p3, v4, v1

    .line 42
    const/4 p3, 0x0

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 49
    .line 50
    :cond_0
    iget-object p3, p0, Lcom/narvii/widget/RadiusLayout;->strokePaint:Landroid/graphics/Paint;

    .line 51
    int-to-float p4, p2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    .line 56
    const/high16 p3, -0x1000000

    .line 57
    and-int/2addr p1, p3

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    if-nez p2, :cond_1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/widget/RadiusLayout;->hasStroke:Z

    .line 68
    :goto_1
    return-void
.end method

.method public setStrokeVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/RadiusLayout;->shownStroke:Z

    return-void
.end method
