.class public Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "HeadlineSubTypeListFragment.java"

# interfaces
.implements Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
.implements Lcom/narvii/headlines/HeadLineSessionIdUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$LogStub;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$StatusBarAndHeadlineTabAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyAminosPostHintAdapter;
    }
.end annotation


# static fields
.field private static final HEADLINE_REFRESH_SCROLL_LIMIT:I = 0xa

.field public static final KEY_HEADLINE_CATEGORY:Ljava/lang/String; = "key_category"

.field public static final REFRESH_SOURCE:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

.field private firstRequesting:Z

.field private headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

.field private headlineHintRunnable:Ljava/lang/Runnable;

.field headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/headlines/HeadlineRefreshMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private isFirst:Z

.field private isHotCategoryTab:Z

.field private isMyAminoTab:Z

.field private isScrollToTopRequest:Z

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private lastFirstVisibleIndex:I

.field private launchHelper:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

.field loggedFeedId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field loggedFeedSeenStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field loggedFeedUnseenDuration:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field loggedFeedUnseenStub:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$LogStub;",
            ">;"
        }
    .end annotation
.end field

.field logging:Lcom/narvii/util/logging/LoggingService;

.field private myCommunityListService:Lcom/narvii/community/MyCommunityListService;

.field private myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

.field private newHeadLineHint:Landroid/widget/TextView;

.field notScrollCheckRunnable:Ljava/lang/Runnable;

.field private preferencesHelper:Lcom/narvii/headlines/HeadlinePreferencesHelper;

.field prefsHelper:Lcom/narvii/util/PreferencesHelper;

.field private recentCommunities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

.field refreshCallback:Lcom/narvii/util/Callback;

.field private refreshShowedBefore:Z

.field screenHeight:I

.field scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->REFRESH_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isFirst:Z

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedId:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedSeenStart:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedUnseenDuration:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedUnseenStub:Ljava/util/HashMap;

    .line 130
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 224
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 317
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    .line 375
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    .line 516
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineHintRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->lastFirstVisibleIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isScrollToTopRequest:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isScrollToTopRequest:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->firstRequesting:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/HeadlinePreferencesHelper;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->preferencesHelper:Lcom/narvii/headlines/HeadlinePreferencesHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->showNewHeadlineHint(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/community/MyCommunityListService;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->launchHelper:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->launchHelper:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isFirst:Z

    return p0
.end method

.method static synthetic access$402(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isFirst:Z

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshShowedBefore:Z

    return p0
.end method

.method static synthetic access$602(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshShowedBefore:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)Lcom/narvii/model/Feed;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getMappedFeed(I)Lcom/narvii/model/Feed;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method private containFeatureTagAtPos(I)Z
    .locals 2

    .line 297
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getMappedFeed(I)Lcom/narvii/model/Feed;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/HeadlineStyle;->featuredTag:Lcom/narvii/model/FeaturedTag;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private fetchRecentCommunityList()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    const/4 v1, -0x1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/RecentCommunityHelper;->getRecentList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunities:Ljava/util/List;

    return-void
.end method

.method public static getLocationInView(Landroid/view/View;Landroid/view/View;[I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 311
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_0

    if-eq v3, p0, :cond_0

    check-cast v3, Landroid/view/View;

    move-object p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 313
    :cond_1
    aput v1, p2, v0

    const/4 p0, 0x1

    .line 314
    aput v2, p2, p0

    return-void
.end method

.method private getMappedFeed(I)Lcom/narvii/model/Feed;
    .locals 2

    .line 336
    iget v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->lastFirstVisibleIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->listViewTopOffset()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    invoke-virtual {v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    invoke-virtual {v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/model/Feed;

    if-eqz v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    return-object p1

    :cond_1
    return-object v0
.end method

.method private showNewHeadlineHint(I)V
    .locals 2

    .line 493
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 497
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object p1

    .line 500
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 509
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 510
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    const v0, 0x7f0f0ff9

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 512
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addHeadlineRefreshListener(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 404
    new-instance p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 405
    new-instance p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    .line 406
    new-instance p1, Lcom/narvii/master/HeadlineDividerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/HeadlineDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 407
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/master/HeadlineDividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 409
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 410
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    iget-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isMyAminoTab:Z

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyAminosPostHintAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyAminosPostHintAdapter;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 415
    new-instance v0, Lcom/narvii/master/MasterBottomAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterBottomAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0c3d

    .line 196
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected externalOffset()I
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 205
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "pageName"

    .line 909
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuitablePosition()I
    .locals 8

    .line 276
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 277
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVListView;

    const/4 v2, 0x0

    .line 278
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 279
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090433

    .line 280
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 285
    invoke-static {v3, v1, v4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getLocationInView(Landroid/view/View;Landroid/view/View;[I)V

    const/4 v3, 0x1

    .line 286
    aget v5, v4, v3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    if-le v5, v6, :cond_1

    aget v5, v4, v3

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    int-to-float v7, v0

    mul-float v7, v7, v6

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v7, v6

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    invoke-direct {p0, v2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->containFeatureTagAtPos(I)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    .line 289
    :cond_1
    aget v3, v4, v3

    if-le v3, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 903
    new-instance v0, Lcom/narvii/nvplayer/delegate/HeadLineVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/HeadLineVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected listViewTopOffset()I
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isHotCategoryTab:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 348
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 350
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVBaseScrollableTabFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 352
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz p1, :cond_1

    .line 353
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 137
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "myCommunityList"

    .line 138
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    const-string p1, "recentCommunities"

    .line 139
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    const-string p1, "key_category"

    .line 140
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/headlines/category/HeadLineChannel;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/headlines/category/HeadLineChannel;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 141
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    sget-object v2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_HOT_ID:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isHotCategoryTab:Z

    .line 142
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    sget-object v2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isMyAminoTab:Z

    .line 143
    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isHotCategoryTab:Z

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/community/RecentCommunityHelper;->addChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    .line 145
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 146
    invoke-direct {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->fetchRecentCommunityList()V

    :cond_2
    const-string p1, "content_language"

    .line 148
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    const-string p1, "affiliations"

    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 150
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 151
    new-instance p1, Lcom/narvii/headlines/HeadlinePreferencesHelper;

    invoke-direct {p1, p0}, Lcom/narvii/headlines/HeadlinePreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->preferencesHelper:Lcom/narvii/headlines/HeadlinePreferencesHelper;

    .line 152
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {p1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 153
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->screenHeight:I

    const-string p1, "logging"

    .line 154
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->logging:Lcom/narvii/util/logging/LoggingService;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02ad

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 176
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    invoke-virtual {v0, p0}, Lcom/narvii/community/RecentCommunityHelper;->removeChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    return-void
.end method

.method public onHeadLineSessionIdUpdated(Ljava/lang/String;)V
    .locals 0

    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->firstRequesting:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 449
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    if-eqz p1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->fetchRecentCommunityList()V

    .line 451
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    invoke-virtual {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 216
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 217
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 218
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_0

    .line 219
    check-cast p1, Lcom/narvii/widget/NVListView;

    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onNewerFeedFetched()V
    .locals 3

    .line 874
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 875
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->onRefresh()V

    goto :goto_0

    .line 881
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isScrollToTopRequest:Z

    .line 882
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 883
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRecentCommunityChanged()V
    .locals 1

    .line 422
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->fetchRecentCommunityList()V

    .line 426
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 399
    invoke-super {p0, v0}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onRefresh(Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 365
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->loadPrevPage(Lcom/narvii/util/Callback;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 183
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 189
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->storeLastTimeReadFeedId()V

    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090756

    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    return-void
.end method
