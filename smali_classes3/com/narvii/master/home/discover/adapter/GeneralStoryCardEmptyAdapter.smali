.class public final Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "GeneralStoryCardEmptyAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter$EmptyViewHolder;
    }
.end annotation


# instance fields
.field private host:Lcom/narvii/topic/model/discover/SubRequestHost;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public final getHost()Lcom/narvii/topic/model/discover/SubRequestHost;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;->host:Lcom/narvii/topic/model/discover/SubRequestHost;

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;->host:Lcom/narvii/topic/model/discover/SubRequestHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/narvii/topic/model/discover/SubRequestHost;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;->host:Lcom/narvii/topic/model/discover/SubRequestHost;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/topic/model/discover/SubRequestHost;->geSubResponseSize()I

    move-result v0

    if-nez v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;->host:Lcom/narvii/topic/model/discover/SubRequestHost;

    instance-of v2, v0, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;

    invoke-interface {v0}, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;->notInterested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.master.home.discover.ITopicNotInterestedHost"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 27
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_4
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter$EmptyViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b031b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026mpty_view, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter$EmptyViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setHost(Lcom/narvii/topic/model/discover/SubRequestHost;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;->host:Lcom/narvii/topic/model/discover/SubRequestHost;

    return-void
.end method
