.class public Lcom/narvii/chat/video/view/RippleChildView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final DISABLE_COLOR:I = -0x6d6b69


# instance fields
.field private final ENABLE_COLOR:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/view/RippleChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-object p2, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    const p2, 0x7f060096

    .line 4
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/view/RippleChildView;->ENABLE_COLOR:I

    .line 5
    invoke-direct {p0}, Lcom/narvii/chat/video/view/RippleChildView;->initPaint()V

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
    iput-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/chat/video/view/RippleChildView;->ENABLE_COLOR:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
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
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    move-result v1

    .line 12
    .line 13
    div-int/lit8 v2, v0, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    .line 18
    div-int/lit8 v3, v2, 0x2

    .line 19
    .line 20
    sub-int v3, v1, v3

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v4, v4, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 25
    int-to-float v2, v2

    .line 26
    int-to-float v6, v3

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2, v6, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 35
    const/4 v5, 0x0

    .line 36
    int-to-float v7, v0

    .line 37
    int-to-float v8, v1

    .line 38
    .line 39
    iget-object v9, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    .line 40
    move-object v4, p1

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 44
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

.method public setEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/view/RippleChildView;->paint:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/narvii/chat/video/view/RippleChildView;->ENABLE_COLOR:I

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    const p1, -0x6d6b69

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 20
    return-void
.end method
