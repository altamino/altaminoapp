.class public Lcom/narvii/widget/ProxyView;
.super Landroid/view/View;
.source "ProxyView.java"


# instance fields
.field height:I

.field private host:Lcom/narvii/widget/ProxyViewHost;

.field measureH:I

.field measureW:I

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 59
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p0}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p0}, Lcom/narvii/widget/ProxyViewHost;->updateAttach(Lcom/narvii/widget/ProxyView;)V

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

    sub-int/2addr p4, p2

    .line 49
    iput p4, p0, Lcom/narvii/widget/ProxyView;->width:I

    sub-int/2addr p5, p3

    .line 50
    iput p5, p0, Lcom/narvii/widget/ProxyView;->height:I

    .line 51
    iget-object p1, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz p1, :cond_0

    .line 52
    iget p2, p0, Lcom/narvii/widget/ProxyView;->width:I

    iget p3, p0, Lcom/narvii/widget/ProxyView;->height:I

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ProxyViewHost;->setSize(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 34
    iput p1, p0, Lcom/narvii/widget/ProxyView;->measureW:I

    .line 35
    iput p2, p0, Lcom/narvii/widget/ProxyView;->measureH:I

    .line 36
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->setMeasure(II)V

    .line 38
    iget-object p1, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 39
    iget-object p2, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public sendEvent(ILjava/lang/Object;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/ProxyViewHost;->onEvent(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setHost(Lcom/narvii/widget/ProxyViewHost;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/widget/ProxyView;->host:Lcom/narvii/widget/ProxyViewHost;

    return-void
.end method
