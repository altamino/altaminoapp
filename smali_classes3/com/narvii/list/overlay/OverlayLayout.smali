.class public Lcom/narvii/list/overlay/OverlayLayout;
.super Landroid/widget/RelativeLayout;
.source "OverlayLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/narvii/widget/NVListView$OnOverscrollListener;
.implements Lcom/narvii/widget/NVListView$OnLayoutListener;


# instance fields
.field protected height1:I

.field protected height2:I

.field private layoutId:I

.field private overscroll:I

.field private scroll:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->getActionBarHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    return-void
.end method

.method private getActionBarHeight()I
    .locals 4

    .line 35
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v0

    return v0

    .line 38
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 39
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x42380000    # 46.0f

    .line 42
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private update()V
    .locals 3

    .line 109
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 103
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 104
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->setOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V

    .line 105
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V

    return-void
.end method

.method public getCurHeight()I
    .locals 3

    .line 126
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getHeight1()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    return v0
.end method

.method public getProgress()F
    .locals 4

    .line 120
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 121
    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    iget v3, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    sub-float/2addr v2, v0

    return v2
.end method

.method public onLayout(Lcom/narvii/widget/NVListView;)V
    .locals 3

    .line 93
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/list/overlay/OverlayLayout;->onScroll(Landroid/widget/AbsListView;III)V

    .line 94
    new-instance p1, Lcom/narvii/list/overlay/OverlayLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/list/overlay/OverlayLayout$1;-><init>(Lcom/narvii/list/overlay/OverlayLayout;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOverscroll(Lcom/narvii/widget/NVListView;I)V
    .locals 0

    .line 72
    invoke-virtual {p0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setOverscroll(I)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 82
    invoke-virtual {p0, p4}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 84
    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x2710

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    return-void
.end method

.method public setLayout(II)V
    .locals 1

    .line 47
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->layoutId:I

    if-eq v0, p1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 49
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->layoutId:I

    .line 52
    :cond_0
    iput p2, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    .line 53
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->update()V

    return-void
.end method

.method public setOverscroll(I)V
    .locals 1

    .line 57
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

    if-eq v0, p1, :cond_0

    .line 58
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

    .line 59
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->update()V

    :cond_0
    return-void
.end method

.method public setScroll(I)V
    .locals 1

    .line 64
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    if-eq v0, p1, :cond_0

    .line 65
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    .line 66
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->update()V

    :cond_0
    return-void
.end method
