.class public Lcom/narvii/widget/ScrollViewWithMaxHeight2;
.super Lcom/narvii/widget/ScrollViewWithMaxHeight;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/ScrollViewWithMaxHeight;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ScrollViewWithMaxHeight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 3
    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 11
    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget p2, p0, Lcom/narvii/widget/ScrollViewWithMaxHeight;->maxHeight:I

    .line 21
    .line 22
    const/high16 v0, -0x80000000

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result p2

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/ScrollViewWithMaxHeight;->onMeasure(II)V

    .line 30
    return-void
.end method
