.class public Lcom/narvii/chat/video/view/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field color:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    const p2, 0x7f060076

    .line 27
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/view/CircleView;->color:I

    .line 28
    invoke-direct {p0}, Lcom/narvii/chat/video/view/CircleView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/chat/video/view/CircleView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 58
    div-int/lit8 v0, v0, 0x2

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    .line 60
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 32
    iput p1, p0, Lcom/narvii/chat/video/view/CircleView;->color:I

    .line 33
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
