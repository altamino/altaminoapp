.class public Lcom/narvii/chat/video/view/CircleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field color:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    const p2, 0x7f060096

    .line 4
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/view/CircleView;->color:I

    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/video/view/CircleView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/chat/video/view/CircleView;->color:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

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
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v1

    .line 12
    .line 13
    div-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    int-to-float v0, v0

    .line 18
    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    int-to-float v1, v1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 4
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/video/view/CircleView;->color:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/view/CircleView;->paint:Landroid/graphics/Paint;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method
