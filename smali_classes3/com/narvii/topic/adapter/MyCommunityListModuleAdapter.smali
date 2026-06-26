.class public final Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;
.super Lcom/narvii/topic/adapter/MyCommunityListAdapter;
.source "MyCommunityListModuleAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/ModuleItemCountHost;
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMyCommunityListModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCommunityListModuleAdapter.kt\ncom/narvii/topic/adapter/MyCommunityListModuleAdapter\n*L\n1#1,142:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter$Companion;

.field private static final MAX_SIZE:I = 0x6


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private showList:Z

.field private startRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->Companion:Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 26
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0b0356

    return v0
.end method

.method public firstRefreshList()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->isReadyToRequest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    .line 38
    invoke-super {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->firstRefreshList()V

    return-void
.end method

.method public geSubResponseSize()I
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "contentModule.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/Community;
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->showList:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getShowList()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->showList:Z

    return v0
.end method

.method public final getStartRefresh()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->isSubRequestFinish()Z

    move-result v0

    return v0
.end method

.method public isReadyToRequest()Z
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerialRequest"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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

.method public loadFailed()V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->showList:Z

    .line 45
    invoke-super {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFailed()V

    .line 46
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    :cond_0
    return-void
.end method

.method public loadFinish()V
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->showList:Z

    .line 54
    invoke-super {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFinish()V

    .line 55
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V

    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onAttach()V

    .line 30
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;

    const-class v1, Lcom/narvii/model/Community;

    iget-object v2, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-direct {v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;-><init>(Ljava/lang/Class;Lcom/narvii/topic/model/discover/ContentModule;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onEnterCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    or-int/2addr p1, v0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 90
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 96
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    const-string v0, "serialRequestParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method

.method public final setShowList(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->showList:Z

    return-void
.end method

.method public final setStartRefresh(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/MyCommunityListModuleAdapter;->startRefresh:Z

    return-void
.end method
