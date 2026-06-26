.class public Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "GridTopicCardAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/ModuleItemCountHost;
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;",
        "Lcom/narvii/topic/model/ModuleItemCountHost;",
        "Lcom/narvii/topic/model/discover/SerialRequestChild;",
        "Lcom/narvii/topic/model/discover/SubRequestHost;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGridTopicCardAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GridTopicCardAdapter.kt\ncom/narvii/master/home/discover/adapter/GridTopicCardAdapter\n*L\n1#1,197:1\n*E\n"
.end annotation


# instance fields
.field private allItemCount:I

.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 171
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-void
.end method

.method public static final synthetic access$getAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->allItemCount:I

    return p0
.end method

.method public static final synthetic access$getChildHelper$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;)Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object p0
.end method

.method public static final synthetic access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->allItemCount:I

    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->allItemCount:I

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/story/StoryTopic;",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;-><init>(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public geSubResponseSize()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "module.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/narvii/model/story/StoryTopic;
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getMaxSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final getModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->isSubRequestFinish()Z

    move-result v0

    return v0
.end method

.method public isReadyToRequest()Z
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerialRequest"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 62
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;

    const-class v1, Lcom/narvii/model/story/StoryTopic;

    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;-><init>(Ljava/lang/Class;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 39
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0397

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026opic_grid, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 81
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 83
    const-class p3, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p3

    .line 84
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "topic"

    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget p4, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    if-nez p4, :cond_0

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "topic0problem : StoryTopicView open with error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return p2

    .line 89
    :cond_0
    sget-object p4, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, p4}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 90
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "__communityId"

    .line 91
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    const-string p2, "__interactionScope"

    .line 93
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p1

    :cond_3
    return p2
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->resetEmptyList()V

    .line 162
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->resetList()V

    .line 168
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    const-string v0, "serialRequestParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
