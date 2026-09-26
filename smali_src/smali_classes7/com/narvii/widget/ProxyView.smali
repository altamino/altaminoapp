.class public Lcom/narvii/widget/ProxyView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field height:I

.field private host:Lcom/narvii/widget/ProxyViewHost;

.field measureH:I

.field measureW:I

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 12
    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onEvent(ILjava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    .line 3
    iput p4, p0, Lcom/narvii/widget/ProxyView;->width:I

    .line 4
    sub-int/2addr p5, p3

    .line 5
    .line 6
    iput p5, p0, Lcom/narvii/widget/ProxyView;->height:I

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4, p5}, Lcom/narvii/widget/ProxyViewHost;->setSize(II)V

    .line 14
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ProxyView;->measureW:I

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/ProxyView;->measureH:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->setMeasure(II)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    move-result p1

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 31
    :goto_0
    return-void
.end method

.method public sendEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->onEvent(ILjava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public setHost(Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    return-void
.end method
