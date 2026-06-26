.class public Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;
.super Lcom/narvii/story/base/StoryListAdapter;
.source "GeneralStoryCardAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/ModuleItemCountHost;
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/master/home/discover/ITopicNotInterestedHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeneralStoryCardAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralStoryCardAdapter.kt\ncom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter\n*L\n1#1,355:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$Companion;

.field private static final DAY_TIME:I = 0x5265c00

.field private static final MAX_SIZE:I = 0x4

.field private static final MAX_WIDGET_DISPLAY_INTERVAL:I = 0x7

.field private static final MIN_POLL_QUIZ_COUNT:I = 0x5


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private firstSendRequest:Z

.field private hide:Z

.field private final inModuleList:Z

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;

.field private final moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Z)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/story/base/StoryListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    iput-boolean p4, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->inModuleList:Z

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->firstSendRequest:Z

    .line 321
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Z)V

    return-void
.end method

.method private final resetVideoView()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->resetVideoView()V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_1
    return-void
.end method

.method private final setDataSourceInterceptor(Lcom/narvii/model/Blog;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v0, Lcom/narvii/paging/source/PageDataSource;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 205
    check-cast v0, Lcom/narvii/paging/source/PageDataSource;

    new-instance v1, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter$setDataSourceInterceptor$1;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;Lcom/narvii/model/Blog;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.paging.source.PageDataSource<*, *>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/narvii/story/base/StoryListAdapter;->getAllItemCount()I

    move-result v0

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getRequestFromModule()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public forceShowLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public geSubResponseSize()I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->inModuleList:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "module.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/narvii/story/base/StoryListAdapter;->getAreaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getInModuleList()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->inModuleList:Z

    return v0
.end method

.method public getItem(I)Lcom/narvii/model/Blog;
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getItem(I)Lcom/narvii/model/Blog;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getItem(I)Lcom/narvii/model/Blog;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 3

    .line 88
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->hide:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 95
    invoke-super {p0}, Lcom/narvii/story/base/StoryListAdapter;->getItemCount()I

    move-result v0

    return v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    .line 101
    :cond_2
    invoke-super {p0}, Lcom/narvii/story/base/StoryListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 163
    instance-of v1, v0, Lcom/narvii/topic/TopicRelatedDiscoverFragment;

    const-string v2, "discover-player"

    if-eqz v1, :cond_0

    const-string v2, "topic-player"

    goto :goto_0

    .line 164
    :cond_0
    instance-of v0, v0, Lcom/narvii/master/home/discover/DiscoverFragment;

    :goto_0
    return-object v2
.end method

.method public getTopicId()Ljava/lang/Integer;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 171
    instance-of v1, v0, Lcom/narvii/topic/TopicRelatedDiscoverFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/topic/TopicRelatedDiscoverFragment;

    const-string v1, "key_topic_id"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isEnd()Z
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->isRequestEnd()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->isSubRequestFinish()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerialRequest"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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

.method public itemCellLayoutId()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0395

    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x64329b7a

    if-eq v1, v2, :cond_3

    const v2, 0x55d062b0

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "QuizStoryCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_3
    const-string v1, "PollStoryCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    const v0, 0x7f0b0393

    goto :goto_2

    :cond_4
    :goto_1
    const v0, 0x7f0b0392

    :goto_2
    return v0
.end method

.method public notInterested()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->hide:Z

    return v0
.end method

.method public onAttach()V
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 55
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;

    const-class v1, Lcom/narvii/model/Blog;

    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;-><init>(Ljava/lang/Class;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1, p2}, Lcom/narvii/story/base/StoryListAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getItem(I)Lcom/narvii/model/Blog;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 122
    instance-of p2, p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;

    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, v5, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    const-string v2, "story.modifiedTime"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const p2, 0x5265c00

    int-to-long v2, p2

    div-long/2addr v0, v2

    .line 124
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {p2}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    move-result-object p2

    const-string v2, "PollStoryCard"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz p2, :cond_4

    .line 125
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/story/widgets/StoryCardView;->getQuizTagView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/story/widgets/StoryCardView;->getPollTagView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/narvii/story/widgets/StoryCardView;->getQuizPollText()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 128
    iget v8, v5, Lcom/narvii/model/Blog;->totalPollVoteCount:I

    if-lt v8, v4, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0d78

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, v5, Lcom/narvii/model/Blog;->totalPollVoteCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 131
    :cond_2
    iget v3, v5, Lcom/narvii/model/Blog;->widgetDisplayInterval:I

    int-to-long v3, v3

    cmp-long v8, v0, v3

    if-gtz v8, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0c1c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 135
    :cond_3
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 140
    :cond_4
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {p2}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    move-result-object p2

    const-string v8, "QuizStoryCard"

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 141
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/narvii/story/widgets/StoryCardView;->getQuizTagView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/narvii/story/widgets/StoryCardView;->getPollTagView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_6
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/narvii/story/widgets/StoryCardView;->getQuizPollText()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 144
    iget v8, v5, Lcom/narvii/model/Blog;->totalQuizPlayCount:I

    if-lt v8, v4, :cond_7

    .line 145
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0e72

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, v5, Lcom/narvii/model/Blog;->totalQuizPlayCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_7
    iget v3, v5, Lcom/narvii/model/Blog;->widgetDisplayInterval:I

    int-to-long v3, v3

    cmp-long v8, v0, v3

    if-gtz v8, :cond_8

    .line 148
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0c1f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 151
    :cond_8
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_9
    :goto_0
    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a

    invoke-virtual {v5}, Lcom/narvii/model/Blog;->getFeedPreviewMediaList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Media;

    goto :goto_1

    :cond_a
    const/4 p2, 0x0

    :goto_1
    move-object v4, p2

    .line 157
    invoke-virtual {p1}, Lcom/narvii/story/base/StoryListAdapter$StoryItemViewHolder;->getStoryCardView()Lcom/narvii/story/widgets/StoryCardView;

    move-result-object v1

    const v2, 0x7f090586

    invoke-virtual {v5}, Lcom/narvii/model/Feed;->isContentAccessible()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v5, v7}, Lcom/narvii/model/Blog;->getPreviewVideoList(Z)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    move-object v3, p1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->markVideoCell(Landroid/view/View;ILjava/util/List;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;IZ)V

    :cond_c
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 241
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "delete"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz v2, :cond_6

    const-string v2, "null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule"

    if-eqz v1, :cond_5

    .line 242
    check-cast v1, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v1}, Lcom/narvii/topic/model/discover/ContentModule;->getInterestId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v3}, Lcom/narvii/topic/model/discover/ContentModule;->getInterestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->getItemCount()I

    move-result p1

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->hide:Z

    .line 246
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getParentAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    .line 247
    :cond_3
    instance-of v1, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz v1, :cond_4

    .line 248
    check-cast v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->getAdapterRealPos(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)I

    move-result v0

    .line 249
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_4
    return-void

    .line 242
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_6
    invoke-super {p0, p1}, Lcom/narvii/story/base/StoryListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public onRefreshFinishedBeforePageResponse(I)V
    .locals 2

    .line 258
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onRefreshFinishedBeforePageResponse(I)V

    .line 259
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    instance-of v0, p1, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isTopStoryModule:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    move-object v0, p1

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    iget-boolean v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz v0, :cond_1

    .line 261
    check-cast p1, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-virtual {p1}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;->forceRefresh()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.nvplayer.delegate.DiscoverModuleVideoListDelegate"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public openStoryDetailPage(Landroid/view/View;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    move-object v4, p2

    .line 177
    new-instance v1, Lcom/narvii/story/StoryHelper;

    invoke-direct {v1, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v2, 0x0

    if-eqz v7, :cond_0

    const v3, 0x7f090586

    .line 178
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v2

    .line 180
    :goto_0
    iget-object v3, v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    instance-of v5, v3, Lcom/narvii/master/home/discover/DiscoverFragment;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    if-eqz v3, :cond_2

    .line 181
    iget-object v1, v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    check-cast v1, Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    move-object v2, v1

    check-cast v2, Lcom/narvii/master/home/discover/DiscoverTabFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->updateMasterBottomBar(Z)V

    .line 183
    new-instance v3, Lcom/narvii/story/StoryHelper;

    invoke-direct {v3, p0}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 184
    invoke-direct {p0, p2}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->setDataSourceInterceptor(Lcom/narvii/model/Blog;)V

    .line 185
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v5, v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    const v8, 0x7f090ae5

    .line 186
    iget-object v6, v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    check-cast v6, Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v6}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v9

    move-object v10, v1

    check-cast v10, Lcom/narvii/story/StoryListVisibleChangeListener;

    move-object v1, v3

    move-object v3, v5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p1

    .line 185
    invoke-virtual/range {v1 .. v10}, Lcom/narvii/story/StoryHelper;->openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;)Lcom/narvii/story/StoryListFragment;

    move-result-object v1

    .line 186
    iget-object v2, v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    check-cast v2, Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v2}, Lcom/narvii/master/home/discover/DiscoverFragment;->getBottomLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment;->setBottomSheetLayout(Landroid/widget/FrameLayout;)V

    goto/16 :goto_2

    .line 182
    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_2
    iget-object v3, v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_5

    .line 188
    invoke-direct {p0, p2}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->setDataSourceInterceptor(Lcom/narvii/model/Blog;)V

    .line 189
    iget-object v3, v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Lcom/narvii/app/NVActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v5, v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    const v9, 0x1020002

    const/4 v10, 0x1

    .line 190
    iget-object v6, v0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    instance-of v7, v6, Lcom/narvii/story/StoryListVisibleChangeListener;

    if-eqz v7, :cond_3

    check-cast v6, Lcom/narvii/story/StoryListVisibleChangeListener;

    move-object v11, v6

    goto :goto_1

    :cond_3
    move-object v11, v2

    :goto_1
    move-object v2, v3

    move-object v3, v5

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    .line 189
    invoke-virtual/range {v1 .. v10}, Lcom/narvii/story/StoryHelper;->openStoryDetailInCurActivity(Landroid/support/v4/app/FragmentManager;Lcom/narvii/paging/source/DataSource;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;Lcom/narvii/model/User;Landroid/view/View;IZLcom/narvii/story/StoryListVisibleChangeListener;)Lcom/narvii/story/StoryListFragment;

    goto :goto_2

    :cond_4
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_5
    new-instance v1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    move-object v2, p3

    .line 193
    invoke-virtual {v1, p3}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->topicId(I)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    const-string v2, "discover-player"

    .line 195
    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    move-object/from16 v2, p4

    .line 196
    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedUser(Lcom/narvii/model/User;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    .line 197
    new-instance v2, Lcom/narvii/story/StoryHelper;

    iget-object v3, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v2, v3}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 198
    invoke-virtual {v2, p1, v1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    or-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x2

    .line 293
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->resetEmptyList()V

    .line 283
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->resetList()V

    .line 288
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public setFirstPageRequestFinished()V
    .locals 2

    .line 311
    invoke-super {p0}, Lcom/narvii/story/base/StoryListAdapter;->setFirstPageRequestFinished()V

    .line 312
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 313
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v1, :cond_0

    .line 314
    iget-boolean v1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->firstSendRequest:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->getPlayerPos()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->resetVideoView()V

    :cond_0
    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->firstSendRequest:Z

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    const-string v0, "serialRequestParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->moduleDisplayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->showPageLoadingStatus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
