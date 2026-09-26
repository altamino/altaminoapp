.class public abstract Lcom/narvii/paging/NVRecyclerViewFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;
.implements Lcom/narvii/setting/VideoAutoPlayChangeListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/narvii/logging/Impression/ImpressionHost;


# instance fields
.field protected adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field connectivityManager:Landroid/net/ConnectivityManager;

.field private curSnapPosition:I

.field dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

.field errorRetryClickListener:Landroid/view/View$OnClickListener;

.field first:Z

.field private impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

.field protected isSwipeRefreshEnabled:Z

.field protected layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field protected mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

.field protected outerRefreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

.field protected pageStatusView:Lcom/narvii/paging/state/PageStatusView;

.field playerView:Landroid/view/View;

.field position:I

.field prefs:Landroid/content/SharedPreferences;

.field protected recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

.field private recyclerViewFirstBecomeVisible:Z

.field refreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

.field refreshClickListener:Landroid/view/View$OnClickListener;

.field scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field protected snapHelper:Landroidx/recyclerview/widget/SnapHelper;

.field protected swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public videoAutoPlay:Z

.field protected wifiActive:Z


# direct methods
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
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->curSnapPosition:I

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$1;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 18
    .line 19
    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$2;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$3;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$3;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 32
    .line 33
    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->errorRetryClickListener:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$4;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$4;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshClickListener:Landroid/view/View$OnClickListener;

    .line 41
    .line 42
    iput v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/paging/NVRecyclerViewFragment$5;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$5;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 50
    const/4 v0, 0x0

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerViewFirstBecomeVisible:Z

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->resetPvId()V

    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    .line 4
    return-void
.end method

.method private ensureGlobalPageStatusView(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->showGlobalPageStatus()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/paging/state/PageStatusView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1}, Lcom/narvii/paging/state/PageStatusView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 32
    .line 33
    sget p1, Lcom/narvii/lib/R$id;->status_view:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 53
    const/4 v2, -0x1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onWifiStateChange$0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 8
    return-void
.end method

.method private synthetic lambda$videoAutoPlayChange$1()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 8
    return-void
.end method

