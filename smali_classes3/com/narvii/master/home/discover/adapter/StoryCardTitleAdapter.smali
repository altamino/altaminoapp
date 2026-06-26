.class public final Lcom/narvii/master/home/discover/adapter/StoryCardTitleAdapter;
.super Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;
.source "StoryCardTitleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoryCardTitleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoryCardTitleAdapter.kt\ncom/narvii/master/home/discover/adapter/StoryCardTitleAdapter\n*L\n1#1,35:1\n*E\n"
.end annotation


# instance fields
.field private final module:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;)V

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/StoryCardTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/StoryCardTitleAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/StoryCardTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getModuleDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->showNoStoriesYet:Z

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getModuleDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/topic/model/discover/SubRequestHost;

    if-eqz v0, :cond_7

    .line 27
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;

    invoke-interface {v0}, Lcom/narvii/master/home/discover/ITopicNotInterestedHost;->notInterested()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.master.home.discover.ITopicNotInterestedHost"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getHost()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/narvii/topic/model/discover/SubRequestHost;

    invoke-interface {v0}, Lcom/narvii/topic/model/discover/SubRequestHost;->isEnd()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_7
    invoke-super {p0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public final getModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/StoryCardTitleAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-super {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 16
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 17
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
