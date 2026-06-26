.class public abstract Lcom/narvii/paging/NVRecyclerViewFragment;
.super Lcom/narvii/app/NVFragment;
.source "NVRecyclerViewFragment.java"

# interfaces
.implements Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;
.implements Lcom/narvii/setting/VideoAutoPlayChangeListener;
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
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

.field protected layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

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

.field scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field protected snapHelper:Landroid/support/v7/widget/SnapHelper;

.field protected swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field public videoAutoPlay:Z

.field protected wifiActive:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->curSnapPosition:I

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    .line 201
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$1;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 235
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$2;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 248
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$3;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->errorRetryClickListener:Landroid/view/View$OnClickListener;

    .line 257
    new-instance v1, Lcom/narvii/paging/NVRecyclerViewFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$4;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    iput-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshClickListener:Landroid/view/View$OnClickListener;

    .line 295
    iput v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->position:I

    .line 297
    new-instance v0, Lcom/narvii/paging/NVRecyclerViewFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/paging/NVRecyclerViewFragment$5;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerViewFirstBecomeVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/paging/NVRecyclerViewFragment;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->resetPvId()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/paging/NVRecyclerViewFragment;Z)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/paging/NVRecyclerViewFragment;)Lcom/narvii/logging/ImpressionDelegate;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/paging/NVRecyclerViewFragment;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->curSnapPosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/narvii/paging/NVRecyclerViewFragment;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->curSnapPosition:I

    return p1
.end method

