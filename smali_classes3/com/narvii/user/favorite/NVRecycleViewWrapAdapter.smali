.class public Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "NVRecycleViewWrapAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NVRecycleViewWrapperAdapter"


# instance fields
.field private final observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field protected wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    new-instance p1, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;

    invoke-direct {p1, p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;-><init>(Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;)V

    iput-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 97
    iput-object p2, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->recycleViewContainerLayoutId()I

    move-result p1

    const-string v0, "NVRecycleViewWrapperAdapter"

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09093b

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 138
    instance-of p3, p2, Lcom/narvii/widget/recycleview/NVRichRecycleView;

    const v0, 0x7f09093c

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 139
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 140
    check-cast p3, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    move-object v0, p2

    check-cast v0, Lcom/narvii/widget/recycleview/NVRichRecycleView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->setRecyclerViewLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 143
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eq p3, v0, :cond_1

    .line 144
    check-cast p2, Lcom/narvii/widget/recycleview/NVRichRecycleView;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->setRecyclerViewAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_1
    return-object p1

    .line 147
    :cond_2
    instance-of p3, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz p3, :cond_3

    .line 148
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_6

    .line 155
    instance-of p3, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz p3, :cond_5

    .line 156
    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-nez p3, :cond_4

    .line 157
    new-instance p3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 159
    :cond_4
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    .line 160
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eq p3, v0, :cond_5

    .line 161
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_5
    return-object p1

    .line 153
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "must contain a NvRecycleView in layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttach()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 67
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onAttach()V

    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onErrorRetry()V

    return-void

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected recycleViewContainerLayoutId()I
    .locals 1

    const v0, 0x7f0b05e7

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 75
    iget-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    invoke-virtual {p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->refresh()V

    .line 76
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    return-void
.end method

.method public setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 108
    iget-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    if-eqz p1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->observer:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected updateViewsOnDataChanged()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
