.class public final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;
.super Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;
.source "TopicModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;,
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;

.field private static final pageSize:I = 0x19


# instance fields
.field private final dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

.field private final innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

.field private innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation
.end field

.field private final itemClickListener:Lcom/narvii/list/ObjectItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 32
    new-instance p3, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;

    invoke-direct {p3, p0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$dataSetChangeListener$1;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 39
    new-instance p3, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    .line 44
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 54
    new-instance p1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$ipc$1;

    const-class p3, Lcom/narvii/model/story/StoryTopic;

    const v0, 0x7f0903dc

    invoke-direct {p1, p2, p3, v0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$ipc$1;-><init>(Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 64
    new-instance p1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$itemClickListener$1;

    invoke-direct {p1, p0}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$itemClickListener$1;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public static final synthetic access$getDataSetChangeListener$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getInnerAdapter$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    return-object p0
.end method

.method public static final synthetic access$setDataSetEventDispatcher$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/util/EventDispatcher;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method public static final synthetic access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "contentModule.moduleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 54
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public final getItemClickListener$Amino_bundle()Lcom/narvii/list/ObjectItemClickListener;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return v1
.end method

.method public onAttach()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 78
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 80
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 89
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance p2, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b03bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026cler_view, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$TopicViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public responseSize()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method
