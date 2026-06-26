.class public Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "NVHorizontalRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NVRecycleView"


# instance fields
.field protected ITEM_COUNT_LEFT_FOR_LOAD_MORE:I

.field private isLoadingMore:Z

.field private lastRequestLodMoreStart:I

.field private lastVisiablePositions:[I

.field protected mInternalScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->ITEM_COUNT_LEFT_FOR_LOAD_MORE:I

    .line 38
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->init()V

    return-void
.end method

.method private checkLoadMore()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->getLastVisibleItemPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;)I

    move-result v1

    .line 81
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    .line 82
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    sub-int v1, v0, v1

    .line 85
    iget v3, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->ITEM_COUNT_LEFT_FOR_LOAD_MORE:I

    if-le v1, v3, :cond_0

    if-nez v1, :cond_1

    if-le v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 89
    iget-boolean v1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    if-eq v1, v0, :cond_1

    const-string v1, "NVRecycleView"

    const-string v2, "try to load more items in recycle view"

    .line 90
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    .line 92
    iput v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    :cond_1
    return-void
.end method

.method private findMax([I)I
    .locals 4

    .line 118
    array-length v0, p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getLastVisibleItemPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;)I
    .locals 1

    .line 99
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    goto :goto_0

    .line 101
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 102
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 107
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->findMax([I)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    .line 60
    new-instance v0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$1;-><init>(Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;)V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->mInternalScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 74
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->mInternalScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 136
    check-cast p1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;

    .line 137
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 138
    iget p1, p1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;->lastLoadMorePosition:I

    iput p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    .line 139
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 128
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;

    invoke-direct {v1, v0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 130
    iget v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    iput v0, v1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;->lastLoadMorePosition:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 55
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    return-void
.end method

.method public setIsLoadingMore(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    return-void
.end method
