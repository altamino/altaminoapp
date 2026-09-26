.class public abstract Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/paging/adapter/NVRecyclerViewAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TYPE_PAGE_LOADING_STATUS:I


# instance fields
.field public pageDataSource:Lcom/narvii/paging/source/PageDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/PageDataSource<",
            "TT;TE;>;"
        }
    .end annotation
.end field

.field retryListener:Lcom/narvii/paging/state/ErrorRetryListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 2
    new-instance p1, Lcom/narvii/paging/adapter/c;

    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/c;-><init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->retryListener:Lcom/narvii/paging/state/ErrorRetryListener;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    .line 4
    new-instance p1, Lcom/narvii/paging/adapter/c;

    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/c;-><init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->retryListener:Lcom/narvii/paging/state/ErrorRetryListener;

    return-void
.end method

.method public static synthetic g(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->lambda$new$0()V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->lambda$invalidateAdapter$2(I)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->lambda$invalidateAdapter$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method private invalidateAdapter()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    goto :goto_2

    .line 36
    .line 37
    :cond_1
    if-gt v1, v0, :cond_2

    .line 38
    sub-int/2addr v0, v1

    .line 39
    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sub-int/2addr v1, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 49
    .line 50
    :goto_1
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 51
    .line 52
    new-instance v1, Lcom/narvii/paging/adapter/e;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1}, Lcom/narvii/paging/adapter/e;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_3
    :goto_2
    new-instance v1, Lcom/narvii/paging/adapter/d;

    .line 62
    .line 63
    .line 64
    invoke-direct {v1, p0, v0}, Lcom/narvii/paging/adapter/d;-><init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 68
    :goto_3
    return-void
.end method

.method public static synthetic j(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->lambda$invalidateAdapter$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method private static synthetic lambda$invalidateAdapter$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method private synthetic lambda$invalidateAdapter$2(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/paging/adapter/f;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/paging/adapter/f;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
    return-void
.end method

.method private static synthetic lambda$invalidateAdapter$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->onErrorRetry()V

    .line 6
    return-void
.end method


# virtual methods
.method public final createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/DataSource<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->pageDataSource:Lcom/narvii/paging/source/PageDataSource;

    .line 7
    return-object p1
.end method

.method public abstract createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "TT;TE;>;"
        }
    .end annotation
.end method

.method protected createPageLoadStatusView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->pageStatusLayoutId()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getItem(I)Lcom/narvii/model/NVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 2
    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->autoLoadNextPage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v1, Lcom/narvii/paging/source/ContinuousSource;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 5
    check-cast v1, Lcom/narvii/paging/source/ContinuousSource;

    invoke-interface {v1, p1}, Lcom/narvii/paging/source/ContinuousSource;->loadAround(I)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->showPageLoadingStatus()Z

    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemType(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    .line 17
    :cond_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 24
    move-result p1

    .line 25
    int-to-long v0, p1

    .line 26
    :goto_0
    return-wide v0
.end method

.method protected getItemType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->showPageLoadingStatus()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemType(I)I

    .line 20
    move-result p1

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    return p1
.end method

.method protected getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemViewTypeCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x2

    .line 7
    return v0
.end method

.method public isRequestEnd()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->pageDataSource:Lcom/narvii/paging/source/PageDataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->get_isEnd()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public loadInitData()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 6
    return-void
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/paging/source/ContinuousSource;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/paging/source/ContinuousSource;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/narvii/paging/source/ContinuousSource;->loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z

    .line 12
    :cond_0
    return-void
.end method

.method protected abstract onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->retryListener:Lcom/narvii/paging/state/ErrorRetryListener;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, v0}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->bind(Lcom/narvii/paging/state/PageLoadState;Lcom/narvii/paging/state/ErrorRetryListener;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 22
    .line 23
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget v1, Lcom/narvii/lib/R$id;->_not_set_cell_tag:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    if-eq v0, v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->tagCellAuto()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p1, p2}, Lcom/narvii/paging/PageViewUtils;->onBindViewHolder(Lcom/narvii/app/NVFragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->createPageLoadStatusView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    new-instance p2, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;

    .line 9
    .line 10
    .line 11
    invoke-direct {p2, p1}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isDarkTheme()Z

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->setDarkTheme(Z)V

    .line 19
    return-object p2

    .line 20
    .line 21
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    .line 43
    :cond_1
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    .line 47
    instance-of v0, p2, Lcom/narvii/paging/PageView;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    check-cast p2, Lcom/narvii/paging/PageView;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Lcom/narvii/paging/PageView;->setNvContext(Lcom/narvii/app/NVContext;)V

    .line 57
    .line 58
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 59
    .line 60
    check-cast p2, Lcom/narvii/paging/PageView;

    .line 61
    const/4 v0, 0x0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 65
    :cond_2
    return-object p1
.end method

.method public onPageListChanged(Lcom/narvii/paging/storage/PageStorage;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->invalidateAdapter()V

    .line 4
    return-void
.end method

.method public onPageLoadStatusChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->invalidateAdapter()V

    .line 4
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4
    return-void
.end method

.method protected pageStatusLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->item_page_load_state:I

    return v0
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/source/DataSource;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 6
    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/paging/state/PageLoadState;->isLoaded()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    xor-int/lit8 v0, v0, 0x1

    .line 13
    return v0
.end method

.method protected tagCellAuto()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateItem(Lcom/narvii/model/NVObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->updateItem(Lcom/narvii/model/NVObject;)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 12
    :cond_0
    return-void
.end method
