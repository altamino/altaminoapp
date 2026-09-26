.class public Lcom/narvii/list/ProxyAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# instance fields
.field protected nva:Lcom/narvii/list/NVAdapter;

.field private final observer:Landroid/database/DataSetObserver;

.field protected wrapped:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/list/ProxyAdapter$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/list/ProxyAdapter$1;-><init>(Lcom/narvii/list/ProxyAdapter;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/list/ProxyAdapter;->observer:Landroid/database/DataSetObserver;

    .line 11
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

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
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

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

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isListShown()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    return v0
.end method

.method protected onAdapterChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 8
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 8
    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 8
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move-object v5, p5

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 8
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    return-object v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

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
    iget-object v1, p0, Lcom/narvii/list/ProxyAdapter;->observer:Landroid/database/DataSetObserver;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 13
    .line 14
    :cond_1
    iput-object p1, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 15
    .line 16
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    move-object v0, p1

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    iput-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->observer:Landroid/database/DataSetObserver;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 36
    return-void
.end method
