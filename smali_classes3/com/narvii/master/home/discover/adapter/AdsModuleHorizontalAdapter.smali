.class public Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;
.super Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;
.source "AdsModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerViewHolder;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;,
        Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdsModuleHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdsModuleHorizontalAdapter.kt\ncom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter\n*L\n1#1,306:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;

.field private static final MAX_VALUE:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "AdsModuleHorizontalAdapter"


# instance fields
.field private adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

.field private allItemCount:I

.field private final dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

.field private final innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

.field private innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

.field private innerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;"
        }
    .end annotation
.end field

.field private onPageResponseListener:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 41
    new-instance p3, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$dataSetChangeListener$1;

    invoke-direct {p3, p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$dataSetChangeListener$1;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 49
    new-instance p3, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    invoke-direct {p3, p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    .line 56
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 66
    new-instance p1, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;

    const-class p3, Lcom/narvii/ad/AdsModuleItem;

    const v0, 0x7f0903dc

    invoke-direct {p1, p2, p3, v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$ipc$1;-><init>(Lcom/narvii/topic/model/discover/ContentModule;Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method

.method public static final synthetic access$getAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/widgets/AdsModuleIndicator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    return-object p0
.end method

.method public static final synthetic access$getAllItemCount$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    return p0
.end method

.method public static final synthetic access$getDataSetChangeListener$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getInnerAdapter$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    return-object p0
.end method

.method public static final synthetic access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "innerDataSource"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getInnerRecyclerView$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$setAdsModuleIndicator$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/widgets/AdsModuleIndicator;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    return-void
.end method

.method public static final synthetic access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    return-void
.end method

.method public static final synthetic access$setDataSetEventDispatcher$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/util/EventDispatcher;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method public static final synthetic access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    return-void
.end method

.method public static final synthetic access$setInnerRecyclerView$p(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public static final synthetic access$updateListAndIndicator(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->updateListAndIndicator()V

    return-void
.end method

.method private final updateListAndIndicator()V
    .locals 5

    .line 277
    iget v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 278
    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v2, v0}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->setIndexCount(I)V

    .line 280
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v2, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    const-string v4, "null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView"

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 283
    check-cast v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-virtual {v0, v3}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    const/16 v2, 0x7530

    iget v3, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    div-int/2addr v2, v3

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v2, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_4

    .line 287
    check-cast v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    goto :goto_1

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public geSubResponseSize()I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2

    .line 91
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
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return v1
.end method

.method public getItemLayout()I
    .locals 1

    const v0, 0x7f0b0044

    return v0
.end method

.method public final getOnPageResponseListener()Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->onPageResponseListener:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    return-object v0
.end method

.method public onAttach()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 85
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerAdapter:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$InnerAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 86
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 107
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 108
    iget p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->allItemCount:I

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->adsModuleIndicator:Lcom/narvii/master/home/widgets/AdsModuleIndicator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/master/home/widgets/AdsModuleIndicator;->getIndexCount()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->updateListAndIndicator()V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance p2, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026le_layout, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$AdsViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDetach()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    .line 96
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v1, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 97
    check-cast v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->setAutoScroll(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.widget.AutoScrollHorizontalRecyclerView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->innerDataSource:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$DataSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setIpc(Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/ad/AdsModuleItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    return-void
.end method

.method public final setOnPageResponseListener(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->onPageResponseListener:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;

    return-void
.end method
