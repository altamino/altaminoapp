.class public final Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/topic/model/CommunityDataSourceCarrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$MoreViewHolder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;
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

.field private final dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hide:Z

.field private final innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->Companion:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$Companion;

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
    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$ipc$1;

    .line 20
    .line 21
    const-class p3, Lcom/narvii/model/Community;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, p0, p3}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$ipc$1;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Ljava/lang/Class;)V

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 27
    .line 28
    new-instance p2, Lcom/narvii/topic/adapter/b;

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/narvii/topic/adapter/b;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V

    .line 32
    .line 33
    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 41
    .line 42
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 48
    return-void
.end method

.method public static final synthetic access$getDataSetChangeListener$p(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 3
    return-object p0
.end method

.method private static final dataSetChangeListener$lambda$2(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/topic/adapter/a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/a;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method

.method private static final dataSetChangeListener$lambda$2$lambda$1(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/topic/adapter/c;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/narvii/topic/adapter/c;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 20
    return-void
.end method

.method private static final dataSetChangeListener$lambda$2$lambda$1$lambda$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "obj"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 9
    return-void
.end method

.method public static synthetic g(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->dataSetChangeListener$lambda$2(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->dataSetChangeListener$lambda$2$lambda$1$lambda$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->dataSetChangeListener$lambda$2$lambda$1(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)V

    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    .line 19
    :goto_0
    instance-of v2, v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    move-object v1, v0

    .line 23
    .line 24
    check-cast v1, Ljava/util/ArrayList;

    .line 25
    :cond_1
    return-object v1
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getInnerAdapter()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    return-object v0
.end method

.method public final getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "innerDataSource"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
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

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

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
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->hide:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_1
    return v1
.end method

.method public getLastPageToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->get_nextPageToken()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isEmpty()Z

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
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->isSubRequestFinish()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isListShow()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isLoading()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

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
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getErrorMessage()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
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
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getItem(I)Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

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
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$CommunityViewHolder;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Landroid/view/View;)V

    .line 30
    return-object p2
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    const-string v1, "delete"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    instance-of v0, p1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v0, "null cannot be cast to non-null type com.narvii.topic.model.discover.ContentModule"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    .line 31
    move-result p1

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    const/4 p1, 0x1

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->hide:Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getItemCount()I

    .line 58
    move-result p1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 61
    .line 62
    instance-of v1, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->getAdapterRealPos(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 74
    :cond_1
    return-void
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
    .line 5
    iget-object p2, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1, v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 12
    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    .line 6
    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    .line 9
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    .line 9
    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final setInnerDataSource(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    return-void
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

    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

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
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 11
    return-void
.end method
