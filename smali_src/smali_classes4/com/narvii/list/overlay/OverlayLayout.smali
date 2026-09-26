.class public Lcom/narvii/list/overlay/OverlayLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->getActionBarHeight()I

    .line 7
    move-result p1

    .line 8
    .line 9
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    .line 10
    return-void
.end method

.method private getActionBarHeight()I
    .locals 4

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
    return v0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    const v2, 0x10102eb

    .line 36
    const/4 v3, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 56
    move-result v0

    .line 57
    return v0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .line 69
    const/high16 v1, 0x42380000    # 46.0f

    .line 70
    mul-float/2addr v0, v1

    .line 71
    float-to-int v0, v0

    .line 72
    return v0
.end method

.method private update()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

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
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    .line 22
    if-eq v1, v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/narvii/widget/NVListView;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->setOnOverscrollListener(Lcom/narvii/widget/NVListView$OnOverscrollListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVListView;->setOnLayoutListener(Lcom/narvii/widget/NVListView$OnLayoutListener;)V

    .line 10
    return-void
.end method

.method public getCurHeight()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

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

.method public getHeight1()I
    .locals 1

    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    return v0
.end method

.method public getProgress()F
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

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
    iget v1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

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
    iget v3, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/narvii/list/overlay/OverlayLayout;->onScroll(Landroid/widget/AbsListView;III)V

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/list/overlay/OverlayLayout$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/list/overlay/OverlayLayout$1;-><init>(Lcom/narvii/list/overlay/OverlayLayout;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method public onOverscroll(Lcom/narvii/widget/NVListView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/list/overlay/OverlayLayout;->setOverscroll(I)V

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
    invoke-virtual {p0, p4}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

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
    .line 22
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 27
    move-result p1

    .line 28
    neg-int p1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    const/16 p1, 0x2710

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

    .line 38
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->height1:I

    return-void
.end method

.method public setLayout(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->layoutId:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->layoutId:I

    .line 21
    .line 22
    :cond_0
    iput p2, p0, Lcom/narvii/list/overlay/OverlayLayout;->height2:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->update()V

    .line 26
    return-void
.end method

.method public setOverscroll(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->overscroll:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->update()V

    .line 10
    :cond_0
    return-void
.end method

.method public setScroll(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/list/overlay/OverlayLayout;->scroll:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/list/overlay/OverlayLayout;->update()V

    .line 10
    :cond_0
    return-void
.end method
