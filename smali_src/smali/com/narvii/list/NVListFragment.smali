.class public abstract Lcom/narvii/list/NVListFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;
.implements Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;
.implements Lcom/narvii/setting/VideoAutoPlayChangeListener;
.implements Lcom/narvii/logging/Impression/ImpressionHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/list/NVListFragment$FlingListener;,
        Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;
    }
.end annotation


# static fields
.field public static OVERRIDES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/widget/ListView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected static final STATE_FOCUSED:[I

.field protected static final STATE_NORMAL:[I

.field protected static final STATE_PRESSED:[I


# instance fields
.field protected adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

.field private adapter:Landroid/widget/ListAdapter;

.field private final adapterObserver:Landroid/database/DataSetObserver;

.field connectivityManager:Landroid/net/ConnectivityManager;

.field private final emptyRetryListener:Landroid/view/View$OnClickListener;

.field protected emptyView:Landroid/view/View;

.field protected errorView:Landroid/view/View;

.field private flingListener:Lcom/narvii/list/NVListFragment$FlingListener;

.field private frame:Landroid/widget/FrameLayout;

.field private hoverAdapter:Lcom/narvii/list/HoverAdapter;

.field private hoverCurrentPosition:I

.field private hoverCurrentType:I

.field private hoverCurrentView:Landroid/view/View;

.field private hoverDirty:Z

.field private hoverRecycleType:I

.field private hoverRecycleView:Landroid/view/View;

.field private hoverUpdating:Z

.field private hoverView:Lcom/narvii/list/ListHoverFrame;

.field impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

.field protected isSwipeRefreshEnabled:Z

.field private listView:Landroid/widget/ListView;

.field private listViewFirstBecomeVisible:Z

.field protected mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

.field protected outerRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private overScrollMode:I

.field prefs:Landroid/content/SharedPreferences;

.field protected progressView:Landroid/view/View;

.field protected final refreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scrollToHideKeyboard:Z

.field private showScrollBarOnlyWhenScroll:Z

.field protected swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field protected videoAutoPlay:Z

.field protected wifiActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x10100a7

    .line 4
    .line 5
    .line 6
    filled-new-array {v0}, [I

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    .line 10
    .line 11
    .line 12
    const v0, 0x101009c

    .line 13
    .line 14
    .line 15
    filled-new-array {v0}, [I

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    .line 24
    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 29
    .line 30
    sput-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/list/NVListFragment$3;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/narvii/list/NVListFragment$3;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 15
    .line 16
    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->adapterObserver:Landroid/database/DataSetObserver;

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/list/NVListFragment$7;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/narvii/list/NVListFragment$7;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/list/NVListFragment$8;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/list/NVListFragment$8;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    .line 31
    const/4 v1, -0x1

    .line 32
    .line 33
    iput v1, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    .line 34
    .line 35
    iput v1, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    .line 36
    .line 37
    iput v1, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->listViewFirstBecomeVisible:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/NVListFragment;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->resetPvId()V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/narvii/list/NVListFragment;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    .line 4
    return-void
.end method

.method private addAdViewFriendlyObstructions(Landroid/app/Activity;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget v0, Lcom/narvii/lib/R$id;->video_overlay:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->addFriendlyObstruction(Landroid/view/View;)V

    .line 30
    :cond_0
    return-void
.end method

.method private getLastHoverPosition(Lcom/narvii/list/HoverAdapter;I)I
    .locals 1

    .line 1
    .line 2
    :goto_0
    if-ltz p2, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/narvii/list/HoverAdapter;->isHover(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return p2

    .line 10
    .line 11
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, -0x1

    .line 14
    return p1
.end method

.method private hoverDestory()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverAdapter:Lcom/narvii/list/HoverAdapter;

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    return-void
.end method

.method private hoverRecycle()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    .line 16
    .line 17
    iget v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    .line 20
    :cond_1
    const/4 v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->onHoverRecycled()V

    .line 31
    return-void
.end method

.method private isDeviceOffline()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    const-string v2, "connectivity"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    :catch_0
    return v0
.end method

.method private synthetic lambda$onViewCreated$0(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setFooterPadding(I)V

    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiStateChange$1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 12
    return-void
.end method

.method private synthetic lambda$videoAutoPlayChange$2()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/narvii/nvplayerview/delegate/IVideoListView;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 12
    return-void
.end method

.method public static synthetic n(Lcom/narvii/list/NVListFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/NVListFragment;->lambda$onViewCreated$0(I)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->lambda$videoAutoPlayChange$2()V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->lambda$onWifiStateChange$1()V

    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/list/NVListFragment;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/list/NVListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->scrollToHideKeyboard:Z

    return p0
.end method

.method static bridge synthetic s(Lcom/narvii/list/NVListFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->showScrollBarOnlyWhenScroll:Z

    return p0
.end method


# virtual methods
.method public addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/logging/ImpressionDelegate;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 6
    return-void
.end method

.method protected autoAddBottomPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blinkItem(Ljava/lang/String;ZJ)V
    .locals 8

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p3, v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/list/NVListFragment$9;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/list/NVListFragment$9;-><init>(Lcom/narvii/list/NVListFragment;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p3, p4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 18
    move-result p3

    .line 19
    .line 20
    if-nez p3, :cond_1

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 29
    move-result-object p4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-interface {p4}, Landroid/widget/Adapter;->getCount()I

    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    move v4, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v1, :cond_6

    .line 46
    .line 47
    add-int v5, v4, v0

    .line 48
    .line 49
    if-ge v5, v2, :cond_6

    .line 50
    .line 51
    if-ltz v0, :cond_6

    .line 52
    .line 53
    .line 54
    invoke-interface {p4, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    .line 57
    instance-of v7, v6, Lcom/narvii/model/NVObject;

    .line 58
    .line 59
    if-eqz v7, :cond_5

    .line 60
    .line 61
    check-cast v6, Lcom/narvii/model/NVObject;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    .line 68
    invoke-static {v6, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v6

    .line 70
    .line 71
    if-eqz v6, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    instance-of p2, p3, Lcom/narvii/widget/NVListView;

    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    move-object p2, p3

    .line 81
    .line 82
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v5}, Lcom/narvii/widget/NVListView;->startBlinkLong(I)V

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 89
    move-result p2

    .line 90
    .line 91
    const/16 p4, 0xc8

    .line 92
    .line 93
    if-gez p2, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 97
    move-result p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p1, p4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 101
    goto :goto_1

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 105
    move-result p2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 109
    move-result v0

    .line 110
    .line 111
    if-le p2, v0, :cond_4

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 115
    move-result p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 119
    move-result p2

    .line 120
    sub-int/2addr p1, p2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, p1, p4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 124
    :cond_4
    :goto_1
    return-void

    .line 125
    .line 126
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_6
    if-eqz p2, :cond_8

    .line 130
    .line 131
    .line 132
    invoke-interface {p4}, Landroid/widget/Adapter;->getCount()I

    .line 133
    move-result p2

    .line 134
    .line 135
    :goto_2
    if-ge v3, p2, :cond_8

    .line 136
    .line 137
    .line 138
    invoke-interface {p4, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    instance-of v1, v0, Lcom/narvii/model/NVObject;

    .line 142
    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    check-cast v0, Lcom/narvii/model/NVObject;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    move-result v0

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 159
    .line 160
    new-instance v0, Lcom/narvii/list/NVListFragment$10;

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, p0, v3, p1}, Lcom/narvii/list/NVListFragment$10;-><init>(Lcom/narvii/list/NVListFragment;ILjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 167
    .line 168
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 169
    goto :goto_2

    .line 170
    :cond_8
    return-void
.end method

.method protected canChildScrollUp()Ljava/lang/Boolean;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    sget-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    return-object v0
.end method

.method public canScrollUp()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->g(Landroid/view/View;I)Z

    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method protected clearImpression()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->clearImpression()V

    .line 6
    return-void
.end method

.method protected abstract createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end method

.method protected emptyIconId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected errorViewLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->error_view:I

    return v0
.end method

.method protected externalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flyingScroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected forceShowListWhenEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sget v2, Lcom/narvii/lib/R$color;->color_default_primary:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    return-object v0
.end method

.method protected getHoveFrameMarginTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHoverCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverTopOffset()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverBelowOverlayPlaceHolder()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getTotalOverlaySize()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    sget v2, Lcom/narvii/lib/R$color;->list_divider:I

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    :goto_0
    sget v2, Lcom/narvii/lib/R$color;->list_divider_dark:I

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 32
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getSelectorLightColor()I

    .line 22
    move-result v1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getSelectorDarkColor()I

    .line 27
    move-result v1

    .line 28
    .line 29
    :goto_1
    sget-object v2, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    .line 30
    .line 31
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    sget-object v2, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    .line 40
    .line 41
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    .line 50
    .line 51
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 52
    const/4 v3, 0x0

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$color;->list_selector_dark:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected getSelectorLightColor()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$color;->list_selector_light:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected getSwipeRefreshFlag()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method

.method public getVideoDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object v0
.end method

.method protected hoverBelowOverlayPlaceHolder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hoverChange(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected hoverChangeTitle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hoverFirstVisiblePosition(Landroid/widget/ListView;)I
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverBelowOverlayPlaceHolder()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    .line 43
    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    .line 44
    move-result v4

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    :goto_0
    if-ge v5, v3, :cond_2

    .line 48
    .line 49
    add-int v6, v5, v2

    .line 50
    .line 51
    if-ge v6, v4, :cond_2

    .line 52
    .line 53
    if-ltz v2, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    move-result-object v7

    .line 58
    .line 59
    if-nez v7, :cond_0

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 64
    move-result v7

    .line 65
    .line 66
    if-le v7, v0, :cond_1

    .line 67
    return v6

    .line 68
    .line 69
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    return v1

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 75
    move-result p1

    .line 76
    return p1
.end method

.method protected hoverUpdateView()V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 7
    .line 8
    if-eqz v1, :cond_d

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->hoverAdapter:Lcom/narvii/list/HoverAdapter;

    .line 11
    .line 12
    if-eqz v1, :cond_d

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/narvii/list/NVListFragment;->hoverUpdating:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->hoverFirstVisiblePosition(Landroid/widget/ListView;)I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-ltz v0, :cond_c

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 30
    move-result v2

    .line 31
    .line 32
    if-lt v0, v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/narvii/list/NVListFragment;->getLastHoverPosition(Lcom/narvii/list/HoverAdapter;I)I

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverChangeTitle()Z

    .line 42
    move-result v3

    .line 43
    const/4 v4, -0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    if-eq v2, v4, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0, v5}, Lcom/narvii/list/NVListFragment;->hoverChange(Ljava/lang/Object;)V

    .line 58
    return-void

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->setSectionHeaderTag()Z

    .line 62
    move-result v3

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    if-ne v0, v2, :cond_4

    .line 68
    .line 69
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    move-result v3

    .line 74
    .line 75
    if-lez v3, :cond_4

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    sget v3, Lcom/narvii/widget/NVListView;->SECTION_HEADER_TAG:I

    .line 84
    .line 85
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    move v2, v4

    .line 90
    .line 91
    :cond_4
    iget v3, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    .line 92
    const/4 v7, 0x1

    .line 93
    .line 94
    if-ne v3, v2, :cond_5

    .line 95
    .line 96
    iget-boolean v3, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    .line 97
    .line 98
    if-eqz v3, :cond_9

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverRecycle()V

    .line 102
    .line 103
    if-eq v2, v4, :cond_9

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    .line 107
    move-result v3

    .line 108
    int-to-float v3, v3

    .line 109
    .line 110
    iget-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 111
    .line 112
    if-nez v8, :cond_6

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 116
    move-result-object v8

    .line 117
    .line 118
    sget v9, Lcom/narvii/lib/R$layout;->list_hover_frame:I

    .line 119
    .line 120
    iget-object v10, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v9, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 124
    move-result-object v8

    .line 125
    .line 126
    check-cast v8, Lcom/narvii/list/ListHoverFrame;

    .line 127
    .line 128
    iput-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 129
    .line 130
    iget-object v9, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 134
    .line 135
    :cond_6
    iget-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 136
    float-to-int v3, v3

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoveFrameMarginTop()I

    .line 140
    move-result v9

    .line 141
    add-int/2addr v3, v9

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 145
    .line 146
    iput v2, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    .line 147
    .line 148
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 149
    .line 150
    .line 151
    invoke-interface {v3, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 152
    move-result v3

    .line 153
    .line 154
    iput v3, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    .line 155
    .line 156
    iget v8, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    .line 157
    .line 158
    if-ne v3, v8, :cond_7

    .line 159
    .line 160
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    .line 161
    goto :goto_0

    .line 162
    :cond_7
    move-object v3, v5

    .line 163
    .line 164
    :goto_0
    iput v4, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    .line 165
    .line 166
    iput-object v5, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    .line 167
    .line 168
    iput-boolean v7, p0, Lcom/narvii/list/NVListFragment;->hoverUpdating:Z

    .line 169
    .line 170
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 171
    .line 172
    iget-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 173
    .line 174
    .line 175
    invoke-interface {v4, v2, v3, v8}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 176
    move-result-object v2

    .line 177
    .line 178
    iput-object v2, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVListFragment;->onHoveItemCreated(Landroid/view/View;)V

    .line 182
    .line 183
    iput-boolean v6, p0, Lcom/narvii/list/NVListFragment;->hoverUpdating:Z

    .line 184
    .line 185
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    .line 193
    if-eqz v3, :cond_8

    .line 194
    .line 195
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 196
    .line 197
    if-eqz v3, :cond_8

    .line 198
    move-object v4, v2

    .line 199
    .line 200
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 204
    move-result v3

    .line 205
    .line 206
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 207
    .line 208
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 212
    move-result v3

    .line 213
    .line 214
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 215
    .line 216
    :cond_8
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 217
    .line 218
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .line 223
    :cond_9
    iput-boolean v6, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    .line 224
    add-int/2addr v0, v7

    .line 225
    .line 226
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 227
    .line 228
    if-eqz v2, :cond_a

    .line 229
    .line 230
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 231
    .line 232
    .line 233
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 234
    move-result v2

    .line 235
    .line 236
    if-ge v0, v2, :cond_a

    .line 237
    .line 238
    .line 239
    invoke-interface {v1, v0}, Lcom/narvii/list/HoverAdapter;->isHover(I)Z

    .line 240
    move-result v0

    .line 241
    .line 242
    if-eqz v0, :cond_a

    .line 243
    .line 244
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 248
    move-result v0

    .line 249
    .line 250
    if-le v0, v7, :cond_a

    .line 251
    .line 252
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 256
    move-result-object v5

    .line 257
    .line 258
    :cond_a
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 259
    .line 260
    if-eqz v0, :cond_b

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v5}, Lcom/narvii/list/ListHoverFrame;->setAlignView(Landroid/view/View;)V

    .line 264
    :cond_b
    return-void

    .line 265
    .line 266
    .line 267
    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverRecycle()V

    .line 268
    :cond_d
    :goto_2
    return-void
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNestedScrollingChild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isRefreshing()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

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

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logImpression()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    .line 6
    return-void
.end method

.method public logImpressionQuit()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpressionQuit()V

    .line 6
    return-void
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onActiveChanged(Z)V

    .line 15
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateWifiActive()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateVideoAutoPlay()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->registerWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 38
    .line 39
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->registerVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    .line 43
    .line 44
    :cond_0
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const-string v0, "isSwipeRefreshEnabled"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    .line 53
    .line 54
    const-string v0, "overScrollMode"

    .line 55
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 59
    move-result p1

    .line 60
    .line 61
    iput p1, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lai/medialab/medialabads2/MediaLabAds;->getInstance()Lai/medialab/medialabads2/MediaLabAds;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lai/medialab/medialabads2/MediaLabAds;->isInitialized()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    new-instance v0, Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, p1}, Lai/medialab/medialabads2/banners/MediaLabAdView;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 85
    .line 86
    const-string p1, "feed"

    .line 87
    .line 88
    sget-object v1, Lai/medialab/medialabads2/data/AdSize;->MEDIUM_RECTANGLE:Lai/medialab/medialabads2/data/AdSize;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1, v1}, Lai/medialab/medialabads2/banners/MediaLabAdView;->initialize(Ljava/lang/String;Lai/medialab/medialabads2/data/AdSize;)V

    .line 92
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->list_layout:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected onDataSetChanged(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/logging/ImpressionDelegate;->postImpressionRunnable()V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    .line 23
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onDestroy()V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverDestory()V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->unRegisterWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 47
    .line 48
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->unRegisterVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    .line 52
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adView:Lai/medialab/medialabads2/banners/MediaLabAdView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lai/medialab/medialabads2/banners/MediaLabAdView;->clearFriendlyObstructions()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 11
    return-void
.end method

.method protected onEmptyRetry()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 14
    :cond_0
    return-void
.end method

.method protected onErrorRetry()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 12
    :cond_0
    return-void
.end method

.method protected onHoveItemCreated(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onHoverRecycled()V
    .locals 0

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    iget-boolean p2, p0, Lcom/narvii/list/NVListFragment;->showScrollBarOnlyWhenScroll:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 9
    .line 10
    :cond_0
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 11
    .line 12
    if-eqz p2, :cond_4

    .line 13
    move-object p2, p1

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isSwipeRefresh()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isNestedScrollingChild()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    .line 30
    .line 31
    :cond_2
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setIsNestedScrollingChild(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewConfig()V

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/list/NVListFragment$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lcom/narvii/list/NVListFragment$1;-><init>(Lcom/narvii/list/NVListFragment;Landroid/widget/ListView;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    new-instance v0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0, p1}, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;-><init>(Lcom/narvii/list/NVListFragment;Lcom/narvii/app/NVFragment$MenuController;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 60
    .line 61
    :cond_3
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 71
    :cond_4
    return-void
.end method

.method public onLogLevelActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/narvii/logging/ImpressionDelegate;->onLogActiveChanged(Z)V

    .line 16
    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "__adapter"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 26
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->flingListener:Lcom/narvii/list/NVListFragment$FlingListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment$FlingListener;->run()V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->spOnPause()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onPause()V

    .line 33
    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

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

    .line 2
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getSwipeRefreshFlag()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onResume()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 15
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "isSwipeRefreshEnabled"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    .line 12
    const-string v0, "overScrollMode"

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 20
    .line 21
    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const-string v1, "adapter"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListView()V

    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x102000a

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/ListView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    sget v2, Lcom/narvii/lib/R$dimen;->list_divider_height:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/logging/ImpressionDelegate;->setListView(Landroid/view/ViewGroup;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListView()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->shouldInitSwipeRefresh()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->setupSwipeRefreshLayout()Z

    .line 50
    .line 51
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->list_frame:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Landroid/widget/FrameLayout;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    instance-of v1, v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    check-cast v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    const v0, 0x102000d

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    .line 90
    .line 91
    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    .line 92
    const/4 v2, -0x1

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-nez v1, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 106
    move-result v1

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_2
    const v1, -0x777778

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    :goto_0
    move v1, v2

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 118
    .line 119
    .line 120
    :cond_4
    const v0, 0x1020004

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 127
    const/4 v1, 0x0

    .line 128
    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->emptyIconId()I

    .line 133
    move-result v0

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 138
    .line 139
    sget v3, Lcom/narvii/lib/R$id;->empty_icon:I

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    instance-of v3, v0, Landroid/widget/ImageView;

    .line 146
    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    check-cast v0, Landroid/widget/ImageView;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->emptyIconId()I

    .line 156
    move-result v3

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    .line 161
    :cond_5
    sget v0, Lcom/narvii/lib/R$id;->empty_text:I

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object p1

    .line 166
    .line 167
    instance-of v0, p1, Landroid/widget/TextView;

    .line 168
    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    check-cast p1, Landroid/widget/TextView;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 175
    move-result v0

    .line 176
    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 181
    move-result v0

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    goto :goto_2

    .line 185
    .line 186
    .line 187
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    sget v3, Lcom/narvii/lib/R$color;->empty_text_color:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 194
    move-result v0

    .line 195
    goto :goto_3

    .line 196
    :cond_7
    :goto_2
    move v0, v2

    .line 197
    .line 198
    .line 199
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->emptyMessage()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    move-result v3

    .line 208
    .line 209
    if-nez v3, :cond_8

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    :cond_8
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 215
    const/4 v0, 0x0

    .line 216
    .line 217
    if-nez p1, :cond_9

    .line 218
    move-object p1, v0

    .line 219
    goto :goto_4

    .line 220
    .line 221
    :cond_9
    sget v3, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    :goto_4
    if-eqz p1, :cond_c

    .line 228
    .line 229
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    instance-of v3, p1, Landroid/widget/TextView;

    .line 235
    .line 236
    if-eqz v3, :cond_c

    .line 237
    .line 238
    check-cast p1, Landroid/widget/TextView;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 242
    move-result v3

    .line 243
    .line 244
    if-nez v3, :cond_b

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 248
    move-result v3

    .line 249
    .line 250
    if-eqz v3, :cond_a

    .line 251
    goto :goto_5

    .line 252
    .line 253
    .line 254
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    sget v3, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 261
    move-result v2

    .line 262
    .line 263
    .line 264
    :cond_b
    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    :cond_c
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 273
    move-result-object p1

    .line 274
    .line 275
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 276
    .line 277
    if-eqz p1, :cond_e

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 281
    move-result-object p1

    .line 282
    .line 283
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->bottomPadding(Lcom/narvii/app/NVFragment;)I

    .line 287
    move-result p1

    .line 288
    .line 289
    if-lez p1, :cond_f

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->autoAddBottomPadding()Z

    .line 293
    move-result v2

    .line 294
    .line 295
    if-eqz v2, :cond_f

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 299
    move-result v2

    .line 300
    const/4 v3, 0x1

    .line 301
    .line 302
    if-eqz v2, :cond_d

    .line 303
    :goto_6
    move v1, v3

    .line 304
    goto :goto_7

    .line 305
    .line 306
    .line 307
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 308
    move-result-object v2

    .line 309
    .line 310
    instance-of v2, v2, Lcom/narvii/app/NVBaseScrollableTabFragment;

    .line 311
    .line 312
    if-eqz v2, :cond_f

    .line 313
    goto :goto_6

    .line 314
    :cond_e
    move p1, v1

    .line 315
    .line 316
    :cond_f
    :goto_7
    if-eqz v1, :cond_10

    .line 317
    .line 318
    new-instance v1, Lcom/narvii/list/e;

    .line 319
    .line 320
    .line 321
    invoke-direct {v1, p0, p1}, Lcom/narvii/list/e;-><init>(Lcom/narvii/list/NVListFragment;I)V

    .line 322
    .line 323
    .line 324
    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 325
    .line 326
    :cond_10
    if-nez p2, :cond_11

    .line 327
    goto :goto_8

    .line 328
    .line 329
    :cond_11
    const-string p1, "adapter"

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 333
    move-result-object v0

    .line 334
    .line 335
    .line 336
    :goto_8
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;

    .line 337
    move-result-object p1

    .line 338
    .line 339
    if-eqz p1, :cond_14

    .line 340
    .line 341
    instance-of p2, p1, Lcom/narvii/list/NVAdapter;

    .line 342
    .line 343
    if-eqz p2, :cond_13

    .line 344
    move-object p2, p1

    .line 345
    .line 346
    check-cast p2, Lcom/narvii/list/NVAdapter;

    .line 347
    .line 348
    if-eqz v0, :cond_12

    .line 349
    .line 350
    .line 351
    invoke-virtual {p2, v0}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 352
    .line 353
    .line 354
    :cond_12
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 355
    .line 356
    .line 357
    :cond_13
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    .line 359
    .line 360
    :cond_14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->flyingScroll()Z

    .line 361
    move-result p1

    .line 362
    .line 363
    if-eqz p1, :cond_15

    .line 364
    .line 365
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 366
    .line 367
    new-instance p2, Lcom/narvii/list/NVListFragment$FlingListener;

    .line 368
    .line 369
    .line 370
    invoke-direct {p2, p0}, Lcom/narvii/list/NVListFragment$FlingListener;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 371
    .line 372
    iput-object p2, p0, Lcom/narvii/list/NVListFragment;->flingListener:Lcom/narvii/list/NVListFragment$FlingListener;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 376
    .line 377
    .line 378
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 379
    move-result-object p1

    .line 380
    .line 381
    .line 382
    invoke-direct {p0, p1}, Lcom/narvii/list/NVListFragment;->addAdViewFriendlyObstructions(Landroid/app/Activity;)V

    .line 383
    return-void
.end method

.method public onWifiStateChange(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    .line 8
    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->prepared()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/list/c;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/narvii/list/c;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateVideoAutoPlay()V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    .line 42
    :cond_2
    return-void
.end method

.method public resetHover()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverRecycle()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverUpdateView()V

    .line 7
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setDarkTheme(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListView()V

    .line 7
    return-void
.end method

.method public setEmptyText(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->empty_text:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_1
    return-void
.end method

.method public setEmptyView(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$id;->empty_text:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->empty_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 12
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(Landroid/view/View;)V

    return-object p1
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    sget v0, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_b

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->errorViewLayoutId()I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v3}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 42
    .line 43
    sget v2, Lcom/narvii/lib/R$id;->retry:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v2, Lcom/narvii/list/NVListFragment$6;

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/narvii/list/NVListFragment$6;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 65
    .line 66
    sget v2, Lcom/narvii/lib/R$id;->text:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    const/4 v2, -0x1

    .line 74
    .line 75
    .line 76
    const v3, -0xaaaaab

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    sget v5, Lcom/narvii/lib/R$string;->normal_error_offline1:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v5, "\n"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    sget v5, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->isDeviceOffline()Z

    .line 114
    move-result v5

    .line 115
    .line 116
    if-eqz v5, :cond_1

    .line 117
    move-object p1, v4

    .line 118
    .line 119
    .line 120
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 124
    move-result p1

    .line 125
    .line 126
    if-nez p1, :cond_3

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 130
    move-result p1

    .line 131
    .line 132
    if-eqz p1, :cond_2

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    move p1, v3

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    :goto_0
    move p1, v2

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 142
    .line 143
    sget v0, Lcom/narvii/lib/R$id;->error:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    check-cast p1, Landroid/widget/TextView;

    .line 150
    .line 151
    if-eqz p1, :cond_7

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 155
    move-result v0

    .line 156
    .line 157
    if-nez v0, :cond_6

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 161
    move-result v0

    .line 162
    .line 163
    if-eqz v0, :cond_5

    .line 164
    goto :goto_2

    .line 165
    :cond_5
    move v2, v3

    .line 166
    .line 167
    .line 168
    :cond_6
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    :cond_7
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 171
    .line 172
    sget v0, Lcom/narvii/lib/R$id;->retry:I

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    check-cast p1, Landroid/widget/TextView;

    .line 179
    .line 180
    if-eqz p1, :cond_a

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 188
    move-result v2

    .line 189
    .line 190
    if-nez v2, :cond_9

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 194
    move-result v2

    .line 195
    .line 196
    if-eqz v2, :cond_8

    .line 197
    goto :goto_3

    .line 198
    .line 199
    :cond_8
    sget v2, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    .line 200
    goto :goto_4

    .line 201
    .line 202
    :cond_9
    :goto_3
    sget v2, Lcom/narvii/lib/R$color;->button_text_light:I

    .line 203
    .line 204
    .line 205
    :goto_4
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 206
    move-result v0

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    .line 211
    :cond_a
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    goto :goto_5

    .line 216
    .line 217
    :cond_b
    if-nez p1, :cond_c

    .line 218
    .line 219
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 220
    .line 221
    if-eqz p1, :cond_c

    .line 222
    .line 223
    const/16 v0, 0x8

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_c
    :goto_5
    return-void
.end method

.method public setHoverAdapter(Lcom/narvii/list/HoverAdapter;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->hoverAdapter:Lcom/narvii/list/HoverAdapter;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 7
    .line 8
    instance-of v0, p1, Lcom/narvii/widget/NVListView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/list/NVListFragment$4;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/list/NVListFragment$4;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/narvii/list/NVListFragment$5;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/list/NVListFragment$5;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 34
    const/4 v0, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setSectionHeaderEnabled(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverUpdateView()V

    .line 41
    :cond_1
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->adapterObserver:Landroid/database/DataSetObserver;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapterObserver:Landroid/database/DataSetObserver;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 40
    .line 41
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 47
    move-result-object v0

    .line 48
    move-object v1, p1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/list/NVAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->onDataSetChanged(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

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

.method protected setListViewVisibility(Landroid/widget/ListView;Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x4

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment;->listViewFirstBecomeVisible:Z

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->listViewFirstBecomeVisible:Z

    .line 29
    :cond_2
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iput p1, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 19
    :cond_1
    return-void
.end method

.method public setScrollToHideKeyboard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->scrollToHideKeyboard:Z

    return-void
.end method

.method protected setSectionHeaderTag()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverBelowOverlayPlaceHolder()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    return v0
.end method

.method public setShowScrollBarOnlyWhenScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->showScrollBarOnlyWhenScroll:Z

    return-void
.end method

.method public setSwipeRefreshEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    return-void
.end method

.method protected setupSwipeRefreshLayout()Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    instance-of v2, v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 20
    goto :goto_2

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v2

    .line 25
    move v4, v3

    .line 26
    :goto_0
    const/4 v5, -0x1

    .line 27
    .line 28
    if-ge v4, v2, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    move-result-object v6

    .line 33
    .line 34
    if-ne v6, v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v4, v5

    .line 43
    .line 44
    :goto_1
    if-eq v4, v5, :cond_3

    .line 45
    .line 46
    new-instance v2, Lcom/narvii/list/NVListFragment$2;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, p0, v6}, Lcom/narvii/list/NVListFragment$2;-><init>(Lcom/narvii/list/NVListFragment;Landroid/content/Context;)V

    .line 54
    .line 55
    iput-object v2, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    iget-object v6, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 62
    .line 63
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    .line 66
    invoke-direct {v7, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isNestedScrollingChild()Z

    .line 82
    move-result v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setIsNestedScrollingChild(Z)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 91
    .line 92
    const-string v0, "config"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 108
    move-result v0

    .line 109
    .line 110
    .line 111
    filled-new-array {v0}, [I

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 119
    move-result v0

    .line 120
    .line 121
    if-lez v0, :cond_4

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 125
    move-result v1

    .line 126
    add-int/2addr v0, v1

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    sget v2, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 136
    move-result v1

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    .line 140
    move-result v2

    .line 141
    add-int/2addr v1, v2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    sget v4, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 151
    move-result v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    .line 155
    move-result v4

    .line 156
    add-int/2addr v2, v4

    .line 157
    .line 158
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 159
    add-int/2addr v1, v0

    .line 160
    add-int/2addr v0, v2

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v3, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 164
    .line 165
    :cond_5
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 166
    .line 167
    if-eqz v0, :cond_6

    .line 168
    const/4 v3, 0x1

    .line 169
    :cond_6
    return v3
.end method

.method protected shouldInitSwipeRefresh()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isSwipeRefresh()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

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

.method protected showListviewWhenLoading()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public smoothScrollToTop()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 6
    .line 7
    instance-of v0, v0, Lcom/narvii/list/HideTopAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    const/16 v3, 0x190

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 18
    return-void
.end method

.method protected updateListView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 19
    .line 20
    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setBlinkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListDividerDrawable()Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 54
    .line 55
    iget v1, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 59
    return-void
.end method

.method public updateListViewConfig()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActionBarOverlaying()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVListView;->addActionBarOverlayHeader(Lcom/narvii/app/NVContext;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 60
    move-result v2

    .line 61
    add-int/2addr v1, v2

    .line 62
    .line 63
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method protected updateListViewContentBackground()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->setListContentBgWhenHasPageBackground()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    const/4 v2, -0x1

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 43
    .line 44
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public updateThemeUI()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    filled-new-array {v0}, [I

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 30
    :cond_0
    return-void
.end method

.method protected updateVideoAutoPlay()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "prefs"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/content/SharedPreferences;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->prefs:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->prefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-string/jumbo v1, "video_auto_play"

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 39
    :goto_0
    return-void
.end method

.method protected updateViews()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-eqz v0, :cond_18

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v3}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    .line 29
    move-result v3

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    move v3, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v0, :cond_17

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    goto/16 :goto_9

    .line 54
    .line 55
    :cond_3
    instance-of v3, v0, Lcom/narvii/list/NVAdapter;

    .line 56
    const/4 v4, 0x1

    .line 57
    .line 58
    if-eqz v3, :cond_f

    .line 59
    .line 60
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 68
    move-result v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    if-eqz v6, :cond_4

    .line 75
    move v6, v4

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move v6, v2

    .line 78
    .line 79
    :goto_1
    iget-object v7, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 80
    .line 81
    if-nez v3, :cond_6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    .line 85
    move-result v8

    .line 86
    .line 87
    if-eqz v8, :cond_5

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move v4, v2

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_2
    invoke-virtual {p0, v7, v4}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 93
    .line 94
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 95
    .line 96
    if-eqz v4, :cond_a

    .line 97
    .line 98
    if-eqz v3, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->forceShowListWhenEmpty()Z

    .line 102
    move-result v7

    .line 103
    .line 104
    if-nez v7, :cond_8

    .line 105
    .line 106
    if-eqz v5, :cond_8

    .line 107
    .line 108
    .line 109
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    .line 110
    move-result v7

    .line 111
    .line 112
    if-eqz v7, :cond_9

    .line 113
    :cond_8
    move v7, v2

    .line 114
    goto :goto_3

    .line 115
    :cond_9
    move v7, v1

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    :cond_a
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 121
    .line 122
    if-eqz v4, :cond_c

    .line 123
    .line 124
    if-eqz v3, :cond_b

    .line 125
    .line 126
    if-eqz v5, :cond_b

    .line 127
    .line 128
    if-nez v6, :cond_b

    .line 129
    move v5, v2

    .line 130
    goto :goto_4

    .line 131
    :cond_b
    move v5, v1

    .line 132
    .line 133
    .line 134
    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    :cond_c
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    .line 137
    .line 138
    if-eqz v4, :cond_e

    .line 139
    .line 140
    if-nez v3, :cond_d

    .line 141
    .line 142
    if-nez v6, :cond_d

    .line 143
    move v1, v2

    .line 144
    .line 145
    .line 146
    :cond_d
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :cond_e
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setErrorMessage(Ljava/lang/String;)V

    .line 154
    goto :goto_9

    .line 155
    .line 156
    .line 157
    :cond_f
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 158
    move-result v0

    .line 159
    .line 160
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 161
    .line 162
    if-eqz v0, :cond_11

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    .line 166
    move-result v5

    .line 167
    .line 168
    if-eqz v5, :cond_10

    .line 169
    goto :goto_5

    .line 170
    :cond_10
    move v4, v2

    .line 171
    .line 172
    .line 173
    :cond_11
    :goto_5
    invoke-virtual {p0, v3, v4}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 174
    .line 175
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 176
    .line 177
    if-eqz v3, :cond_14

    .line 178
    .line 179
    if-eqz v0, :cond_13

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    .line 183
    move-result v4

    .line 184
    .line 185
    if-eqz v4, :cond_12

    .line 186
    goto :goto_6

    .line 187
    :cond_12
    move v4, v1

    .line 188
    goto :goto_7

    .line 189
    :cond_13
    :goto_6
    move v4, v2

    .line 190
    .line 191
    .line 192
    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    :cond_14
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 195
    .line 196
    if-eqz v3, :cond_16

    .line 197
    .line 198
    if-eqz v0, :cond_15

    .line 199
    goto :goto_8

    .line 200
    :cond_15
    move v2, v1

    .line 201
    .line 202
    .line 203
    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    :cond_16
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    .line 206
    .line 207
    if-eqz v0, :cond_17

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    :cond_17
    :goto_9
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverUpdateView()V

    .line 214
    return-void

    .line 215
    .line 216
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    .line 219
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 220
    throw v0
.end method

.method protected updateWifiActive()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "connectivity"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 30
    move-result v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    if-ne v0, v1, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    .line 43
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    return-void
.end method

.method public videoAutoPlayChange(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 17
    .line 18
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->prepared()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/list/d;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/narvii/list/d;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    .line 48
    return-void
.end method
