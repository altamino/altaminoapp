.class public Lcom/narvii/widget/CardLayout;
.super Landroid/view/ViewGroup;
.source "CardLayout.java"


# static fields
.field static final MH:F = 1.0f

.field static final MW:F = 0.8f


# instance fields
.field card1:Landroid/view/View;

.field card2:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 47
    iget-object p1, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    mul-int/lit8 p2, p1, 0x2

    sub-int/2addr p4, p2

    .line 49
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v0

    float-to-int p2, p2

    add-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    .line 50
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 51
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    add-int v2, p4, p1

    sub-int v3, p5, p2

    invoke-virtual {v1, p4, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    add-int v2, p4, p1

    invoke-virtual {v1, p4, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    sub-int v0, p1, v0

    add-int/2addr p4, v0

    .line 57
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object p3, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    add-int/2addr p1, p4

    invoke-virtual {p3, p4, p2, p1, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    add-int/2addr p1, p4

    sub-int/2addr p5, p2

    invoke-virtual {v0, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    sub-int/2addr p4, p1

    .line 63
    div-int/lit8 p4, p4, 0x2

    .line 64
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    add-int/2addr p1, p4

    invoke-virtual {p2, p4, p3, p1, p5}, Landroid/view/View;->layout(IIII)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 32
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card1:Landroid/view/View;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 34
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 33
    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 35
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 37
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 36
    invoke-virtual {v1, p2, v2}, Landroid/view/View;->measure(II)V

    .line 38
    iget-object p2, p0, Lcom/narvii/widget/CardLayout;->card2:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method
