.class public Lcom/narvii/master/home/discover/DiscoverFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "DiscoverFragment.kt"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/master/home/story/CommentSheetDisplayHost;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;,
        Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/narvii/master/home/discover/DiscoverFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,616:1\n673#2:617\n746#2,2:618\n1596#2,3:620\n*E\n*S KotlinDebug\n*F\n+ 1 DiscoverFragment.kt\ncom/narvii/master/home/discover/DiscoverFragment\n*L\n412#1:617\n412#1,2:618\n445#1,3:620\n*E\n"
.end annotation


# instance fields
.field private final AUTO_REFRESH_PAUSE_THRESHOLD:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private final bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

.field private contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;

.field private errorMsg:Ljava/lang/String;

.field private immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

.field private lastPauseTime:J

.field private final loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

.field private mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

.field private moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

.field private moduleConfigRequestFinished:Z

.field private needRefreshWhenActive:Z

.field private final receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 62
    new-instance v0, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    .line 63
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    const v0, 0x124f80

    .line 65
    iput v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->AUTO_REFRESH_PAUSE_THRESHOLD:I

    .line 70
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    return-void
.end method

.method private final checkIfRefresh()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->AUTO_REFRESH_PAUSE_THRESHOLD:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 147
    invoke-static {p0, v2, v0, v1, v2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final getImmersiveHeaderAdapter(Lcom/narvii/topic/model/discover/ContentModule;Ljava/util/List;)Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
            ">;)",
            "Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;"
        }
    .end annotation

    .line 512
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    const-string v0, "BannerSizeTop"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 513
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 514
    instance-of v1, p2, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    if-eqz v1, :cond_0

    .line 515
    check-cast p2, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    return-object p2

    :cond_1
    return-object v0
.end method

.method private final recordPauseTime()V
    .locals 2

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    return-void
.end method

