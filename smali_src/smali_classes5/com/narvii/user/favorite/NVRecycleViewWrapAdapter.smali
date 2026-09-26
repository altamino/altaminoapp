.class public Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NVRecycleViewWrapperAdapter"


# instance fields
.field private final observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field protected wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter$1;-><init>(Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 13
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->errorMessage()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->recycleViewContainerLayoutId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const-string v0, "NVRecycleViewWrapperAdapter"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a0bf9

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    instance-of p3, p2, Lcom/narvii/widget/recycleview/NVRichRecycleView;

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a0bfa

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    move-object v0, p2

    .line 39
    .line 40
    check-cast v0, Lcom/narvii/widget/recycleview/NVRichRecycleView;

    .line 41
    .line 42
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->setRecyclerViewLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 59
    .line 60
    if-eq p3, v0, :cond_1

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/widget/recycleview/NVRichRecycleView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Lcom/narvii/widget/recycleview/NVRichRecycleView;->setRecyclerViewAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    :cond_1
    return-object p1

    .line 67
    .line 68
    :cond_2
    instance-of p3, p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    :goto_0
    if-eqz p2, :cond_6

    .line 80
    .line 81
    instance-of p3, p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    if-eqz p3, :cond_5

    .line 84
    .line 85
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    if-nez p3, :cond_4

    .line 92
    .line 93
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-direct {p3, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 107
    move-result-object p3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 110
    .line 111
    if-eq p3, v0, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    :cond_5
    return-object p1

    .line 116
    .line 117
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string p2, "must contain a NvRecycleView in layout"

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    throw p1
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onAttach()V

    .line 11
    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onErrorRetry()V

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 12
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 11
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected recycleViewContainerLayoutId()I
    .locals 1

    const v0, 0x7f0d069b

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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->refresh()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 12
    return-void
.end method

.method public setRecycleAdapter(Lcom/narvii/widget/recycleview/NVRecycleAdapter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

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
    iget-object v1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 13
    .line 14
    :cond_1
    iput-object p1, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->wrapped:Lcom/narvii/widget/recycleview/NVRecycleAdapter;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method

.method protected updateViewsOnDataChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method
