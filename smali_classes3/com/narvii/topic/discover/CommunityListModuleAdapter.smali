.class public final Lcom/narvii/topic/discover/CommunityListModuleAdapter;
.super Lcom/narvii/community/adapter/CommunityListAdapter;
.source "CommunityListModuleAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/ModuleItemCountHost;
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/topic/model/CommunityDataSourceCarrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;,
        Lcom/narvii/topic/discover/CommunityListModuleAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommunityListModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommunityListModuleAdapter.kt\ncom/narvii/topic/discover/CommunityListModuleAdapter\n*L\n1#1,200:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/discover/CommunityListModuleAdapter$Companion;

.field private static final MAX_SIZE:I = 0x6


# instance fields
.field private allItemCount:I

.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private hide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/discover/CommunityListModuleAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->Companion:Lcom/narvii/topic/discover/CommunityListModuleAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/community/adapter/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 166
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-void
.end method

.method public static final synthetic access$getAllItemCount$p(Lcom/narvii/topic/discover/CommunityListModuleAdapter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->allItemCount:I

    return p0
.end method

.method public static final synthetic access$setAllItemCount$p(Lcom/narvii/topic/discover/CommunityListModuleAdapter;I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->allItemCount:I

    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->allItemCount:I

    return v0
.end method

.method public allowVisitorMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0b03b2

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
            "Lcom/narvii/model/Community;",
            "Lcom/narvii/community/search/SearchCommunityListResponse;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/topic/discover/CommunityListModuleAdapter$DataSource;-><init>(Lcom/narvii/topic/discover/CommunityListModuleAdapter;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public geSubResponseSize()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "contentModule.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public getCommunityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/Community;
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->hide:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 124
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    return v0

    .line 126
    :cond_1
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getLastPageToken()Ljava/lang/String;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v0, Lcom/narvii/paging/source/PageDataSource;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/paging/source/PageDataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->get_nextPageToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.paging.source.PageDataSource<*, *>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isEnd()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/narvii/topic/ModuleDisplayConfig;->isPagingLoad:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->isRequestEnd()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->isSubRequestFinish()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerialRequest"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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

    .line 43
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 44
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;

    const-class v1, Lcom/narvii/model/Community;

    iget-object v2, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;-><init>(Ljava/lang/Class;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 60
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "delete"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 61
    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0}, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->getItemCount()I

    move-result p1

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->hide:Z

    .line 64
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getParentAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    .line 65
    :cond_1
    instance-of v1, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz v1, :cond_2

    .line 66
    check-cast v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->getAdapterRealPos(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)I

    move-result v0

    .line 67
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_2
    return-void

    .line 61
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    or-int/lit8 p1, p1, 0x1

    .line 52
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->resetEmptyList()V

    .line 143
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->resetList()V

    .line 149
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    const-string v0, "serialRequestParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/narvii/topic/discover/CommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
