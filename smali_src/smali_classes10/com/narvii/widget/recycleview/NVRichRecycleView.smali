.class public Lcom/narvii/widget/recycleview/NVRichRecycleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RichRecycleView"


# instance fields
.field protected emptyView:Landroid/view/View;

.field protected mEmptyId:I

.field protected mMoreProgressId:I

.field protected mProgressId:I

.field protected mProgressView:Landroid/view/View;

.field protected mRichRecyclerViewLayoutId:I

.field protected moreProgressView:Landroid/view/View;

.field protected recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/narvii/lib/R$styleable;->NVRichRecycleView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_main_layout_id:I

    sget p3, Lcom/narvii/lib/R$layout;->horizontal_recycleview_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mRichRecyclerViewLayoutId:I

    .line 6
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_empty_layout_id:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mEmptyId:I

    .line 7
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_more_progress_id:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mMoreProgressId:I

    .line 8
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_progress_id:I

    sget p3, Lcom/narvii/lib/R$layout;->recycle_progress_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressId:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->initViews()V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->updateViews()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
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
    iget v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mRichRecyclerViewLayoutId:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    const v1, 0x102000d

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    instance-of v2, v1, Landroid/view/ViewStub;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget v2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressId:I

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    check-cast v1, Landroid/view/ViewStub;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressView:Landroid/view/View;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressView:Landroid/view/View;

    .line 51
    .line 52
    :goto_0
    sget v1, Lcom/narvii/lib/R$id;->more_progress:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    instance-of v2, v1, Landroid/view/ViewStub;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget v2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mMoreProgressId:I

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    check-cast v1, Landroid/view/ViewStub;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->moreProgressView:Landroid/view/View;

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_2
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->moreProgressView:Landroid/view/View;

    .line 79
    .line 80
    :goto_1
    sget v1, Lcom/narvii/lib/R$id;->empty:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    instance-of v2, v1, Landroid/view/ViewStub;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    iget v2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mEmptyId:I

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    check-cast v1, Landroid/view/ViewStub;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->emptyView:Landroid/view/View;

    .line 104
    goto :goto_2

    .line 105
    .line 106
    :cond_3
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->emptyView:Landroid/view/View;

    .line 107
    .line 108
    :goto_2
    sget v1, Lcom/narvii/lib/R$id;->recycle_list:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    check-cast v0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    .line 117
    const/4 v0, 0x1

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showProgressViewVisiable(Z)V

    .line 121
    const/4 v0, 0x0

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showMoreProgressViewVisible(Z)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showRecyclerViewVisiable(Z)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showEmptyViewVisible(Z)V

    .line 131
    return-void
.end method

.method private showEmptyViewVisible(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->emptyView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x4

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_1
    return-void
.end method

.method private showMoreProgressViewVisible(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->moreProgressView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x4

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_1
    return-void
.end method

.method private showProgressViewVisiable(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    instance-of v1, v0, Landroid/view/ViewStub;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x4

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_1
    return-void
.end method

.method private showRecyclerViewVisiable(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_1
    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showRecyclerViewVisiable(Z)V

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showProgressViewVisiable(Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showMoreProgressViewVisible(Z)V

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->setIsLoadingMore(Z)V

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showEmptyViewVisible(Z)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showEmptyViewVisible(Z)V

    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public setRecyclerViewAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->updateViews()V

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;-><init>(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 22
    :cond_1
    return-void
.end method

.method public setRecyclerViewLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    return-void
.end method
