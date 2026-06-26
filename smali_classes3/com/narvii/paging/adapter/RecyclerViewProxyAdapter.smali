.class public Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "RecyclerViewProxyAdapter.java"


# instance fields
.field listener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

.field observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field public wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 43
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$1;-><init>(Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 55
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;

    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;-><init>(Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;)V

    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method


# virtual methods
.method public dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 2

    .line 111
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    move-result v0

    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onErrorRetry()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onErrorRetry()V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 34
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 35
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz p1, :cond_2

    .line 36
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 37
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-virtual {p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