.method private ensureGlobalPageStatusView(Landroid/view/View;)V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->showGlobalPageStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lcom/narvii/paging/state/PageStatusView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/paging/state/PageStatusView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 165
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    sget v0, Lcom/narvii/lib/R$id;->status_view:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 166
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 167
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setRecyclerViewVisibility(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 536
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 537
    iget-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerViewFirstBecomeVisible:Z

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 538
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz p2, :cond_1

    .line 539
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_1
    const/4 p1, 0x1

    .line 541
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerViewFirstBecomeVisible:Z

    :cond_2
    return-void
.end method

.method private updateWifiActive()V
    .locals 3

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/ImpressionDelegate;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected clearImpression()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->clearImpression()V

    return-void
.end method

.method protected abstract createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 466
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createSnapHelper()Landroid/support/v7/widget/SnapHelper;
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

    .line 458
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 462
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

    .line 628
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

    .line 94
    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    return v0
.end method

.method public synthetic lambda$onWifiStateChange$0$NVRecyclerViewFragment()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    return-void
.end method

.method public synthetic lambda$videoAutoPlayChange$1$NVRecyclerViewFragment()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    return-void
.end method

.method public logImpression()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    return-void
.end method

.method public logImpressionQuit()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpressionQuit()V

    return-void
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 2

    .line 451
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 452
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz v1, :cond_0

    .line 453
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->createSnapHelper()Landroid/support/v7/widget/SnapHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroid/support/v7/widget/SnapHelper;

    .line 66
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate;

    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 68
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 70
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateWifiActive()V

    .line 72
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateVideoAutoPlay()V

    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->registerWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 74
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->registerVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const-string v1, "isRefreshEnable"

    .line 77
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 84
    sget p3, Lcom/narvii/lib/R$layout;->fragment_recycleview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 402
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 403
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 176
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 177
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->removeDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onDestroy()V

    .line 182
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->unRegisterWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 183
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->unRegisterVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    :cond_0
    return-void
.end method

.method public onLogLevelActiveChanged(Z)V
    .locals 1

    .line 522
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 526
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/ImpressionDelegate;->onLogActiveChanged(Z)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    const-string v0, "__adapter"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    goto :goto_0

    .line 623
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 435
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 436
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 439
    instance-of v2, v1, Lcom/narvii/paging/PageView;

    if-eqz v2, :cond_0

    .line 440
    check-cast v1, Lcom/narvii/paging/PageView;

    invoke-virtual {v1}, Lcom/narvii/paging/PageView;->onPause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz v1, :cond_2

    .line 444
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onPause()V

    :cond_2
    return-void
.end method

.method protected onPlayerViewChanged(ILandroid/view/View;)V
    .locals 0

    .line 394
    instance-of p1, p2, Lcom/narvii/paging/PageView;

    if-eqz p1, :cond_0

    .line 395
    check-cast p2, Lcom/narvii/paging/PageView;

    invoke-virtual {p2}, Lcom/narvii/paging/PageView;->resetPvId()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onRefresh(Lcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public onRefresh(Lcom/narvii/paging/source/PageRequestCallback;)V
    .locals 2

    .line 197
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->outerRefreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    .line 198
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getSwipeRefreshFlag()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshCallback:Lcom/narvii/paging/source/PageRequestCallback;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 411
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 412
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 415
    instance-of v2, v1, Lcom/narvii/paging/PageView;

    if-eqz v2, :cond_0

    .line 416
    check-cast v1, Lcom/narvii/paging/PageView;

    invoke-virtual {v1}, Lcom/narvii/paging/PageView;->onResume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz v1, :cond_2

    .line 420
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onResume()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    const-string v1, "isRefreshEnable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

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

    .line 612
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    .line 613
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 119
    sget p2, Lcom/narvii/lib/R$id;->swipe_refresh:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 120
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->isRefreshEnable()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 122
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 126
    :cond_0
    sget p2, Lcom/narvii/lib/R$id;->recycle_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/recycleview/NVRecyclerView;

    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 127
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p2, v0}, Lcom/narvii/logging/ImpressionDelegate;->setListView(Landroid/view/ViewGroup;)V

    .line 129
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 130
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 131
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 132
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 133
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 135
    sget p2, Lcom/narvii/lib/R$id;->status_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/paging/state/PageStatusView;

    iput-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    .line 136
    invoke-direct {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->ensureGlobalPageStatusView(Landroid/view/View;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->refreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setEmptyRetryListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->errorRetryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/state/PageStatusView;->setErrorRetryListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroid/support/v7/widget/SnapHelper;

    if-eqz p1, :cond_2

    .line 144
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->dataSetChangeListener:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 147
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 149
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz p1, :cond_3

    iget-boolean p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz p2, :cond_3

    .line 150
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->showGlobalPageStatus()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    :cond_4
    return-void
.end method

.method public onWifiStateChange(Z)V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-nez v0, :cond_0

    return-void

    .line 580
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z

    if-eq p1, v1, :cond_2

    .line 581
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z

    if-eqz p1, :cond_1

    .line 583
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->prepared()Z

    move-result p1

    if-nez p1, :cond_1

    .line 584
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    new-instance v0, Lcom/narvii/paging/-$$Lambda$NVRecyclerViewFragment$fB62vzOHNTC-SG607XD_G13SLZU;

    invoke-direct {v0, p0}, Lcom/narvii/paging/-$$Lambda$NVRecyclerViewFragment$fB62vzOHNTC-SG607XD_G13SLZU;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateVideoAutoPlay()V

    .line 588
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    :cond_2
    return-void
.end method

.method public setEmptyMessage(I)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setEmptyMessage(I)V

    :cond_0
    return-void
.end method

.method public setGlobalEmptyView(I)Landroid/view/View;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setGlobalErrorView(I)Landroid/view/View;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setErrorView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setGlobalLoadingView(I)Landroid/view/View;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p1}, Lcom/narvii/paging/state/PageStatusView;->setLoadingView(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method public setSwipeRefreshEnabled(Z)V
    .locals 1

    .line 98
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->isSwipeRefreshEnabled:Z

    .line 99
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->isRefreshEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

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

    .line 427
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->updateChildrenVisibleHint(Z)V

    .line 428
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    instance-of v2, v1, Lcom/narvii/paging/PageView;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->playerView:Landroid/view/View;

    check-cast v0, Lcom/narvii/paging/PageView;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/PageView;->setVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public updateThemeUI()V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 639
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 640
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    :cond_0
    return-void
.end method

.method protected updateVideoAutoPlay()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    return-void
.end method

.method public updateViews()V
    .locals 7

    .line 267
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->showGlobalPageStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 273
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 274
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    iget-object v6, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v6}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/narvii/paging/state/PageStatusView;->setErrorMessage(Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/narvii/paging/state/PageStatusView;->setDarkTheme(Z)V

    if-eqz v0, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 284
    :goto_1
    iget-object v6, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    invoke-virtual {v6, v5}, Lcom/narvii/paging/state/PageStatusView;->updateStatus(I)V

    .line 285
    iget-object v5, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->pageStatusView:Lcom/narvii/paging/state/PageStatusView;

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    iget-object v1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0, v0, v3}, Lcom/narvii/paging/NVRecyclerViewFragment;->setRecyclerViewVisibility(Landroid/support/v7/widget/RecyclerView;Z)V

    return-void
.end method

.method public videoAutoPlayChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 595
    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 597
    iget-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->wifiActive:Z

    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 599
    iput-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    .line 601
    :goto_0
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-nez p1, :cond_2

    return-void

    .line 604
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->prepared()Z

    move-result p1

    if-nez p1, :cond_3

    .line 605
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    new-instance v0, Lcom/narvii/paging/-$$Lambda$NVRecyclerViewFragment$wKn9yWsPZD0SeBL4id-2AA66dI4;

    invoke-direct {v0, p0}, Lcom/narvii/paging/-$$Lambda$NVRecyclerViewFragment$wKn9yWsPZD0SeBL4id-2AA66dI4;-><init>(Lcom/narvii/paging/NVRecyclerViewFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 607
    :cond_3
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    iget-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    return-void
.end method
