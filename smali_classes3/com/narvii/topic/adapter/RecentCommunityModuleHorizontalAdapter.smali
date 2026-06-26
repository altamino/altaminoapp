.class public final Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "RecentCommunityModuleHorizontalAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;,
        Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentCommunityModuleHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentCommunityModuleHorizontalAdapter.kt\ncom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter\n*L\n1#1,189:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$Companion;

.field private static final FAKE_COMMUNITY_ID:I = -0x64

.field private static final MORE_SIZE_LIMIT:I = 0x14

.field private static final PAGE_SIZE:I = 0x19

.field private static final TYPE_COMMUNITY:I = 0x0

.field private static final TYPE_MORE:I = 0x1


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

.field private final innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private showList:Z

.field private startRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->Companion:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 39
    new-instance p2, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$ipc$1;

    const-class p3, Lcom/narvii/model/Community;

    const v0, 0x7f0903dc

    invoke-direct {p2, p3, v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$ipc$1;-><init>(Ljava/lang/Class;I)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 47
    new-instance p2, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p2, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 49
    new-instance p2, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    .line 50
    new-instance p1, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;

    invoke-direct {p1, p2, p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$$special$$inlined$apply$lambda$1;-><init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)V

    invoke-virtual {p2, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->setRefreshListener(Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;)V

    .line 49
    iput-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    return-void
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$setDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;Lcom/narvii/util/EventDispatcher;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "contentModule.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInnerAdapter()Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    return-object v0
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

    .line 39
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    const-string v0, "result"

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getShowList()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->showList:Z

    return v0
.end method

.method public final getStartRefresh()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->startRefresh:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->isSubRequestFinish()Z

    move-result v0

    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isReadyToRequest()Z
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

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

    .line 167
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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

    .line 63
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 64
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->isReadyToRequest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->startRefresh:Z

    .line 69
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->onAttach()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->getItem(I)Ljava/lang/Object;

    .line 81
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b042a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$RecyclerViewHolder;-><init>(Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    const/4 p2, 0x1

    .line 112
    iput-boolean p2, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->startRefresh:Z

    .line 113
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    or-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter$InnerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .line 39
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    const-string v0, "serialRequestParent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method

.method public final setShowList(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->showList:Z

    return-void
.end method

.method public final setStartRefresh(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/RecentCommunityModuleHorizontalAdapter;->startRefresh:Z

    return-void
.end method
