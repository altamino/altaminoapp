.class public Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


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

.field protected mInternalScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->ITEM_COUNT_LEFT_FOR_LOAD_MORE:I

    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->init()V

    return-void
.end method

.method private checkLoadMore()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->getLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 16
    move-result v0

    .line 17
    .line 18
    sub-int v1, v0, v1

    .line 19
    .line 20
    iget v3, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->ITEM_COUNT_LEFT_FOR_LOAD_MORE:I

    .line 21
    .line 22
    if-le v1, v3, :cond_0

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    if-le v0, v2, :cond_1

    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 38
    move-result v0

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget v1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    .line 45
    .line 46
    if-eq v1, v0, :cond_1

    .line 47
    .line 48
    const-string v1, "NVRecycleView"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v2, "try to load more items in recycle view"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    .line 58
    .line 59
    iput v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    .line 60
    :cond_1
    return-void
.end method

.method private findMax([I)I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    .line 8
    aget v3, p1, v2

    .line 9
    .line 10
    if-le v3, v1, :cond_0

    .line 11
    move v1, v3

    .line 12
    .line 13
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method private getLastVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B()I

    .line 25
    move-result v0

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r([I)[I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastVisiablePositions:[I

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->findMax([I)I

    .line 40
    move-result p1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, -0x1

    .line 43
    :goto_0
    return p1
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$1;-><init>(Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->mInternalScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 14
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;->lastLoadMorePosition:I

    .line 12
    .line 13
    iput p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 17
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->lastRequestLodMoreStart:I

    .line 12
    .line 13
    iput v0, v1, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView$SavedState;->lastLoadMorePosition:I

    .line 14
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    const/4 v1, 0x3

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    .line 7
    return-void
.end method

.method public setIsLoadingMore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->isLoadingMore:Z

    return-void
.end method
