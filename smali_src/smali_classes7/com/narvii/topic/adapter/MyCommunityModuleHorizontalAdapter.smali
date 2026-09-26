.class public final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$Companion;,
        Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;,
        Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FAKE_COMMUNITY_ID:I = -0x64

.field private static final MORE_SIZE_LIMIT:I = 0x14

.field private static final PAGE_SIZE:I = 0x19

.field private static final TYPE_COMMUNITY:I = 0x0

.field private static final TYPE_MORE:I = 0x1


# instance fields
.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showList:Z

.field private startRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->Companion:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "contentModule"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;

    .line 20
    .line 21
    const-class p3, Lcom/narvii/model/Community;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p0, p3}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$ipc$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Ljava/lang/Class;)V

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 27
    .line 28
    new-instance p2, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 32
    .line 33
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    .line 39
    .line 40
    new-instance p1, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p0, p2}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$innerAdapter$1$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->setRefreshListener(Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;)V

    .line 47
    .line 48
    iput-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 49
    return-void
.end method

.method public static final synthetic access$getContext$p$s-1726681790(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p$s-1726681790(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$jumpToMyCommunityPage(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->jumpToMyCommunityPage(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method

.method private final jumpToMyCommunityPage(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/MasterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/master/MasterHelper;->jumpToMyCommunityPage()V

    .line 9
    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "moduleType"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getErrorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getInnerAdapter()Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 15
    return-object p1
.end method

.method public final getShowList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->showList:Z

    return v0
.end method

.method public final getStartRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->startRefresh:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->isSubRequestFinish()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v3, "check ready "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, ", result "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    const-string v2, "SerialRequest"

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getErrorMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->isReadyToRequest()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->startRefresh:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onAttach()V

    .line 24
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->getItem(I)Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 16
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0d03f1

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$RecyclerViewHolder;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V

    .line 30
    return-object p2
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->startRefresh:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 9
    or-int/2addr p1, p2

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 14
    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    .line 6
    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$InnerAdapter;->getItemCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V
    .locals 1
    .param p1    # Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestParent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "serialRequestParent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 11
    return-void
.end method

.method public final setShowList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->showList:Z

    return-void
.end method

.method public final setStartRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;->startRefresh:Z

    return-void
.end method
