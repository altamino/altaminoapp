.class public Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;
.implements Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;
.implements Lcom/narvii/headlines/HeadLineSessionIdUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyAminosPostHintAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$LogStub;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$RecentAminosRecycleAdapter;,
        Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$StatusBarAndHeadlineTabAdapter;
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->REFRESH_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isFirst:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedId:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedSeenStart:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedUnseenDuration:Ljava/util/HashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->loggedFeedUnseenStub:Ljava/util/HashMap;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$1;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$2;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->notScrollCheckRunnable:Ljava/lang/Runnable;

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$4;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    .line 63
    .line 64
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$6;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineHintRunnable:Ljava/lang/Runnable;

    .line 70
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/HeadlinePreferencesHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->preferencesHelper:Lcom/narvii/headlines/HeadlinePreferencesHelper;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunities:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshShowedBefore:Z

    return p0
.end method

.method static bridge synthetic E(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->firstRequesting:Z

    return-void
.end method

.method static bridge synthetic F(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isFirst:Z

    return-void
.end method

.method static bridge synthetic G(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isScrollToTopRequest:Z

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->lastFirstVisibleIndex:I

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->launchHelper:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshShowedBefore:Z

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)Lcom/narvii/model/Feed;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getMappedFeed(I)Lcom/narvii/model/Feed;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic L(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->showNewHeadlineHint(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 3
    return p0
.end method

.method static synthetic access$800(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    return-object p0
.end method

.method private containFeatureTagAtPos(I)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getMappedFeed(I)Lcom/narvii/model/Feed;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->getHeadlineStyle()Lcom/narvii/model/HeadlineStyle;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/model/HeadlineStyle;->featuredTag:Lcom/narvii/model/FeaturedTag;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_0
    return v0
.end method

.method private fetchRecentCommunityList()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/RecentCommunityHelper;->getRecentList(II)Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunities:Ljava/util/List;

    .line 12
    return-void
.end method

.method public static getLocationInView(Landroid/view/View;Landroid/view/View;[I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    .line 5
    :goto_0
    if-eqz p0, :cond_1

    .line 6
    .line 7
    if-eq p0, p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 11
    move-result v3

    .line 12
    add-int/2addr v1, v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 16
    move-result v3

    .line 17
    add-int/2addr v2, v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    instance-of v4, v3, Landroid/view/View;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    if-eq v3, p0, :cond_0

    .line 28
    .line 29
    check-cast v3, Landroid/view/View;

    .line 30
    move-object p0, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    aput v1, p2, v0

    .line 36
    const/4 p0, 0x1

    .line 37
    .line 38
    aput v2, p2, p0

    .line 39
    return-void
.end method

.method private getMappedFeed(I)Lcom/narvii/model/Feed;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->lastFirstVisibleIndex:I

    .line 3
    add-int/2addr p1, v0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->listViewTopOffset()I

    .line 7
    move-result v0

    .line 8
    sub-int/2addr p1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-gez p1, :cond_0

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 22
    move-result v1

    .line 23
    .line 24
    if-le v1, p1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    instance-of v1, v1, Lcom/narvii/model/Feed;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->list()Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/model/Feed;

    .line 51
    return-object p1

    .line 52
    :cond_1
    return-object v0
.end method

.method private showNewHeadlineHint(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$5;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 34
    .line 35
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    .line 41
    .line 42
    .line 43
    const v0, 0x7f12110f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineHintRunnable:Ljava/lang/Runnable;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineHintRunnable:Ljava/lang/Runnable;

    .line 60
    .line 61
    const-wide/16 v0, 0x3e8

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/category/HeadLineChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isFirst:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isScrollToTopRequest:Z

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->launchHelper:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyLaunchHelper;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)Lcom/narvii/community/MyCommunityListService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    return-object p0
.end method


# virtual methods
.method public addHeadlineRefreshListener(Lcom/narvii/headlines/HeadlineRefreshMonitor;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/master/HeadlineDividerAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/master/HeadlineDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/master/HeadlineDividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    .line 26
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 30
    .line 31
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    const v2, 0x7f070412

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isMyAminoTab:Z

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyAminosPostHintAdapter;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, p0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyAminosPostHintAdapter;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 63
    const/4 v1, 0x1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/master/MasterBottomAdapter;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/narvii/master/MasterBottomAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120d6b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method protected externalOffset()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f0702f4

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    mul-int/lit8 v0, v0, -0x1

    .line 18
    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "pageName"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSuitablePosition()I
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/widget/NVListView;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-ge v2, v3, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    const v4, 0x7f0a056a

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    if-nez v3, :cond_0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v4, 0x2

    .line 37
    .line 38
    new-array v4, v4, [I

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v1, v4}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->getLocationInView(Landroid/view/View;Landroid/view/View;[I)V

    .line 42
    const/4 v3, 0x1

    .line 43
    .line 44
    aget v5, v4, v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v6

    .line 49
    .line 50
    const/high16 v7, 0x42c80000    # 100.0f

    .line 51
    .line 52
    .line 53
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 54
    move-result v6

    .line 55
    .line 56
    if-le v5, v6, :cond_1

    .line 57
    .line 58
    aget v5, v4, v3

    .line 59
    int-to-float v5, v5

    .line 60
    .line 61
    const/high16 v6, 0x40400000    # 3.0f

    .line 62
    int-to-float v7, v0

    .line 63
    mul-float/2addr v7, v6

    .line 64
    .line 65
    const/high16 v6, 0x40800000    # 4.0f

    .line 66
    div-float/2addr v7, v6

    .line 67
    .line 68
    cmpg-float v5, v5, v7

    .line 69
    .line 70
    if-gez v5, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v2}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->containFeatureTagAtPos(I)Z

    .line 74
    move-result v5

    .line 75
    .line 76
    if-eqz v5, :cond_1

    .line 77
    return v2

    .line 78
    .line 79
    :cond_1
    aget v3, v4, v3

    .line 80
    .line 81
    if-le v3, v0, :cond_2

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    :goto_2
    const/4 v0, -0x1

    .line 87
    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayer/delegate/HeadLineVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/HeadLineVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
    return-object v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected listViewTopOffset()I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isHotCategoryTab:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->getCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-lez v0, :cond_0

    .line 15
    const/4 v0, 0x3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    :goto_0
    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-ne v0, p0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headlineRefreshMointorEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$3;-><init>(Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 43
    :cond_1
    return-void
.end method

.method public onAffiliationChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    .line 8
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "myCommunityList"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 14
    .line 15
    const-string p1, "recentCommunities"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/community/RecentCommunityHelper;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 24
    .line 25
    const-string p1, "key_category"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-class v0, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Lcom/narvii/headlines/category/HeadLineChannel;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x1

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_HOT_ID:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    move p1, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move p1, v0

    .line 57
    .line 58
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isHotCategoryTab:Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->headLineCategory:Lcom/narvii/headlines/category/HeadLineChannel;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p1, Lcom/narvii/headlines/category/HeadLineChannel;->channelId:Ljava/lang/String;

    .line 65
    .line 66
    sget-object v2, Lcom/narvii/headlines/category/HeadLineChannel;->CHANNEL_MY_AMINO_ID:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    move v0, v1

    .line 74
    .line 75
    :cond_1
    iput-boolean v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isMyAminoTab:Z

    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isHotCategoryTab:Z

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lcom/narvii/community/RecentCommunityHelper;->addChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    .line 85
    .line 86
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityListService;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->fetchRecentCommunityList()V

    .line 93
    .line 94
    :cond_2
    const-string p1, "content_language"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 103
    .line 104
    const-string p1, "affiliations"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p0}, Lcom/narvii/community/AffiliationsService;->addAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 116
    .line 117
    new-instance p1, Lcom/narvii/headlines/HeadlinePreferencesHelper;

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, p0}, Lcom/narvii/headlines/HeadlinePreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 121
    .line 122
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->preferencesHelper:Lcom/narvii/headlines/HeadlinePreferencesHelper;

    .line 123
    .line 124
    new-instance p1, Lcom/narvii/util/PreferencesHelper;

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, p0}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 128
    .line 129
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->prefsHelper:Lcom/narvii/util/PreferencesHelper;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 133
    move-result-object p1

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 137
    move-result p1

    .line 138
    .line 139
    iput p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->screenHeight:I

    .line 140
    .line 141
    const-string p1, "logging"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 148
    .line 149
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->logging:Lcom/narvii/util/logging/LoggingService;

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02dd

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->recentCommunityHelper:Lcom/narvii/community/RecentCommunityHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/narvii/community/RecentCommunityHelper;->removeChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/narvii/community/AffiliationsService;->removeAffiliationChangeListener(Lcom/narvii/community/AffiliationsService$AffiliationChangeListener;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myCommunityListService:Lcom/narvii/community/MyCommunityListService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityListService;->removeObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 19
    return-void
.end method

.method public onHeadLineSessionIdUpdated(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->firstRequesting:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 18
    :cond_0
    return-void
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->fetchRecentCommunityList()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->notifyDataSetChanged()V

    .line 13
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    .line 13
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 23
    :cond_0
    return-void
.end method

.method public onNewerFeedFetched()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->onRefresh()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iput-boolean v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->isScrollToTopRequest:Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 44
    move-result v0

    .line 45
    .line 46
    const/16 v1, 0x14

    .line 47
    const/4 v2, 0x0

    .line 48
    .line 49
    if-gt v0, v1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 65
    :cond_3
    :goto_0
    return-void
.end method

.method public onRecentCommunityChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->fetchRecentCommunityList()V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->myRecentAminoAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$MyRecentAminoAdapter;->notifyDataSetChanged()V

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 6
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

    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    .line 1
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVPagedAdapter;->loadPrevPage(Lcom/narvii/util/Callback;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    sget-object p1, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->REFRESH_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "statistics"

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    const-string v1, "Refresh Headlines Feed"

    .line 5
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    const-string p1, "Pull to Refresh"

    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Refresh Headlines Feed Total"

    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->feedAdapter:Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment$FeedAdapter;->storeLastTimeReadFeedId()V

    .line 11
    :cond_0
    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a09ec

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/headlines/feed/HeadlineSubTypeListFragment;->newHeadLineHint:Landroid/widget/TextView;

    .line 15
    return-void
.end method
