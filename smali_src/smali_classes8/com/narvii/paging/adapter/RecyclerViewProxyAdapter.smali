.class public Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"


# instance fields
.field listener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

.field observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$1;-><init>(Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter$2;-><init>(Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 18
    return-void
.end method


# virtual methods
.method public dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getViewTypeCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 6
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onErrorRetry()V

    .line 6
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 6
    return-void
.end method

.method public setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    :cond_1
    iput-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->listener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method
