.class public Lcom/narvii/widget/ScrollViewWithMaxHeight2;
.super Lcom/narvii/widget/ScrollViewWithMaxHeight;
.source "ScrollViewWithMaxHeight2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/widget/ScrollViewWithMaxHeight;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ScrollViewWithMaxHeight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 23
    iget v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    if-lez v0, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    if-gt v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    iget p2, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 26
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ScrollViewWithMaxHeight;->onMeasure(II)V

    return-void
.end method