.method public static synthetic sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 367
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V

    return-void

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendModuleConfigRequest"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final buildModuleSection()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/Triple<",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 529
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 530
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    if-eqz v4, :cond_3

    .line 531
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Triple;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    .line 534
    new-instance v5, Lkotlin/Triple;

    invoke-virtual {v4}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 538
    :cond_1
    new-instance v6, Lkotlin/Triple;

    invoke-virtual {v5}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v5, Lkotlin/Triple;

    invoke-virtual {v4}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 531
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.topic.model.discover.ModuleAnchorAdapter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final cleanDataSourceInterceptor()V
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 582
    instance-of v1, v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 583
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    goto :goto_1

    .line 584
    :cond_0
    instance-of v1, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    if-eqz v1, :cond_3

    .line 585
    check-cast v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    iget-object v0, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 586
    instance-of v3, v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v3, :cond_2

    .line 587
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    goto :goto_0

    .line 588
    :cond_2
    instance-of v3, v1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    if-eqz v3, :cond_1

    .line 589
    check-cast v1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 590
    instance-of v3, v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    if-eqz v3, :cond_1

    .line 591
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 123
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 124
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final firstModuleIsHeaderAds(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "moduleList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 524
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    const-string v0, "BannerSizeTop"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final getBottomLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getBottomOffsetAdapter()Lcom/narvii/master/widget/MasterBottomOffsetAdapter;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    return-object v0
.end method

.method public final getContentModuleListResponse()Lcom/narvii/topic/model/discover/ContentModuleListResponse;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getImmersiveHeaderAdapter()Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    return-object v0
.end method

.method public final getLastPauseTime()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    return-wide v0
.end method

.method public final getLoadingAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    return-object v0
.end method

.method public final getMergerAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    return-object v0
.end method

.method public final getModuleConfigRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final getModuleConfigRequestFinished()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequestFinished:Z

    return v0
.end method

.method public final getNeedRefreshWhenActive()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ForYou"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "home/discover/content-modules"

    return-object v0
.end method

.method public final handleModuleConfig()V
    .locals 19

    move-object/from16 v6, p0

    .line 410
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->contentModuleList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 617
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/topic/model/discover/ContentModule;

    .line 412
    invoke-virtual {v2}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    :cond_2
    if-eqz v8, :cond_1

    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 416
    :cond_3
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_16

    .line 420
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->buildModuleSection()Ljava/util/ArrayList;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "oldModuleSections.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 423
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v10, "BuildModule"

    if-eqz v3, :cond_c

    .line 424
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "iterator.next()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/Triple;

    .line 425
    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/topic/model/discover/ContentModule;

    invoke-virtual {v6, v7, v4}, Lcom/narvii/master/home/discover/DiscoverFragment;->isInModuleList(Ljava/util/List;Lcom/narvii/topic/model/discover/ContentModule;)Z

    move-result v4

    const-string v5, " to "

    const-string v12, "remove adapter from "

    if-nez v4, :cond_7

    .line 426
    iget-object v4, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v4, v11, v13}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->removeCellAtIndex(II)V

    .line 427
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 429
    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    :goto_3
    sub-int/2addr v2, v3

    goto/16 :goto_2

    .line 431
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v9

    if-ne v4, v13, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 432
    :goto_4
    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/topic/model/discover/ContentModule;

    if-eqz v13, :cond_9

    iget-object v11, v13, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    invoke-static {v7, v11}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v9

    if-ne v11, v13, :cond_a

    const/4 v11, 0x1

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    xor-int/2addr v4, v11

    if-eqz v4, :cond_5

    .line 435
    iget-object v4, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual {v4, v11, v13}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->removeCellAtIndex(II)V

    .line 436
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", as last one module change"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 438
    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto/16 :goto_3

    .line 442
    :cond_c
    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v8, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 443
    new-instance v13, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v8, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 444
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v8, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 621
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v16, v0, 0x1

    if-ltz v0, :cond_1e

    check-cast v1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->buildModuleSection()Ljava/util/ArrayList;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Triple;

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_f

    .line 448
    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existed, just refresh,  module: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v0, :cond_e

    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->refreshCellAtIndex(II)V

    .line 451
    :cond_e
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v18, v7

    goto/16 :goto_14

    :cond_f
    const-string v2, "current module not exist, need to add to current position"

    .line 453
    invoke-static {v10, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v2, Lcom/narvii/topic/ModuleDisplayConfig;

    const/4 v3, 0x2

    if-le v0, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    if-ne v0, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    invoke-direct {v2, v3, v4}, Lcom/narvii/topic/ModuleDisplayConfig;-><init>(ZZ)V

    if-nez v0, :cond_12

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 455
    :goto_b
    iput-boolean v3, v2, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    .line 456
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_13

    const/4 v3, 0x1

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    :goto_c
    iput-boolean v3, v2, Lcom/narvii/topic/ModuleDisplayConfig;->showTitle:Z

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->showNoStoriesYet()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1}, Lcom/narvii/topic/model/discover/ContentModule;->isStoryTopic()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    :goto_d
    iput-boolean v3, v2, Lcom/narvii/topic/ModuleDisplayConfig;->showNoStoriesYet:Z

    .line 458
    invoke-virtual {v1}, Lcom/narvii/topic/model/discover/ContentModule;->isStory()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v3, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v3, :cond_15

    .line 459
    iput-boolean v9, v2, Lcom/narvii/topic/ModuleDisplayConfig;->isTopStoryModule:Z

    .line 460
    iput-boolean v9, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 462
    :cond_15
    sget-object v3, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    invoke-virtual {v3, v0, v6, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->getModuleAdapterList(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)Ljava/util/List;

    move-result-object v5

    .line 463
    iget v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v3, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v3, :cond_16

    iget-object v3, v3, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_e

    :cond_16
    const/4 v3, 0x0

    :goto_e
    if-le v2, v3, :cond_17

    const/4 v2, -0x1

    const/4 v4, -0x1

    goto :goto_f

    .line 464
    :cond_17
    iget v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move v4, v2

    .line 465
    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not existed, add adapter list at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for module "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " when current size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v3, :cond_18

    iget-object v3, v3, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_10

    :cond_18
    const/4 v3, 0x0

    .line 466
    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v10, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_19

    .line 469
    invoke-direct {v6, v1, v5}, Lcom/narvii/master/home/discover/DiscoverFragment;->getImmersiveHeaderAdapter(Lcom/narvii/topic/model/discover/ContentModule;Ljava/util/List;)Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    move-result-object v0

    iput-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    .line 472
    :cond_19
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 473
    instance-of v1, v0, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    if-eqz v1, :cond_1a

    invoke-virtual {v6, v7}, Lcom/narvii/master/home/discover/DiscoverFragment;->firstModuleIsHeaderAds(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 474
    move-object v3, v0

    check-cast v3, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    new-instance v2, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v13

    move-object v9, v3

    move-object v3, v7

    move v11, v4

    move-object v4, v14

    move-object/from16 v18, v7

    move-object v7, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$$inlined$forEachIndexed$lambda$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v9, v8}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->setOnPageResponseListener(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;)V

    goto :goto_12

    :cond_1a
    move v11, v4

    move-object/from16 v18, v7

    move-object v7, v5

    :goto_12
    move-object v5, v7

    move v4, v11

    move-object/from16 v7, v18

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_11

    :cond_1b
    move v11, v4

    move-object/from16 v18, v7

    move-object v7, v5

    .line 486
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v11, v7}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapterAtIndex(ILjava/util/List;)V

    .line 487
    :cond_1c
    iget v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 488
    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 489
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 490
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    goto :goto_13

    :cond_1d
    :goto_14
    move/from16 v0, v16

    move-object/from16 v7, v18

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_7

    .line 621
    :cond_1e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_1f
    const/4 v0, 0x0

    .line 495
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_20

    .line 496
    iget v2, v13, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v3, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->removeCellAtIndex(II)V

    .line 498
    :cond_20
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_21

    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    iget-object v2, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    :cond_21
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_22

    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    goto :goto_15

    :cond_22
    move-object v11, v0

    :goto_15
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_23

    .line 500
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_23

    iget-object v2, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 502
    :cond_23
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_24

    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    if-eqz v1, :cond_24

    iget-object v2, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 503
    :cond_24
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_25

    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    if-eqz v1, :cond_25

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-object v0, v11

    :cond_25
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_26

    .line 504
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v0, :cond_26

    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 508
    :cond_26
    :goto_16
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dispatchDataSetChange()V

    :cond_27
    return-void
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 570
    new-instance v0, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/DiscoverModuleVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isInModuleList(Ljava/util/List;Lcom/narvii/topic/model/discover/ContentModule;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ">;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 553
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 556
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/topic/model/discover/ContentModule;

    .line 557
    invoke-static {v2, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 129
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    if-eqz p1, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 132
    invoke-static {p0, v2, v0, v1, v2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->recordPauseTime()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->checkIfRefresh()V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 113
    invoke-static {p0, p1, v0, v1, p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "story_detail"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    instance-of v1, v0, Lcom/narvii/story/StoryListFragment;

    if-eqz v1, :cond_0

    .line 355
    check-cast v0, Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.INTEREST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 88
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.attribute.REFRESH_DISCOVER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 566
    invoke-static {p0, p1, v0, v1, p1}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    const-string v0, "key_topic_id"

    .line 601
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 605
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    instance-of v0, v0, Lcom/narvii/topic/TopicNotificationStub;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/topic/TopicNotificationStub;

    iget-object p1, p1, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    const-string v0, "bookmark_state_change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Content Module: Need refresh as bookmarked topic changed "

    .line 607
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 608
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    goto :goto_1

    .line 606
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b049c

    .line 93
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 94
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-static {p0, p1}, Lcom/narvii/topic/CoordinateFragmentHelperKt;->setPaddingForChildFragmentInTopic(Lcom/narvii/app/NVFragment;Lcom/narvii/paging/state/PageStatusView;)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final sendModuleConfigRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    const-string v0, "api"

    .line 372
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 373
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "v"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    .line 374
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dispatchDataSetChange()V

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;

    const-class v3, Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZLjava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final setBottomLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setBottomSheetLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setContentModuleListResponse(Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    return-void
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public final setImmersiveHeaderAdapter(Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    return-void
.end method

.method public final setLastPauseTime(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    return-void
.end method

.method public final setMergerAdapter(Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    return-void
.end method

.method public final setModuleConfigRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final setModuleConfigRequestFinished(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequestFinished:Z

    return-void
.end method

.method public final setNeedRefreshWhenActive(Z)V
    .locals 0

    .line 598
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    return-void
.end method

.method public showNoStoriesYet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateViews()V
    .locals 7

    .line 337
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 338
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 340
    iget-object v2, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 341
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 342
    instance-of v5, v3, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v3}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 347
    :goto_1
    iget-object v3, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isEmpty()Z

    move-result v3

    if-ne v3, v1, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 348
    :goto_2
    iget-object v5, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isLoading()Z

    move-result v5

    if-ne v5, v1, :cond_5

    iget-object v5, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isListShow()Z

    move-result v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 349
    :goto_4
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    const-string v6, "pageStatusView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_7

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    const/4 v4, 0x4

    :cond_7
    :goto_5
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
