.class public Lcom/narvii/widget/ShapeTaiji;
.super Landroid/view/View;
.source "ShapeTaiji.java"


# instance fields
.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field pathHash:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    .line 22
    iget-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    iget-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    iget-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060061

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 30
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v2, v1

    .line 35
    iget v3, p0, Lcom/narvii/widget/ShapeTaiji;->pathHash:I

    if-eq v2, v3, :cond_0

    .line 36
    iget-object v2, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    int-to-float v5, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 37
    iget-object v3, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    int-to-float v8, v0

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float v4, v8, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v6, v8, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 38
    iget-object v0, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget-object v0, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ShapeTaiji;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/widget/ShapeTaiji;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
