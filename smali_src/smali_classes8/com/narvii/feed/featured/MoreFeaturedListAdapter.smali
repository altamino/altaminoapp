.class public Lcom/narvii/feed/featured/MoreFeaturedListAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;,
        Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreItemsViewHolder;,
        Lcom/narvii/feed/featured/MoreFeaturedListAdapter$PopularFeedViewHolder;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x19

.field public static final STYLE_BIG:I = 0x1

.field public static final STYLE_SMALL:I


# instance fields
.field private final BASE_MORE_FEED_NUM:I

.field accountService:Lcom/narvii/account/AccountService;

.field configService:Lcom/narvii/config/ConfigService;

.field public detailOpenSource:Ljava/lang/String;

.field featuredBlogCategory:Lcom/narvii/model/BlogCategory;

.field feedHelper:Lcom/narvii/feed/FeedHelper;

.field private ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field moreFeaturedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Blog;",
            ">;"
        }
    .end annotation
.end field

.field recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

.field protected showStyle:I

.field styleChanged:Z

.field timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->BASE_MORE_FEED_NUM:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/feed/FeedHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->feedHelper:Lcom/narvii/feed/FeedHelper;

    .line 20
    .line 21
    const-string p1, "config"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->configService:Lcom/narvii/config/ConfigService;

    .line 30
    .line 31
    const-string p1, "account"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->accountService:Lcom/narvii/account/AccountService;

    .line 40
    .line 41
    new-instance p1, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p0, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Lcom/narvii/feed/featured/a;)V

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->fixItemViewStyle(Landroid/view/View;)V

    return-void
.end method

.method private fixItemViewStyle(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f07034a

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    const v3, 0x7f070348

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    const v2, 0x7f07034b

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    const v3, 0x7f070349

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 79
    move-result v2

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :goto_0
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->openFeatureCategoryList()V

    return-void
.end method

.method private openFeatureCategoryList()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-class v0, Lcom/narvii/feed/BlogInCategoryListFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    const-string v2, "blogCategory"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->featuredBlogCategory:Lcom/narvii/model/BlogCategory;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/model/BlogCategory;->id()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "id"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "isFeaturedCategory"

    .line 36
    const/4 v2, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 45
    .line 46
    const-string v0, "statistics"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 53
    .line 54
    const-string v1, "More Featured Posts Feed"

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 58
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected getApiRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/feed/featured-more"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "start"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    .line 22
    const/16 v1, 0x19

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    const-string v2, "size"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreFeaturedList"

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0259

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0993

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    new-instance p3, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;

    .line 17
    .line 18
    .line 19
    invoke-direct {p3, p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$2;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    const p3, 0x7f120cd7

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    iget p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    .line 36
    const/4 v0, 0x1

    .line 37
    .line 38
    if-ne p3, v0, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    const p3, 0x7f120759

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    :cond_0
    const p3, 0x7f0a0994

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p3

    .line 57
    .line 58
    check-cast p3, Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    const p2, 0x7f0a0992

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    check-cast p2, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 71
    .line 72
    iget-object p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p3}, Lcom/narvii/logging/LogUtils;->recyclerShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 79
    move-result-object p3

    .line 80
    const/4 v0, 0x0

    .line 81
    .line 82
    if-eqz p3, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 86
    move-result-object p3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_1
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    .line 99
    invoke-direct {p3, v1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 106
    move-result-object p3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object p3

    .line 111
    .line 112
    .line 113
    const v1, 0x7f080981

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 117
    move-result-object p3

    .line 118
    .line 119
    new-instance v1, Lcom/narvii/util/recycleview/DividerItemDecoration;

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, p3}, Lcom/narvii/util/recycleview/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 126
    .line 127
    iget-object p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 131
    .line 132
    :goto_0
    iget-boolean p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    .line 133
    .line 134
    if-eqz p3, :cond_2

    .line 135
    .line 136
    iget-object p3, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 137
    .line 138
    if-eqz p3, :cond_2

    .line 139
    .line 140
    .line 141
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 142
    move-result p3

    .line 143
    .line 144
    if-eqz p3, :cond_2

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 148
    .line 149
    iput-boolean v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    .line 150
    :cond_2
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->recycleAdapter:Lcom/narvii/feed/featured/MoreFeaturedListAdapter$MoreFeedRecycleAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    :cond_0
    return-void
.end method

.method public onAttach()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/Feed;

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0a0992

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;-><init>(Ljava/lang/Class;I)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->ipc:Lcom/narvii/logging/Impression/RecyclerInListViewImpressionCollector;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->sendMoreFeaturedRequest()V

    .line 22
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/influencer/FanClub;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/model/Feed;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v4, Lcom/narvii/influencer/FanClub;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lcom/narvii/influencer/FanClub;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/influencer/FanClub;->isActive()Z

    .line 51
    move-result v1

    .line 52
    const/4 v3, 0x1

    .line 53
    xor-int/2addr v1, v3

    .line 54
    .line 55
    iput-boolean v1, v2, Lcom/narvii/model/Feed;->needHidden:Z

    .line 56
    move v1, v3

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_1
    if-eqz v1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->notifyDataSetChanged()V

    .line 63
    :cond_2
    return-void
.end method

.method public openFeedDetail(Lcom/narvii/model/Feed;I)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->moreFeaturedList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getApiRequest()Lcom/narvii/util/http/ApiRequest;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getApiRequest()Lcom/narvii/util/http/ApiRequest;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    :goto_0
    move-object v3, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :goto_1
    iget-object v4, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->timeStamp:Ljava/lang/String;

    .line 25
    const/4 v6, 0x0

    .line 26
    .line 27
    const/16 v7, 0x19

    .line 28
    move-object v1, p1

    .line 29
    move v5, p2

    .line 30
    .line 31
    .line 32
    invoke-static/range {v0 .. v7}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/content/Intent;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string p2, "Source"

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->detailOpenSource:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    const-string p2, "moreFeaturedPost"

    .line 43
    const/4 v0, 0x1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p1}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->sendMoreFeaturedRequest()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 13
    return-void
.end method

.method sendMoreFeaturedRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->getApiRequest()Lcom/narvii/util/http/ApiRequest;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;

    .line 15
    .line 16
    const-class v3, Lcom/narvii/feed/featured/HistoryFeaturedFeedResponse;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/featured/MoreFeaturedListAdapter$1;-><init>(Lcom/narvii/feed/featured/MoreFeaturedListAdapter;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 23
    return-void
.end method

.method public setShowStyle(I)V
    .locals 1

    iget v0, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->showStyle:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/feed/featured/MoreFeaturedListAdapter;->styleChanged:Z

    :goto_0
    return-void
.end method
