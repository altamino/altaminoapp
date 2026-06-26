.class public Lcom/narvii/list/ProxyAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ProxyAdapter.java"


# instance fields
.field protected nva:Lcom/narvii/list/NVAdapter;

.field private final observer:Landroid/database/DataSetObserver;

.field protected wrapped:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    new-instance p1, Lcom/narvii/list/ProxyAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/list/ProxyAdapter$1;-><init>(Lcom/narvii/list/ProxyAdapter;)V

    iput-object p1, p0, Lcom/narvii/list/ProxyAdapter;->observer:Landroid/database/DataSetObserver;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 2

    .line 212
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isListShown()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    return v0

    .line 152
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAdapterChanged()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->dispatchOnItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 205
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

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

    .line 179
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 53
    iget-object v1, p0, Lcom/narvii/list/ProxyAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 55
    :cond_1
    iput-object p1, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    .line 56
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/narvii/list/NVAdapter;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/list/ProxyAdapter;->nva:Lcom/narvii/list/NVAdapter;

    .line 57
    iget-object p1, p0, Lcom/narvii/list/ProxyAdapter;->wrapped:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_3

    .line 58
    iget-object v0, p0, Lcom/narvii/list/ProxyAdapter;->observer:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 60
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
