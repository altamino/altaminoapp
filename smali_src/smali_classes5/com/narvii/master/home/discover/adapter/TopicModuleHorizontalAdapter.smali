.class public final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;
.super Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;,
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final pageSize:I = 0x19


# instance fields
.field private final dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemClickListener:Lcom/narvii/list/ObjectItemClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 14
    .line 15
    new-instance p3, Lcom/narvii/master/home/discover/adapter/p;

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, p0}, Lcom/narvii/master/home/discover/adapter/p;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    .line 19
    .line 20
    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 21
    .line 22
    new-instance p3, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    .line 23
    .line 24
    .line 25
    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 26
    .line 27
    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$ipc$1;

    .line 33
    .line 34
    const-class p3, Lcom/narvii/model/story/StoryTopic;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$ipc$1;-><init>(Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/Class;)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/master/home/discover/adapter/q;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/narvii/master/home/discover/adapter/q;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    .line 45
    .line 46
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    .line 47
    return-void
.end method

.method public static final synthetic access$getDataSetChangeListener$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInnerAdapter$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    .line 3
    return-void
.end method

.method private static final dataSetChangeListener$lambda$2(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/master/home/discover/adapter/r;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/adapter/r;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method private static final dataSetChangeListener$lambda$2$lambda$1(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/master/home/discover/adapter/s;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/master/home/discover/adapter/s;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
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

.method public static synthetic g(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->dataSetChangeListener$lambda$2$lambda$1(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->dataSetChangeListener$lambda$2(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->dataSetChangeListener$lambda$2$lambda$1$lambda$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method private static final itemClickListener$lambda$3(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    .line 21
    :goto_0
    return-void
.end method

.method public static synthetic j(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->itemClickListener$lambda$3(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/model/NVObject;)V

    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "moduleType"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public final getIpc()Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public final getItemClickListener$Amino_bundle()Lcom/narvii/list/ObjectItemClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    return v1
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 21
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
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 16
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
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
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0d03f1

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method

.method public responseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
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
            "Lcom/narvii/model/story/StoryTopic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method
