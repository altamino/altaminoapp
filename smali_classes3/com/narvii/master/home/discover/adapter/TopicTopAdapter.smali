.class public final Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "TopicTopAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/TopicTopAdapter$TopicTopViewHolder;
    }
.end annotation


# instance fields
.field private host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field private final moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-void
.end method


# virtual methods
.method public final getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    const/4 v0, 0x0

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

    .line 20
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter$TopicTopViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026_top_view, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter$TopicTopViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 22
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "topicTopViewHolder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p2
.end method

.method public final setHost(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTopAdapter;->host:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method
