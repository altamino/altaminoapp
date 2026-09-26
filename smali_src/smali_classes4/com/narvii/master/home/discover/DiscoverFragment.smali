.class public Lcom/narvii/master/home/discover/DiscoverFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/master/home/story/CommentSheetDisplayHost;
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;,
        Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/narvii/master/home/discover/DiscoverFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,697:1\n766#2:698\n857#2,2:699\n1864#2,3:701\n*S KotlinDebug\n*F\n+ 1 DiscoverFragment.kt\ncom/narvii/master/home/discover/DiscoverFragment\n*L\n436#1:698\n436#1:699,2\n481#1:701,3\n*E\n"
.end annotation


# instance fields
.field private bottomLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastPauseTime:J

.field private final loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleConfigRequestFinished:Z

.field private needRefreshWhenActive:Z

.field private final receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    .line 25
    return-void
.end method

.method private final buildModuleSection()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lw7/z<",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    :goto_0
    if-ge v3, v2, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    instance-of v4, v4, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    const-string v5, "null cannot be cast to non-null type com.narvii.topic.model.discover.ModuleAnchorAdapter"

    .line 35
    .line 36
    .line 37
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    check-cast v4, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v5

    .line 44
    .line 45
    if-lez v5, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    check-cast v5, Lw7/z;

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const/4 v5, 0x0

    .line 54
    .line 55
    :goto_1
    if-nez v5, :cond_1

    .line 56
    .line 57
    new-instance v5, Lw7/z;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v7

    .line 70
    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v7

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v4, v6, v7}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_1
    new-instance v6, Lw7/z;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Lw7/z;->d()Ljava/lang/Object;

    .line 86
    move-result-object v7

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Lw7/z;->e()Ljava/lang/Object;

    .line 90
    move-result-object v8

    .line 91
    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v9

    .line 95
    .line 96
    .line 97
    invoke-direct {v6, v7, v8, v9}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    new-instance v5, Lw7/z;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/narvii/topic/model/discover/ModuleAnchorAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v6

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 117
    move-result v7

    .line 118
    .line 119
    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    move-result-object v7

    .line 122
    .line 123
    .line 124
    invoke-direct {v5, v4, v6, v7}, Lw7/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    return-object v0
.end method

.method private final checkIfRefresh()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    .line 21
    .line 22
    const-wide/32 v2, 0x124f80

    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    const/4 v1, 0x2

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v2, v0, v1, v2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method private final firstModuleIsHeaderAds(Ljava/util/List;)Z
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/topic/model/discover/ContentModule;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "BannerSizeTop"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    move-result p1

    .line 16
    return p1
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

    .line 2
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->style:Ljava/lang/String;

    const-string v0, "BannerSizeTop"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 4
    instance-of v1, p2, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    if-eqz v1, :cond_0

    .line 5
    check-cast p2, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    return-object p2

    :cond_1
    return-object v0
.end method

.method private final isInModuleList(Ljava/util/List;Lcom/narvii/topic/model/discover/ContentModule;)Z
    .locals 2
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

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/topic/model/discover/ContentModule;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_3
    :goto_0
    return v1
.end method

.method private final recordPauseTime()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    .line 7
    return-void
.end method

.method public static synthetic sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_2

    .line 3
    .line 4
    and-int/lit8 p4, p3, 0x1

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: sendModuleConfigRequest"

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
.end method


# virtual methods
.method public final cleanDataSourceInterceptor()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0, v2}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    instance-of v1, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 45
    .line 46
    instance-of v3, v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 47
    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_3
    instance-of v3, v1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 67
    .line 68
    instance-of v3, v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getDataSource()Lcom/narvii/paging/source/DataSource;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/narvii/paging/source/DataSource;->setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_1
    return-void
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 11
    return-object v0
.end method

.method public final getBottomLayout()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getContentModuleListResponse()Lcom/narvii/topic/model/discover/ContentModuleListResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final getImmersiveHeaderAdapter()Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    return-object v0
.end method

