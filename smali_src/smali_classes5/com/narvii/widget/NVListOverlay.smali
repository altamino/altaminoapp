.class public Lcom/narvii/widget/NVListOverlay;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->NVListOverlay:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->NVListOverlay_listOverlayMinHeight:I

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 16
    move-result p2

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 19
    .line 20
    if-gez p2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/widget/NVListOverlay;->getActionBarHeight()I

    .line 24
    move-result p2

    .line 25
    .line 26
    iput p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 27
    .line 28
    :cond_0
    sget p2, Lcom/narvii/lib/R$styleable;->NVListOverlay_listOverlayMaxHeight:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 32
    move-result p1

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 35
    .line 36
    iget p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result p1

    .line 41
    .line 42
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 43
    return-void
.end method

.method private getActionBarHeight()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/NVListOverlay;->getCurrentHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/widget/NVListOverlay;->attached:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 12
    move-result v1

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 15
    int-to-float v3, v2

    .line 16
    .line 17
    cmpl-float v1, v1, v3

    .line 18
    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    if-le v0, v2, :cond_0

    .line 22
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method dispatchTouchEventRelay(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getCurrentHeight()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    .line 10
    sub-int/2addr v1, v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getPadding(Lcom/narvii/widget/NVListView;)I
    .locals 0

    iget p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    return p1
.end method

.method public getProgress()F
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    .line 10
    sub-int/2addr v1, v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-float v0, v0

    .line 19
    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    mul-float/2addr v0, v2

    .line 22
    .line 23
    iget v3, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 24
    sub-int/2addr v3, v1

    .line 25
    int-to-float v1, v3

    .line 26
    div-float/2addr v0, v1

    .line 27
    sub-float/2addr v2, v0

    .line 28
    return v2
.end method

.method public onLayout(Lcom/narvii/widget/NVListView;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/widget/NVListOverlay;->onScroll(Landroid/widget/AbsListView;III)V

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/widget/NVListOverlay$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/widget/NVListOverlay$1;-><init>(Lcom/narvii/widget/NVListOverlay;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/NVListOverlay;->getCurrentHeight()I

    .line 4
    move-result p2

    .line 5
    .line 6
    const/high16 v0, 0x40000000    # 2.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 10
    move-result p2

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 14
    return-void
.end method

.method public onOverscroll(Lcom/narvii/widget/NVListView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVListOverlay;->setOverscroll(I)V

    .line 4
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p3

    .line 5
    const/4 p4, 0x0

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p4}, Lcom/narvii/widget/NVListOverlay;->setScroll(I)V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    move-result p2

    .line 18
    .line 19
    if-lez p2, :cond_1

    .line 20
    .line 21
    iget p2, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 29
    move-result p1

    .line 30
    sub-int/2addr p2, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lcom/narvii/widget/NVListOverlay;->setScroll(I)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const/16 p1, 0x2710

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListOverlay;->setScroll(I)V

    .line 40
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMax:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->heightMin:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public setOverscroll(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->overscroll:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public setScroll(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/NVListOverlay;->scroll:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method
