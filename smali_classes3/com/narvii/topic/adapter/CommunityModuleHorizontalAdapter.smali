.class public final Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "CommunityModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/topic/model/CommunityDataSourceCarrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$MoreViewHolder;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;

.field private static final FAKE_COMMUNITY_ID:I = -0x64

.field private static final MORE_SIZE_LIMIT:I = 0x14

.field private static final PAGE_SIZE:I = 0x19

.field private static final TYPE_COMMUNITY:I = 0x0

.field private static final TYPE_MORE:I = 0x1


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;

.field private final dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private hide:Z

.field private final innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

.field public innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->Companion:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 62
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$ipc$1;

    const-class p3, Lcom/narvii/model/Community;

    const v0, 0x7f0903dc

    invoke-direct {p2, p0, p3, v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$ipc$1;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Ljava/lang/Class;I)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 73
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;

    invoke-direct {p2, p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$dataSetChangeListener$1;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 80
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 331
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-void
.end method

.method public static final synthetic access$getDataSetChangeListener$p(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$setDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Lcom/narvii/util/EventDispatcher;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "contentModule.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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

    .line 361
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object v0

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

    :cond_2
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInnerAdapter()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    return-object v0
.end method

.method public final getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getIpc()Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 297
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    const-string v0, "result"

    .line 301
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 125
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->hide:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    return v1
.end method

.method public getLastPageToken()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->get_nextPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->isSubRequestFinish()Z

    move-result v0

    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isListShow()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isReadyToRequest()Z
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v2, v2, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SerialRequest"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 85
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 86
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getItem(I)Ljava/lang/Object;

    .line 100
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b03bb

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delete"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 136
    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->hide:Z

    .line 138
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getItemCount()I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 140
    instance-of v1, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz v1, :cond_1

    .line 141
    check-cast v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-virtual {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->getAdapterRealPos(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)I

    move-result v0

    .line 142
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_1
    return-void

    .line 136
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 105
    iget-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    or-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 305
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 306
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 310
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 311
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public responseSize()I
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setInnerDataSource(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    return-void
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    const-string v0, "serialRequestParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method
