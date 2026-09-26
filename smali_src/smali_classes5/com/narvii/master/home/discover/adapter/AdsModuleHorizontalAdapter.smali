.class public Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.super Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerViewHolder;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_VALUE:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "AdsModuleHorizontalAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private allItemCount:I

.field private final dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

.field private innerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onPageResponseListener:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;

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
    new-instance p3, Lcom/narvii/master/home/discover/adapter/b;

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, p0}, Lcom/narvii/master/home/discover/adapter/b;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    .line 19
    .line 20
    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 21
    .line 22
    new-instance p3, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    .line 23
    .line 24
    .line 25
    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 26
    .line 27
    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 31
    .line 32
    new-instance p1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;

    .line 33
    .line 34
    const-class p3, Lcom/narvii/ad/AdsModuleItem;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;-><init>(Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/Class;)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 40
    return-void
.end method

.method public static final synthetic access$getAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/widgets/AdsModuleIndicator;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDataSetChangeListener$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInnerAdapter$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/widgets/AdsModuleIndicator;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 3
    return-void
.end method

.method public static final synthetic access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    .line 3
    return-void
.end method

.method public static final synthetic access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    .line 3
    return-void
.end method

.method public static final synthetic access$setInnerRecyclerView$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    return-void
.end method

.method public static final synthetic access$updateListAndIndicator(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->updateListAndIndicator()V

    .line 4
    return-void
.end method

.method private static final dataSetChangeListener$lambda$2(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
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
    new-instance v0, Lcom/narvii/master/home/discover/adapter/c;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/adapter/c;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method private static final dataSetChangeListener$lambda$2$lambda$1(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
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
    new-instance v0, Lcom/narvii/master/home/discover/adapter/a;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/master/home/discover/adapter/a;-><init>()V

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

.method public static synthetic g(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->dataSetChangeListener$lambda$2$lambda$1(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->dataSetChangeListener$lambda$2$lambda$1$lambda$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->dataSetChangeListener$lambda$2(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    return-void
.end method

.method private final updateListAndIndicator()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-le v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->setIndexCount(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    instance-of v2, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 21
    .line 22
    const-string v4, "null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView"

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget v2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    .line 39
    .line 40
    const/16 v3, 0x7530

    .line 41
    div-int/2addr v3, v2

    .line 42
    mul-int/2addr v3, v2

    .line 43
    .line 44
    div-int/lit8 v3, v3, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    instance-of v2, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    check-cast v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    const/16 v1, 0x8

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "innerDataSource"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
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
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "innerDataSource"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_1
    return v1
.end method

.method public getItemLayout()I
    .locals 1

    const v0, 0x7f0d0048

    return v0
.end method

.method public final getOnPageResponseListener()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->onPageResponseListener:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    return-object v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

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
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->getIndexCount()I

    .line 25
    move-result p1

    .line 26
    .line 27
    if-ne p2, p1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->updateListAndIndicator()V

    .line 32
    :goto_0
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
    new-instance p2, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

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
    const v1, 0x7f0d0049

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
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method

.method public onDetach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    .line 21
    :cond_0
    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "innerDataSource"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
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
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method

.method public final setOnPageResponseListener(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;)V
    .locals 0
    .param p1    # Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->onPageResponseListener:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    return-void
.end method