.method public static synthetic n(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->lambda$onWifiStateChange$0()V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->lambda$videoAutoPlayChange$1()V

    return-void
.end method

.method static bridge synthetic p(Lcom/narvii/paging/NVRecyclerViewFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->curSnapPosition:I

    return p0
.end method

.method static bridge synthetic q(Lcom/narvii/paging/NVRecyclerViewFragment;)Lcom/narvii/logging/ImpressionDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/paging/NVRecyclerViewFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->curSnapPosition:I

    return-void
.end method

.method private setRecyclerViewVisibility(Landroidx/recyclerview/widget/RecyclerView;Z)V
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
    iget-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerViewFirstBecomeVisible:Z

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-boolean p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

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
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerViewFirstBecomeVisible:Z

    .line 29
    :cond_2
    return-void
.end method

.method private updateWifiActive()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->connectivityManager:Landroid/net/ConnectivityManager;

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
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->connectivityManager:Landroid/net/ConnectivityManager;

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
    iput-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    return-void
.end method


# virtual methods
.method public addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/logging/ImpressionDelegate;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 6
    return-void
.end method

.method protected clearImpression()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->clearImpression()V

    .line 6
    return-void
.end method

.method protected abstract createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.end method

.method public createLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    return-object v0
.end method

.method protected createSnapHelper()Landroidx/recyclerview/widget/SnapHelper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected firstShownPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    return-object v0
.end method

.method protected getSwipeRefreshFlag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isRefreshEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    return v0
.end method

.method public logImpression()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

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
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

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
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

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
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->createSnapHelper()Landroidx/recyclerview/widget/SnapHelper;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate;-><init>(Lcom/narvii/app/NVFragment;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateWifiActive()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateVideoAutoPlay()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->registerWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 42
    .line 43
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->registerVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    .line 47
    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const-string v0, "isRefreshEnable"

    .line 51
    const/4 v1, 0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    move-result p1

    .line 56
    .line 57
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    .line 58
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->fragment_recycleview:I

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

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    .line 11
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->removeDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onDestroy()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->unRegisterWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 31
    .line 32
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->unRegisterVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    .line 36
    :cond_0
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
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

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
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "__adapter"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    .line 22
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    instance-of v2, v1, Lcom/narvii/paging/PageView;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/paging/PageView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/paging/PageView;->onPause()V

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onPause()V

    .line 46
    :cond_2
    return-void
.end method

.method protected onPlayerViewChanged(ILandroid/view/View;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    instance-of p1, p2, Lcom/narvii/paging/PageView;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lcom/narvii/paging/PageView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/paging/PageView;->resetPvId()V

    .line 10
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onRefresh(Lcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public onRefresh(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->outerRefreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 2
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getSwipeRefreshFlag()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    instance-of v2, v1, Lcom/narvii/paging/PageView;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/paging/PageView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/paging/PageView;->onResume()V

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onResume()V

    .line 46
    :cond_2
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
    const-string v0, "isRefreshEnable"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method protected onScrollNext(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method protected onSnapPotionChanged(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onThemeChange(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq p1, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    .line 22
    .line 23
    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    .line 24
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$id;->swipe_refresh:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->isRefreshEnable()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 34
    .line 35
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->recycle_layout:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lcom/narvii/logging/ImpressionDelegate;->setListView(Landroid/view/ViewGroup;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->createLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    .line 68
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 69
    const/4 v0, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 73
    .line 74
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 80
    .line 81
    sget p2, Lcom/narvii/lib/R$id;->status_view:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    check-cast p2, Lcom/narvii/paging/state/PageStatusView;

    .line 88
    .line 89
    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->ensureGlobalPageStatusView(Landroid/view/View;)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 95
    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    const/16 p2, 0x8

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshClickListener:Landroid/view/View$OnClickListener;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setEmptyRetryListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->errorRetryClickListener:Landroid/view/View$OnClickListener;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setErrorRetryListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    .line 118
    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 125
    .line 126
    :cond_2
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 127
    .line 128
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 137
    .line 138
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 139
    .line 140
    if-eqz p1, :cond_3

    .line 141
    .line 142
    iget-boolean p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 143
    .line 144
    if-eqz p2, :cond_3

    .line 145
    .line 146
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 147
    .line 148
    .line 149
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->showGlobalPageStatus()Z

    .line 153
    move-result p1

    .line 154
    .line 155
    if-eqz p1, :cond_4

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 159
    :cond_4
    return-void
.end method

.method public onWifiStateChange(Z)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z

    .line 8
    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z

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
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/paging/a;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/paging/a;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateVideoAutoPlay()V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    .line 40
    :cond_2
    return-void
.end method

.method public setEmptyMessage(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setEmptyMessage(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setGlobalEmptyView(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setEmptyView(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public setGlobalErrorView(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setErrorView(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public setGlobalLoadingView(I)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setLoadingView(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setSwipeRefreshEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->isRefreshEnable()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 14
    :cond_0
    return-void
.end method

.method protected showGlobalPageStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->updateChildrenVisibleHint(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 10
    .line 11
    instance-of v2, v1, Lcom/narvii/paging/PageView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/paging/PageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    .line 28
    :cond_0
    return-void
.end method

.method public updateThemeUI()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

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
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

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
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 30
    :cond_0
    return-void
.end method

.method protected updateVideoAutoPlay()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->prefs:Landroid/content/SharedPreferences;

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
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->prefs:Landroid/content/SharedPreferences;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->prefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    const-string v1, "video_auto_play"

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
    iput-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    iput-boolean v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 39
    :goto_0
    return-void
.end method

.method public updateViews()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->showGlobalPageStatus()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    move v2, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v2, v3

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 45
    xor-int/2addr v0, v4

    .line 46
    .line 47
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v6}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 57
    .line 58
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 62
    move-result v6

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v6}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    const/4 v5, 0x2

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    if-eqz v2, :cond_3

    .line 72
    move v5, v4

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_3
    if-eqz v1, :cond_4

    .line 76
    const/4 v5, 0x3

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move v5, v3

    .line 79
    .line 80
    :goto_1
    iget-object v6, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v5}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 84
    .line 85
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 86
    .line 87
    if-nez v1, :cond_6

    .line 88
    .line 89
    if-nez v2, :cond_6

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-nez v0, :cond_5

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const/4 v0, 0x4

    .line 102
    goto :goto_3

    .line 103
    :cond_6
    :goto_2
    move v0, v3

    .line 104
    .line 105
    .line 106
    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 114
    move-result v1

    .line 115
    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    if-nez v2, :cond_7

    .line 119
    move v3, v4

    .line 120
    .line 121
    .line 122
    :cond_7
    invoke-direct {p0, v0, v3}, Lcom/narvii/paging/NVRecyclerViewFragment;->setRecyclerViewVisibility(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 123
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
    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 17
    .line 18
    :goto_0
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    return-void

    .line 22
    .line 23
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->prepared()Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 34
    .line 35
    new-instance v0, Lcom/narvii/paging/b;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/narvii/paging/b;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    :cond_3
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    .line 49
    return-void
.end method
