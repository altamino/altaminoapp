.class public Lcom/narvii/widget/recycleview/NVRichRecycleView;
.super Landroid/widget/FrameLayout;
.source "NVRichRecycleView.java"


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

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/narvii/lib/R$styleable;->NVRichRecycleView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_main_layout_id:I

    sget p3, Lcom/narvii/lib/R$layout;->horizontal_recycleview_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mRichRecyclerViewLayoutId:I

    .line 45
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_empty_layout_id:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mEmptyId:I

    .line 46
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_more_progress_id:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mMoreProgressId:I

    .line 47
    sget p2, Lcom/narvii/lib/R$styleable;->NVRichRecycleView_progress_id:I

    sget p3, Lcom/narvii/lib/R$layout;->recycle_progress_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressId:I

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->initViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->updateViews()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mRichRecyclerViewLayoutId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000d

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressId:I

    if-eqz v2, :cond_1

    .line 59
    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 60
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressView:Landroid/view/View;

    goto :goto_0

    .line 62
    :cond_1
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressView:Landroid/view/View;

    .line 65
    :goto_0
    sget v1, Lcom/narvii/lib/R$id;->more_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mMoreProgressId:I

    if-eqz v2, :cond_2

    .line 67
    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 68
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->moreProgressView:Landroid/view/View;

    goto :goto_1

    .line 70
    :cond_2
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->moreProgressView:Landroid/view/View;

    .line 73
    :goto_1
    sget v1, Lcom/narvii/lib/R$id;->empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 74
    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mEmptyId:I

    if-eqz v2, :cond_3

    .line 75
    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 76
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->emptyView:Landroid/view/View;

    goto :goto_2

    .line 78
    :cond_3
    iput-object v1, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->emptyView:Landroid/view/View;

    .line 81
    :goto_2
    sget v1, Lcom/narvii/lib/R$id;->recycle_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    iput-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showProgressViewVisiable(Z)V

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showMoreProgressViewVisible(Z)V

    .line 86
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showRecyclerViewVisiable(Z)V

    .line 87
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showEmptyViewVisible(Z)V

    return-void
.end method

.method private showEmptyViewVisible(Z)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewStub;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 176
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showMoreProgressViewVisible(Z)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->moreProgressView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewStub;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 170
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showProgressViewVisiable(Z)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewStub;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 164
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showRecyclerViewVisiable(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 158
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    .line 144
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showRecyclerViewVisiable(Z)V

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showProgressViewVisiable(Z)V

    .line 146
    invoke-direct {p0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showMoreProgressViewVisible(Z)V

    .line 147
    iget-object v3, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    invoke-virtual {v3, v2}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->setIsLoadingMore(Z)V

    if-nez v0, :cond_2

    .line 149
    invoke-direct {p0, v1}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showEmptyViewVisible(Z)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->showEmptyViewVisible(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setRecyclerViewAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->updateViews()V

    if-eqz p1, :cond_1

    .line 100
    new-instance v0, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/recycleview/NVRichRecycleView$1;-><init>(Lcom/narvii/widget/recycleview/NVRichRecycleView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    return-void
.end method

.method public setRecyclerViewLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/widget/recycleview/NVRichRecycleView;->recyclerView:Lcom/narvii/widget/recycleview/NVHorizontalRecycleView;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
