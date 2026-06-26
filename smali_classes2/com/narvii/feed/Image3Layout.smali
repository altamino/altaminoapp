.class public Lcom/narvii/feed/Image3Layout;
.super Landroid/view/ViewGroup;
.source "Image3Layout.java"


# instance fields
.field image1:Landroid/view/View;

.field image2:Landroid/view/View;

.field image3:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f09043f

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    const v0, 0x7f090440

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    const v0, 0x7f090441

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int p1, p5, p3

    if-lez p1, :cond_2

    .line 60
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 66
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 67
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    mul-int/lit16 v0, p1, 0x111

    div-int/lit16 v0, v0, 0x21c

    mul-int/lit16 p4, p4, 0x1dd

    div-int/lit16 p4, p4, 0x2ee

    add-int/2addr p4, v0

    invoke-virtual {p2, v0, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 68
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    mul-int/lit16 p1, p1, 0x10b

    div-int/lit16 p1, p1, 0x21c

    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/view/View;->layout(IIII)V

    .line 69
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    invoke-virtual {p2, p3, v0, p1, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    mul-int/lit16 p5, p4, 0x1dd

    div-int/lit16 p5, p5, 0x2ee

    invoke-virtual {p2, p3, p3, p5, p1}, Landroid/view/View;->layout(IIII)V

    .line 72
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    mul-int/lit16 p5, p4, 0x1e3

    div-int/lit16 p5, p5, 0x2ee

    mul-int/lit16 v0, p1, 0x10b

    div-int/lit16 v0, v0, 0x21c

    invoke-virtual {p2, p5, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 73
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    mul-int/lit16 p3, p1, 0x111

    div-int/lit16 p3, p3, 0x21c

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    invoke-virtual {p2, p3, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    mul-int/lit8 p2, p1, 0x36

    .line 34
    div-int/lit8 p2, p2, 0x4b

    .line 36
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 38
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    mul-int/lit16 v2, p1, 0x1dd

    div-int/lit16 v2, v2, 0x2ee

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 40
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 41
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    mul-int/lit16 p1, p1, 0x10b

    div-int/lit16 p1, p1, 0x2ee

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    mul-int/lit16 p2, p2, 0x10b

    div-int/lit16 p2, p2, 0x21c

    .line 42
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 43
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 44
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 47
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method
