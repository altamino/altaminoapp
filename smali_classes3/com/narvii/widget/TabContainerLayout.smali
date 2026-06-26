.class public Lcom/narvii/widget/TabContainerLayout;
.super Landroid/widget/LinearLayout;
.source "TabContainerLayout.java"


# instance fields
.field private mode:I

.field private scrollDivideEqual:Z

.field private segmentControl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/TabContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput p2, p0, Lcom/narvii/widget/TabContainerLayout;->mode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->scrollDivideEqual:Z

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->segmentControl:Z

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    .line 63
    iget v0, p0, Lcom/narvii/widget/TabContainerLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 68
    iget-boolean v0, p0, Lcom/narvii/widget/TabContainerLayout;->scrollDivideEqual:Z

    if-nez v0, :cond_1

    .line 69
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_1
    sub-int v0, p4, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    if-gt v4, v0, :cond_3

    .line 78
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    div-int v6, v0, v6

    if-le v5, v6, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_6

    .line 84
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    div-int/2addr v0, p1

    .line 86
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 87
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 91
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int p2, v0, p2

    div-int/lit8 p2, p2, 0x2

    mul-int p3, v0, v2

    add-int/2addr p3, p2

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p3

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p5, v1

    .line 92
    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    :cond_6
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 43
    iget p1, p0, Lcom/narvii/widget/TabContainerLayout;->mode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->segmentControl:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    mul-int p2, p2, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 55
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 57
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_2
    return-void
.end method

.method public setScrollDivideEqual(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->scrollDivideEqual:Z

    return-void
.end method

.method public setSegmentControl(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/narvii/widget/TabContainerLayout;->segmentControl:Z

    return-void
.end method
