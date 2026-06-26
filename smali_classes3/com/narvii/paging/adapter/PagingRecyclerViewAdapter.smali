.class public abstract Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "PagingRecyclerViewAdapter.java"

# interfaces
.implements Lcom/narvii/paging/source/DataSourceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        "E:",
        "Lcom/narvii/model/api/ListResponse<",
        "+TT;>;>",
        "Lcom/narvii/paging/adapter/NVRecyclerViewAdapter<",
        "TT;>;",
        "Lcom/narvii/paging/source/DataSourceChangeListener;"
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

    .line 36
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 139
    new-instance p1, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$GPlfGhdYIpMVxrSDhciCpE6VdHo;

    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$GPlfGhdYIpMVxrSDhciCpE6VdHo;-><init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->retryListener:Lcom/narvii/paging/state/ErrorRetryListener;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    .line 139
    new-instance p1, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$GPlfGhdYIpMVxrSDhciCpE6VdHo;

    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$GPlfGhdYIpMVxrSDhciCpE6VdHo;-><init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->retryListener:Lcom/narvii/paging/state/ErrorRetryListener;

    return-void
.end method

.method private invalidateAdapter()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getInitPage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    if-gt v1, v0, :cond_2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 172
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v0

    .line 174
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;->INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$u81cWKr_i0qhvd53WbRJqgncPkc;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    goto :goto_3

    .line 165
    :cond_3
    :goto_2
    new-instance v1, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$nvSieRoUbOshNXcS_f7SAJmNITw;

    invoke-direct {v1, p0, v0}, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$nvSieRoUbOshNXcS_f7SAJmNITw;-><init>(Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;I)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method static synthetic lambda$invalidateAdapter$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 176
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$null$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 167
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

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

    .line 209
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->pageDataSource:Lcom/narvii/paging/source/PageDataSource;

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

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->pageStatusLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/narvii/model/NVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->autoLoadNextPage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v1, Lcom/narvii/paging/source/ContinuousSource;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    check-cast v1, Lcom/narvii/paging/source/ContinuousSource;

    invoke-interface {v1, p1}, Lcom/narvii/paging/source/ContinuousSource;->loadAround(I)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 29
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

    .line 198
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->showPageLoadingStatus()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 223
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v0

    .line 224
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemType(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->hashCode()I

    move-result p1

    int-to-long v0, p1

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

    .line 103
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->showPageLoadingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemType(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isRequestEnd()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->pageDataSource:Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->get_isEnd()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$invalidateAdapter$2$PagingRecyclerViewAdapter(I)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 167
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v0, Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$BZMCP9CVd8jmNPktFjKcdinEb4o;->INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$PagingRecyclerViewAdapter$BZMCP9CVd8jmNPktFjKcdinEb4o;

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public synthetic lambda$new$0$PagingRecyclerViewAdapter()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->onErrorRetry()V

    return-void
.end method

.method public loadInitData()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    return-void
.end method

.method public loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v0, Lcom/narvii/paging/source/ContinuousSource;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Lcom/narvii/paging/source/ContinuousSource;

    invoke-interface {v0, p1}, Lcom/narvii/paging/source/ContinuousSource;->loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)Z

    :cond_0
    return-void
.end method

.method protected abstract onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 84
    instance-of v0, p1, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;

    if-eqz v0, :cond_0

    .line 85
    check-cast p1, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;

    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {p2}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->retryListener:Lcom/narvii/paging/state/ErrorRetryListener;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->bind(Lcom/narvii/paging/state/PageLoadState;Lcom/narvii/paging/state/ErrorRetryListener;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 88
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/narvii/lib/R$id;->_not_set_cell_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->tagCellAuto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_2

    .line 92
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/paging/PageViewUtils;->onBindViewHolder(Lcom/narvii/app/NVFragment;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    if-nez p2, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->createPageLoadStatusView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;

    invoke-direct {p2, p1}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isDarkTheme()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/paging/state/PageLoadStateItemViewHolder;->setDarkTheme(Z)V

    return-object p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 66
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p2, Lcom/narvii/paging/PageView;

    if-eqz v0, :cond_2

    .line 67
    check-cast p2, Lcom/narvii/paging/PageView;

    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {p2, v0}, Lcom/narvii/paging/PageView;->setNvContext(Lcom/narvii/app/NVContext;)V

    .line 68
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lcom/narvii/paging/PageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    :cond_2
    return-object p1
.end method

.method public onPageListChanged(Lcom/narvii/paging/storage/PageStorage;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->invalidateAdapter()V

    return-void
.end method

.method public onPageLoadStatusChanged()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->invalidateAdapter()V

    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected pageStatusLayoutId()I
    .locals 1

    .line 79
    sget v0, Lcom/narvii/lib/R$layout;->item_page_load_state:I

    return v0
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/source/DataSource;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 217
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/state/PageLoadState;->isLoaded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

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

    .line 191
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->updateItem(Lcom/narvii/model/NVObject;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
