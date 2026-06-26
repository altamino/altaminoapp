.class public Lcom/narvii/chat/video/view/RippleChildView;
.super Landroid/view/View;
.source "RippleChildView.java"


# static fields
.field private static final DISABLE_COLOR:I = -0x6d6b69


# instance fields
.field private final ENABLE_COLOR:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/RippleChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    const p2, 0x7f060076

    .line 29
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/view/RippleChildView;->ENABLE_COLOR:I

    .line 31
    invoke-direct {p0}, Lcom/narvii/chat/video/view/RippleChildView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/chat/video/view/RippleChildView;->ENABLE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 59
    div-int/lit8 v2, v0, 0x2

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v2, v2

    int-to-float v6, v3

    .line 62
    iget-object v3, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    int-to-float v7, v0

    int-to-float v8, v1

    .line 64
    iget-object v9, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/chat/video/view/RippleChildView;->ENABLE_COLOR:I

    goto :goto_0

    :cond_0
    const p1, -0x6d6b69

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
