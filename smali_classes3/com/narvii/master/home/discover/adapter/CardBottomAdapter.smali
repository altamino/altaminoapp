.class public Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "CardBottomAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/CardBottomAdapter$CardBottomViewHolder;
    }
.end annotation


# instance fields
.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    const-string v1, "null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->showNoStoriesYet:Z

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    instance-of v4, v0, Lcom/narvii/topic/model/discover/SubRequestHost;

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/topic/model/discover/SubRequestHost;

    invoke-interface {v0}, Lcom/narvii/topic/model/discover/SubRequestHost;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    instance-of v1, v0, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;

    invoke-interface {v0}, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;->notInterested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.master.home.discover.ITopicNotInterestedHost"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v3

    .line 33
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_6

    instance-of v4, v0, Lcom/narvii/topic/model/discover/SubRequestHost;

    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    .line 40
    check-cast v0, Lcom/narvii/topic/model/discover/SubRequestHost;

    invoke-interface {v0}, Lcom/narvii/topic/model/discover/SubRequestHost;->geSubResponseSize()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_8

    return v3

    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_8
    return v2
.end method

.method public getItemLayout()I
    .locals 1

    const v0, 0x7f0b06d4

    return v0
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

    .line 21
    new-instance p2, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter$CardBottomViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->getItemLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026mLayout(), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter$CardBottomViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method
