.class public Lcom/narvii/widget/ShapeTaiji;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field pathHash:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    .line 17
    .line 18
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    const v0, 0x7f060081

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 34
    move-result p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    new-instance p1, Landroid/graphics/Path;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

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
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v1, v2

    .line 32
    .line 33
    shl-int/lit8 v2, v0, 0x10

    .line 34
    or-int/2addr v2, v1

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/widget/ShapeTaiji;->pathHash:I

    .line 37
    .line 38
    if-eq v2, v3, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    .line 41
    int-to-float v5, v1

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 46
    .line 47
    iget-object v3, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    .line 48
    int-to-float v8, v0

    .line 49
    .line 50
    const/high16 v0, 0x3f400000    # 0.75f

    .line 51
    .line 52
    mul-float v4, v8, v0

    .line 53
    .line 54
    const/high16 v0, 0x3e800000    # 0.25f

    .line 55
    .line 56
    mul-float v6, v8, v0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 79
    return-void
.end method