.method public final getLastPauseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    return-wide v0
.end method

.method public final getMergerAdapter()Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    return-object v0
.end method

.method public final getModuleConfigRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    return-object v0
.end method

.method public final getModuleConfigRequestFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequestFinished:Z

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "discover_feed"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "home/discover/content-modules"

    return-object v0
.end method

.method public final handleModuleConfig()V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->contentModuleList:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/t;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 25
    .line 26
    new-instance v7, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    move-object v2, v1

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/topic/model/discover/ContentModule;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/topic/model/discover/ContentModule;->getDisplayStyle()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 65
    .line 66
    if-eqz v0, :cond_28

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 70
    .line 71
    goto/16 :goto_13

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->buildModuleSection()Ljava/util/ArrayList;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    const-string v2, "iterator(...)"

    .line 82
    .line 83
    .line 84
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v3

    .line 90
    const/4 v9, 0x0

    .line 91
    .line 92
    const-string v10, "BuildModule"

    .line 93
    const/4 v11, 0x1

    .line 94
    .line 95
    if-eqz v3, :cond_c

    .line 96
    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    const-string v4, "next(...)"

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    check-cast v3, Lw7/z;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lw7/z;->d()Ljava/lang/Object;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    check-cast v4, Lcom/narvii/topic/model/discover/ContentModule;

    .line 113
    .line 114
    .line 115
    invoke-direct {v6, v7, v4}, Lcom/narvii/master/home/discover/DiscoverFragment;->isInModuleList(Ljava/util/List;Lcom/narvii/topic/model/discover/ContentModule;)Z

    .line 116
    move-result v4

    .line 117
    .line 118
    const-string v5, " to "

    .line 119
    .line 120
    const-string v12, "remove adapter from "

    .line 121
    .line 122
    if-nez v4, :cond_7

    .line 123
    .line 124
    iget-object v4, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 125
    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 130
    move-result-object v9

    .line 131
    .line 132
    check-cast v9, Ljava/lang/Number;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 136
    move-result v9

    .line 137
    sub-int/2addr v9, v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lw7/z;->f()Ljava/lang/Object;

    .line 141
    move-result-object v11

    .line 142
    .line 143
    check-cast v11, Ljava/lang/Number;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 147
    move-result v11

    .line 148
    sub-int/2addr v11, v2

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v9, v11}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->removeCellAtIndex(II)V

    .line 152
    .line 153
    .line 154
    :cond_6
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Lw7/z;->f()Ljava/lang/Object;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    .line 183
    invoke-static {v10, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Lw7/z;->f()Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 191
    .line 192
    check-cast v2, Ljava/lang/Number;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 196
    move-result v2

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 200
    move-result-object v3

    .line 201
    .line 202
    check-cast v3, Ljava/lang/Number;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 206
    move-result v3

    .line 207
    :goto_2
    sub-int/2addr v2, v3

    .line 208
    goto :goto_1

    .line 209
    .line 210
    .line 211
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 212
    move-result v4

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 216
    move-result v13

    .line 217
    sub-int/2addr v13, v11

    .line 218
    .line 219
    if-ne v4, v13, :cond_8

    .line 220
    move v4, v11

    .line 221
    goto :goto_3

    .line 222
    :cond_8
    const/4 v4, 0x0

    .line 223
    .line 224
    .line 225
    :goto_3
    invoke-virtual {v3}, Lw7/z;->d()Ljava/lang/Object;

    .line 226
    move-result-object v13

    .line 227
    .line 228
    check-cast v13, Lcom/narvii/topic/model/discover/ContentModule;

    .line 229
    .line 230
    if-eqz v13, :cond_9

    .line 231
    .line 232
    iget-object v9, v13, Lcom/narvii/topic/model/discover/ContentModule;->moduleId:Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    :cond_9
    invoke-static {v7, v9}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 236
    move-result v9

    .line 237
    .line 238
    .line 239
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 240
    move-result v13

    .line 241
    sub-int/2addr v13, v11

    .line 242
    .line 243
    if-ne v9, v13, :cond_a

    .line 244
    goto :goto_4

    .line 245
    :cond_a
    const/4 v11, 0x0

    .line 246
    :goto_4
    xor-int/2addr v4, v11

    .line 247
    .line 248
    if-eqz v4, :cond_5

    .line 249
    .line 250
    iget-object v4, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 251
    .line 252
    if-eqz v4, :cond_b

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 256
    move-result-object v9

    .line 257
    .line 258
    check-cast v9, Ljava/lang/Number;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 262
    move-result v9

    .line 263
    sub-int/2addr v9, v2

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3}, Lw7/z;->f()Ljava/lang/Object;

    .line 267
    move-result-object v11

    .line 268
    .line 269
    check-cast v11, Ljava/lang/Number;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 273
    move-result v11

    .line 274
    sub-int/2addr v11, v2

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4, v9, v11}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->removeCellAtIndex(II)V

    .line 278
    .line 279
    .line 280
    :cond_b
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 281
    move-result-object v2

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3}, Lw7/z;->f()Ljava/lang/Object;

    .line 285
    move-result-object v4

    .line 286
    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    const-string v2, ", as last one module change"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v2

    .line 312
    .line 313
    .line 314
    invoke-static {v10, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Lw7/z;->f()Ljava/lang/Object;

    .line 321
    move-result-object v2

    .line 322
    .line 323
    check-cast v2, Ljava/lang/Number;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 327
    move-result v2

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3}, Lw7/z;->e()Ljava/lang/Object;

    .line 331
    move-result-object v3

    .line 332
    .line 333
    check-cast v3, Ljava/lang/Number;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 337
    move-result v3

    .line 338
    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    .line 342
    :cond_c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 343
    move-result-object v12

    .line 344
    const/4 v0, 0x0

    .line 345
    const/4 v13, 0x0

    .line 346
    const/4 v14, 0x0

    .line 347
    const/4 v15, 0x0

    .line 348
    .line 349
    .line 350
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    move-result v1

    .line 352
    .line 353
    if-eqz v1, :cond_21

    .line 354
    .line 355
    .line 356
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    move-result-object v1

    .line 358
    .line 359
    add-int/lit8 v16, v13, 0x1

    .line 360
    .line 361
    if-gez v13, :cond_d

    .line 362
    .line 363
    .line 364
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 365
    :cond_d
    move-object v5, v1

    .line 366
    .line 367
    check-cast v5, Lcom/narvii/topic/model/discover/ContentModule;

    .line 368
    .line 369
    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->buildModuleSection()Ljava/util/ArrayList;

    .line 371
    move-result-object v1

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 375
    move-result v2

    .line 376
    .line 377
    if-ge v13, v2, :cond_e

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    move-result-object v1

    .line 382
    .line 383
    check-cast v1, Lw7/z;

    .line 384
    goto :goto_6

    .line 385
    :cond_e
    move-object v1, v9

    .line 386
    .line 387
    :goto_6
    const/16 v2, 0x10

    .line 388
    .line 389
    if-eqz v1, :cond_13

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Lw7/z;->d()Ljava/lang/Object;

    .line 393
    move-result-object v3

    .line 394
    .line 395
    .line 396
    invoke-static {v3, v5}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 397
    move-result v3

    .line 398
    .line 399
    if-eqz v3, :cond_13

    .line 400
    .line 401
    iget v3, v5, Lcom/narvii/topic/model/discover/ContentModule;->contentObjectType:I

    .line 402
    .line 403
    if-ne v3, v2, :cond_f

    .line 404
    .line 405
    if-nez v15, :cond_10

    .line 406
    .line 407
    :cond_f
    if-eq v3, v2, :cond_13

    .line 408
    .line 409
    :cond_10
    iget-object v3, v5, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 410
    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    const-string v13, "existed, just refresh,  module: "

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v3

    .line 427
    .line 428
    .line 429
    invoke-static {v10, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    iget v3, v5, Lcom/narvii/topic/model/discover/ContentModule;->contentObjectType:I

    .line 432
    .line 433
    if-ne v3, v2, :cond_11

    .line 434
    .line 435
    if-nez v15, :cond_11

    .line 436
    move v15, v11

    .line 437
    .line 438
    :cond_11
    iget-object v2, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 439
    .line 440
    if-eqz v2, :cond_12

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Lw7/z;->e()Ljava/lang/Object;

    .line 444
    move-result-object v3

    .line 445
    .line 446
    check-cast v3, Ljava/lang/Number;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 450
    move-result v3

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Lw7/z;->f()Ljava/lang/Object;

    .line 454
    move-result-object v4

    .line 455
    .line 456
    check-cast v4, Ljava/lang/Number;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 460
    move-result v4

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, v3, v4}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->refreshCellAtIndex(II)V

    .line 464
    .line 465
    .line 466
    :cond_12
    invoke-virtual {v1}, Lw7/z;->f()Ljava/lang/Object;

    .line 467
    move-result-object v2

    .line 468
    .line 469
    check-cast v2, Ljava/lang/Number;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 473
    move-result v2

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Lw7/z;->e()Ljava/lang/Object;

    .line 477
    move-result-object v1

    .line 478
    .line 479
    check-cast v1, Ljava/lang/Number;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 483
    move-result v1

    .line 484
    sub-int/2addr v2, v1

    .line 485
    add-int/2addr v14, v2

    .line 486
    .line 487
    goto/16 :goto_11

    .line 488
    .line 489
    :cond_13
    const-string v1, "current module not exist, need to add to current position"

    .line 490
    .line 491
    .line 492
    invoke-static {v10, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .line 494
    new-instance v4, Lcom/narvii/topic/ModuleDisplayConfig;

    .line 495
    const/4 v1, 0x2

    .line 496
    .line 497
    if-le v13, v1, :cond_14

    .line 498
    move v1, v11

    .line 499
    goto :goto_7

    .line 500
    :cond_14
    const/4 v1, 0x0

    .line 501
    .line 502
    .line 503
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 504
    move-result v3

    .line 505
    sub-int/2addr v3, v11

    .line 506
    .line 507
    if-ne v13, v3, :cond_15

    .line 508
    move v3, v11

    .line 509
    goto :goto_8

    .line 510
    :cond_15
    const/4 v3, 0x0

    .line 511
    .line 512
    .line 513
    :goto_8
    invoke-direct {v4, v1, v3}, Lcom/narvii/topic/ModuleDisplayConfig;-><init>(ZZ)V

    .line 514
    .line 515
    if-nez v13, :cond_16

    .line 516
    move v1, v11

    .line 517
    goto :goto_9

    .line 518
    :cond_16
    const/4 v1, 0x0

    .line 519
    .line 520
    :goto_9
    iput-boolean v1, v4, Lcom/narvii/topic/ModuleDisplayConfig;->isTop:Z

    .line 521
    .line 522
    .line 523
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 524
    move-result v1

    .line 525
    .line 526
    if-le v1, v11, :cond_17

    .line 527
    move v1, v11

    .line 528
    goto :goto_a

    .line 529
    :cond_17
    const/4 v1, 0x0

    .line 530
    .line 531
    :goto_a
    iput-boolean v1, v4, Lcom/narvii/topic/ModuleDisplayConfig;->showTitle:Z

    .line 532
    .line 533
    .line 534
    invoke-virtual {v6, v6}, Lcom/narvii/master/home/discover/DiscoverFragment;->isMedRecAdAllowed(Lcom/narvii/app/NVContext;)Z

    .line 535
    move-result v1

    .line 536
    .line 537
    if-eqz v1, :cond_18

    .line 538
    .line 539
    if-nez v0, :cond_18

    .line 540
    .line 541
    iget v1, v5, Lcom/narvii/topic/model/discover/ContentModule;->contentObjectType:I

    .line 542
    .line 543
    if-ne v1, v2, :cond_18

    .line 544
    .line 545
    move/from16 v17, v11

    .line 546
    .line 547
    move/from16 v18, v17

    .line 548
    goto :goto_b

    .line 549
    .line 550
    :cond_18
    move/from16 v17, v0

    .line 551
    .line 552
    const/16 v18, 0x0

    .line 553
    .line 554
    :goto_b
    sget-object v0, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory;->Companion:Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;

    .line 555
    move v1, v13

    .line 556
    .line 557
    move-object/from16 v2, p0

    .line 558
    move-object v3, v5

    .line 559
    move-object v8, v5

    .line 560
    .line 561
    move/from16 v5, v18

    .line 562
    .line 563
    .line 564
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/master/home/discover/adapter/ModuleAdapterFactory$Companion;->getModuleAdapterList(ILcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;Z)Ljava/util/List;

    .line 565
    move-result-object v0

    .line 566
    .line 567
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 568
    .line 569
    if-eqz v1, :cond_19

    .line 570
    .line 571
    iget-object v1, v1, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 572
    .line 573
    if-eqz v1, :cond_19

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 577
    move-result v1

    .line 578
    goto :goto_c

    .line 579
    :cond_19
    const/4 v1, 0x0

    .line 580
    .line 581
    :goto_c
    if-le v14, v1, :cond_1a

    .line 582
    const/4 v1, -0x1

    .line 583
    goto :goto_d

    .line 584
    :cond_1a
    move v1, v14

    .line 585
    .line 586
    :goto_d
    iget-object v2, v8, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 587
    .line 588
    iget-object v3, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 589
    .line 590
    if-eqz v3, :cond_1b

    .line 591
    .line 592
    iget-object v3, v3, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 593
    .line 594
    if-eqz v3, :cond_1b

    .line 595
    .line 596
    .line 597
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 598
    move-result v3

    .line 599
    goto :goto_e

    .line 600
    :cond_1b
    const/4 v3, 0x0

    .line 601
    .line 602
    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .line 607
    const-string v5, "not existed, add adapter list at index "

    .line 608
    .line 609
    .line 610
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string v5, " for module "

    .line 616
    .line 617
    .line 618
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    const-string v2, " when current size is "

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    move-result-object v2

    .line 634
    .line 635
    .line 636
    invoke-static {v10, v2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    if-nez v13, :cond_1c

    .line 639
    .line 640
    .line 641
    invoke-direct {v6, v8, v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getImmersiveHeaderAdapter(Lcom/narvii/topic/model/discover/ContentModule;Ljava/util/List;)Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    .line 642
    move-result-object v2

    .line 643
    .line 644
    iput-object v2, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    .line 645
    .line 646
    .line 647
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 648
    move-result-object v2

    .line 649
    .line 650
    .line 651
    :cond_1d
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    move-result v3

    .line 653
    .line 654
    if-eqz v3, :cond_1e

    .line 655
    .line 656
    .line 657
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 658
    move-result-object v3

    .line 659
    .line 660
    check-cast v3, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 661
    .line 662
    instance-of v4, v3, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    .line 663
    .line 664
    if-eqz v4, :cond_1d

    .line 665
    .line 666
    .line 667
    invoke-direct {v6, v7}, Lcom/narvii/master/home/discover/DiscoverFragment;->firstModuleIsHeaderAds(Ljava/util/List;)Z

    .line 668
    move-result v4

    .line 669
    .line 670
    if-eqz v4, :cond_1d

    .line 671
    .line 672
    check-cast v3, Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    .line 673
    .line 674
    new-instance v4, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$1$1;

    .line 675
    .line 676
    .line 677
    invoke-direct {v4, v6}, Lcom/narvii/master/home/discover/DiscoverFragment$handleModuleConfig$1$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v3, v4}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->setOnPageResponseListener(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter$OnPageResponseListener;)V

    .line 681
    goto :goto_f

    .line 682
    .line 683
    :cond_1e
    iget-object v2, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 684
    .line 685
    if-eqz v2, :cond_1f

    .line 686
    .line 687
    .line 688
    invoke-virtual {v2, v1, v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapterAtIndex(ILjava/util/List;)V

    .line 689
    .line 690
    .line 691
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 692
    move-result v1

    .line 693
    add-int/2addr v14, v1

    .line 694
    .line 695
    .line 696
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 697
    .line 698
    .line 699
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 700
    move-result-object v0

    .line 701
    .line 702
    .line 703
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 704
    move-result v1

    .line 705
    .line 706
    if-eqz v1, :cond_20

    .line 707
    .line 708
    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 710
    move-result-object v1

    .line 711
    .line 712
    check-cast v1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 716
    goto :goto_10

    .line 717
    .line 718
    :cond_20
    move/from16 v0, v17

    .line 719
    .line 720
    :goto_11
    move/from16 v13, v16

    .line 721
    .line 722
    goto/16 :goto_5

    .line 723
    .line 724
    :cond_21
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 725
    .line 726
    if-eqz v0, :cond_22

    .line 727
    .line 728
    iget-object v1, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 732
    move-result v1

    .line 733
    .line 734
    .line 735
    invoke-virtual {v0, v14, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->removeCellAtIndex(II)V

    .line 736
    .line 737
    :cond_22
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 738
    .line 739
    if-eqz v0, :cond_23

    .line 740
    .line 741
    iget-object v0, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 742
    .line 743
    if-eqz v0, :cond_23

    .line 744
    .line 745
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 749
    .line 750
    :cond_23
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 751
    .line 752
    if-eqz v0, :cond_24

    .line 753
    .line 754
    iget-object v0, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 755
    .line 756
    if-eqz v0, :cond_24

    .line 757
    .line 758
    .line 759
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 760
    move-result-object v0

    .line 761
    .line 762
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 763
    goto :goto_12

    .line 764
    :cond_24
    move-object v0, v9

    .line 765
    .line 766
    :goto_12
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    .line 767
    .line 768
    .line 769
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 770
    move-result v0

    .line 771
    .line 772
    if-nez v0, :cond_25

    .line 773
    .line 774
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 775
    .line 776
    if-eqz v0, :cond_25

    .line 777
    .line 778
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->loadingAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$MyLoadingAdapter;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 782
    .line 783
    :cond_25
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 784
    .line 785
    if-eqz v0, :cond_26

    .line 786
    .line 787
    iget-object v0, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 788
    .line 789
    if-eqz v0, :cond_26

    .line 790
    .line 791
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 795
    .line 796
    :cond_26
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 797
    .line 798
    if-eqz v0, :cond_27

    .line 799
    .line 800
    iget-object v0, v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 801
    .line 802
    if-eqz v0, :cond_27

    .line 803
    .line 804
    .line 805
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 806
    move-result-object v0

    .line 807
    move-object v9, v0

    .line 808
    .line 809
    check-cast v9, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 810
    .line 811
    :cond_27
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    .line 812
    .line 813
    .line 814
    invoke-static {v9, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 815
    move-result v0

    .line 816
    .line 817
    if-nez v0, :cond_28

    .line 818
    .line 819
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 820
    .line 821
    if-eqz v0, :cond_28

    .line 822
    .line 823
    iget-object v1, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomOffsetAdapter:Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 827
    .line 828
    :cond_28
    :goto_13
    iget-object v0, v6, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 829
    .line 830
    if-eqz v0, :cond_29

    .line 831
    .line 832
    .line 833
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dispatchDataSetChange()V

    .line 834
    :cond_29
    return-void
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isMedRecAdAllowed(Lcom/narvii/app/NVContext;)Z
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "nvContext"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/wallet/optinads/OptinAds;->adsInitAllowed(Lcom/narvii/app/NVContext;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public onActiveChanged(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v2, v0, v1, v2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 18
    .line 19
    :cond_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->recordPauseTime()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->checkIfRefresh()V

    .line 27
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 9
    const/4 p1, 0x0

    .line 10
    const/4 v0, 0x3

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1, p1, v0, v1}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 15
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    .line 6
    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    .line 8
    .line 9
    const-string v1, "com.narvii.action.INTEREST_CHANGED"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    .line 18
    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    .line 20
    .line 21
    const-string v1, "com.narvii.attribute.REFRESH_DISCOVER"

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverFragment$receiver$1;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9
    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v1, p1, v0, v1}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 7
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key_topic_id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    .line 17
    :goto_0
    instance-of v0, v0, Lcom/narvii/topic/TopicNotificationStub;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "update"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    const-string v0, "null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/topic/TopicNotificationStub;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, "bookmark_state_change"

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const-string p1, "Content Module: Need refresh as bookmarked topic changed "

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 54
    const/4 p1, 0x1

    .line 55
    .line 56
    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->needRefreshWhenActive:Z

    .line 57
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0d04c8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/narvii/topic/CoordinateFragmentHelperKt;->setPaddingForChildFragmentInTopic(Lcom/narvii/app/NVFragment;Lcom/narvii/paging/state/PageStatusView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/DiscoverFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 32
    return-void
.end method

.method public final sendModuleConfigRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V
    .locals 4
    .param p1    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getPath()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string v3, "v"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    iput-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dispatchDataSetChange()V

    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    .line 62
    .line 63
    new-instance v2, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;

    .line 64
    .line 65
    const-class v3, Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, p0, p1, p2, v3}, Lcom/narvii/master/home/discover/DiscoverFragment$sendModuleConfigRequest$1;-><init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZLjava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 72
    return-void
.end method

.method public final setBottomLayout(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setBottomSheetLayout(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->bottomLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setContentModuleListResponse(Lcom/narvii/topic/model/discover/ContentModuleListResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/model/discover/ContentModuleListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->contentModuleListResponse:Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    return-void
.end method

.method public final setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public final setImmersiveHeaderAdapter(Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->immersiveHeaderAdapter:Lcom/narvii/master/home/discover/adapter/HeaderAdsModuleHorizontalAdapter;

    return-void
.end method

.method public final setLastPauseTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->lastPauseTime:J

    return-void
.end method

.method public final setMergerAdapter(Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    return-void
.end method

.method public final setModuleConfigRequest(Lcom/narvii/util/http/ApiRequest;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public final setModuleConfigRequestFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->moduleConfigRequestFinished:Z

    return-void
.end method

.method public showNoStoriesYet()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateViews()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->errorMsg:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    xor-int/2addr v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 43
    .line 44
    instance-of v5, v3, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    check-cast v3, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 52
    move-result v3

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    move v2, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v2, v4

    .line 58
    .line 59
    :goto_0
    iget-object v3, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isEmpty()Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-ne v3, v1, :cond_4

    .line 68
    move v3, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    move v3, v4

    .line 71
    .line 72
    :goto_1
    iget-object v5, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 73
    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isLoading()Z

    .line 78
    move-result v5

    .line 79
    .line 80
    if-ne v5, v1, :cond_5

    .line 81
    .line 82
    iget-object v5, p0, Lcom/narvii/master/home/discover/DiscoverFragment;->mergerAdapter:Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;

    .line 83
    .line 84
    if-eqz v5, :cond_6

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isListShow()Z

    .line 88
    move-result v5

    .line 89
    .line 90
    if-nez v5, :cond_5

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    move v1, v4

    .line 93
    .line 94
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 95
    .line 96
    if-nez v3, :cond_8

    .line 97
    .line 98
    if-nez v1, :cond_8

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    if-nez v2, :cond_7

    .line 103
    goto :goto_3

    .line 104
    :cond_7
    const/4 v4, 0x4

    .line 105
    .line 106
    .line 107
    :cond_8
    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    return-void
.end method
