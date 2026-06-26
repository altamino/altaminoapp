.class public Lcom/narvii/widget/NVListOverlay;
.super Landroid/widget/RelativeLayout;
.source "NVListOverlay.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/narvii/widget/NVListView$OnOverscrollListener;
.implements Lcom/narvii/widget/NVListView$OnLayoutListener;
.implements Lcom/narvii/widget/NVListView$ListPaddingProvider;


# instance fields
.field attached:Z

.field heightMax:I

.field heightMin:I

.field private overscroll:I

.field private scroll:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget-object v0, Lcom/narvii/lib/R$styleable;->NVListOverlay:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 27
    sget p2, Lcom/narvii/lib/R$styleable;->NVListOverlay_listOverlayMinHeight:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 28
    iget p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    if-gez p2, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/narvii/widget/NVListOverlay;->getActionBarHeight()I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 31
    :cond_0
    sget p2, Lcom/narvii/lib/R$styleable;->NVListOverlay_listOverlayMaxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 32
    iget p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    iget p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    return-void
.end method

.method private getActionBarHeight()I
    .locals 2

    .line 50
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/narvii/widget/NVListOverlay;->getCurrentHeight()I

    move-result v0

    .line 131
    iget-boolean v1, p0, Lcom/narvii/widget/NVListOverlay;->attached:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    int-to-float v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    if-le v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentHeight()I
    .locals 3

    .line 120
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    iget v1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getPadding(Lcom/narvii/widget/NVListView;)I
    .locals 0

    .line 125
    iget p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    return p1
.end method

.method public getProgress()F
    .locals 4

    .line 114
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    iget v1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 115
    iget v1, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2
.end method

.method public onLayout(Lcom/narvii/widget/NVListView;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/widget/NVListOverlay;->onScroll(Landroid/widget/AbsListView;III)V

    .line 102
    new-instance p1, Lcom/narvii/widget/NVListOverlay$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/NVListOverlay$1;-><init>(Lcom/narvii/widget/NVListOverlay;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/narvii/widget/NVListOverlay;->getCurrentHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 74
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onOverscroll(Lcom/narvii/widget/NVListView;I)V
    .locals 0

    .line 80
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVListOverlay;->setOverscroll(I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 89
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 90
    invoke-virtual {p0, p4}, Lcom/narvii/widget/NVListOverlay;->setScroll(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 91
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 92
    iget p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVListOverlay;->setScroll(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x2710

    .line 94
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListOverlay;->setScroll(I)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 43
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    if-eq v0, p1, :cond_0

    .line 44
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 45
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 36
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    if-eq v0, p1, :cond_0

    .line 37
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 38
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOverscroll(I)V
    .locals 1

    .line 58
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    if-eq v0, p1, :cond_0

    .line 59
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    .line 60
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setScroll(I)V
    .locals 1

    .line 65
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    if-eq v0, p1, :cond_0

    .line 66
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    .line 67
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method
