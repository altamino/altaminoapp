.class public abstract Lcom/narvii/list/NVListFragment;
.super Lcom/narvii/app/NVFragment;
.source "NVListFragment.java"

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
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 908
    sput-object v1, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    new-array v0, v0, [I

    const v1, 0x101009c

    aput v1, v0, v2

    .line 909
    sput-object v0, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    new-array v0, v2, [I

    .line 910
    sput-object v0, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    .line 1049
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    .line 607
    new-instance v1, Lcom/narvii/list/NVListFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/list/NVListFragment$3;-><init>(Lcom/narvii/list/NVListFragment;)V

    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->adapterObserver:Landroid/database/DataSetObserver;

    .line 863
    new-instance v1, Lcom/narvii/list/NVListFragment$7;

    invoke-direct {v1, p0}, Lcom/narvii/list/NVListFragment$7;-><init>(Lcom/narvii/list/NVListFragment;)V

    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 1010
    new-instance v1, Lcom/narvii/list/NVListFragment$8;

    invoke-direct {v1, p0}, Lcom/narvii/list/NVListFragment$8;-><init>(Lcom/narvii/list/NVListFragment;)V

    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->refreshCallback:Lcom/narvii/util/Callback;

    const/4 v1, -0x1

    .line 1056
    iput v1, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    .line 1057
    iput v1, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    .line 1059
    iput v1, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    .line 1061
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    .line 1377
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->listViewFirstBecomeVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/NVListFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->scrollToHideKeyboard:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/list/NVListFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->showScrollBarOnlyWhenScroll:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/list/NVListFragment;)Landroid/widget/ListAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/list/NVListFragment;Z)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/list/NVListFragment;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->resetPvId()V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/list/NVListFragment;Z)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->sendPageViewEvent(Z)V

    return-void
.end method

.method private getLastHoverPosition(Lcom/narvii/list/HoverAdapter;I)I
    .locals 1

    :goto_0
    if-ltz p2, :cond_1

    .line 1200
    invoke-interface {p1, p2}, Lcom/narvii/list/HoverAdapter;->isHover(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private hoverDestory()V
    .locals 1

    const/4 v0, 0x0

    .line 1231
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverAdapter:Lcom/narvii/list/HoverAdapter;

    .line 1232
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 1233
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 1234
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    return-void
.end method

.method private hoverRecycle()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    .line 1218
    iget v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    iput v0, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    :cond_1
    const/4 v0, -0x1

    .line 1220
    iput v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    const/4 v1, 0x0

    .line 1221
    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 1222
    iput v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    .line 1223
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->onHoverRecycled()V

    return-void
.end method

.method private isDeviceOffline()Z
    .locals 3

    const/4 v0, 0x0

    .line 784
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    .line 785
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 786
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method


# virtual methods
.method public addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/ImpressionDelegate;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method protected autoAddBottomPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blinkItem(Ljava/lang/String;ZJ)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 1243
    new-instance v0, Lcom/narvii/list/NVListFragment$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/list/NVListFragment$9;-><init>(Lcom/narvii/list/NVListFragment;Ljava/lang/String;Z)V

    invoke-static {v0, p3, p4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1250
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 1252
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p3

    .line 1253
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p4

    .line 1254
    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p3}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    invoke-interface {p4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_6

    add-int v5, v4, v0

    if-ge v5, v2, :cond_6

    if-ltz v0, :cond_6

    .line 1256
    invoke-interface {p4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 1257
    instance-of v7, v6, Lcom/narvii/model/NVObject;

    if-eqz v7, :cond_5

    check-cast v6, Lcom/narvii/model/NVObject;

    invoke-virtual {v6}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1258
    invoke-virtual {p3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1259
    instance-of p2, p3, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_2

    .line 1260
    move-object p2, p3

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v5}, Lcom/narvii/widget/NVListView;->startBlinkLong(I)V

    .line 1262
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    const/16 p4, 0xc8

    if-gez p2, :cond_3

    .line 1263
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p1, p4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_1

    .line 1264
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_4

    .line 1265
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1, p4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_8

    .line 1272
    invoke-interface {p4}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    :goto_2
    if-ge v3, p2, :cond_8

    .line 1273
    invoke-interface {p4, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1274
    instance-of v1, v0, Lcom/narvii/model/NVObject;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1275
    invoke-virtual {p3, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1277
    new-instance v0, Lcom/narvii/list/NVListFragment$10;

    invoke-direct {v0, p0, v3, p1}, Lcom/narvii/list/NVListFragment$10;-><init>(Lcom/narvii/list/NVListFragment;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method protected canChildScrollUp()Ljava/lang/Boolean;
    .locals 2

    .line 1043
    :try_start_0
    sget-object v0, Lcom/narvii/list/NVListFragment;->OVERRIDES:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    .line 1045
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public canScrollUp()Z
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 893
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected clearImpression()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->clearImpression()V

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

    .line 779
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

    .line 236
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->color_default_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getHoveFrameMarginTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHoverCurrentView()Landroid/view/View;
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHoverTopOffset()I
    .locals 1

    .line 1191
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverBelowOverlayPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getTotalOverlaySize()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 936
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Lcom/narvii/lib/R$color;->list_divider:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v2, Lcom/narvii/lib/R$color;->list_divider_dark:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 913
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 915
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getSelectorLightColor()I

    move-result v1

    goto :goto_1

    .line 916
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getSelectorDarkColor()I

    move-result v1

    .line 920
    :goto_1
    sget-object v2, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 921
    sget-object v2, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 922
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 2

    .line 928
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->list_selector_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getSelectorLightColor()I
    .locals 2

    .line 932
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->list_selector_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getSwipeRefreshFlag()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method

.method public getVideoDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 1

    .line 1312
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

    .line 1077
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverBelowOverlayPlaceHolder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1079
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1080
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    move-result v0

    .line 1082
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    .line 1084
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_0
    if-ge v2, v4, :cond_2

    add-int v6, v2, v3

    if-ge v6, v5, :cond_2

    if-ltz v3, :cond_2

    .line 1087
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 1091
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v0, :cond_1

    return v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    .line 1098
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    return p1
.end method

.method protected hoverUpdateView()V
    .locals 11

    .line 1106
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->hoverAdapter:Lcom/narvii/list/HoverAdapter;

    if-eqz v1, :cond_d

    iget-boolean v2, p0, Lcom/narvii/list/NVListFragment;->hoverUpdating:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1111
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->hoverFirstVisiblePosition(Landroid/widget/ListView;)I

    move-result v0

    if-ltz v0, :cond_c

    .line 1112
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto/16 :goto_1

    .line 1116
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/narvii/list/NVListFragment;->getLastHoverPosition(Lcom/narvii/list/HoverAdapter;I)I

    move-result v2

    .line 1118
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverChangeTitle()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    if-eq v2, v4, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    :cond_2
    invoke-virtual {p0, v5}, Lcom/narvii/list/NVListFragment;->hoverChange(Ljava/lang/Object;)V

    return-void

    .line 1123
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->setSectionHeaderTag()Z

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-ne v0, v2, :cond_4

    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 1124
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/narvii/widget/NVListView;->SECTION_HEADER_TAG:I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v2, -0x1

    .line 1128
    :cond_4
    iget v3, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    if-ne v3, v2, :cond_5

    iget-boolean v3, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    if-eqz v3, :cond_9

    .line 1131
    :cond_5
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverRecycle()V

    if-eq v2, v4, :cond_9

    .line 1134
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoverTopOffset()I

    move-result v3

    int-to-float v3, v3

    .line 1136
    iget-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    if-nez v8, :cond_6

    .line 1137
    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/narvii/lib/R$layout;->list_hover_frame:I

    iget-object v10, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 1138
    invoke-virtual {v8, v9, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/list/ListHoverFrame;

    iput-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 1139
    iget-object v8, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1141
    :cond_6
    iget-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    float-to-int v3, v3

    .line 1142
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getHoveFrameMarginTop()I

    move-result v9

    add-int/2addr v3, v9

    .line 1141
    invoke-virtual {v8, v7, v3, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1146
    iput v2, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentPosition:I

    .line 1147
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    iput v3, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    .line 1148
    iget v3, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentType:I

    iget v8, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    if-ne v3, v8, :cond_7

    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    goto :goto_0

    :cond_7
    move-object v3, v5

    .line 1150
    :goto_0
    iput v4, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleType:I

    .line 1151
    iput-object v5, p0, Lcom/narvii/list/NVListFragment;->hoverRecycleView:Landroid/view/View;

    .line 1152
    iput-boolean v6, p0, Lcom/narvii/list/NVListFragment;->hoverUpdating:Z

    .line 1153
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    iget-object v8, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    .line 1154
    invoke-interface {v4, v2, v3, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    .line 1155
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/narvii/list/NVListFragment;->onHoveItemCreated(Landroid/view/View;)V

    .line 1156
    iput-boolean v7, p0, Lcom/narvii/list/NVListFragment;->hoverUpdating:Z

    .line 1157
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1158
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-eqz v3, :cond_8

    .line 1159
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1160
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1162
    :cond_8
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    :cond_9
    iput-boolean v7, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    add-int/2addr v0, v6

    .line 1169
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->hoverCurrentView:Landroid/view/View;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1170
    invoke-interface {v1, v0}, Lcom/narvii/list/HoverAdapter;->isHover(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-le v0, v6, :cond_a

    .line 1171
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1173
    :cond_a
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->hoverView:Lcom/narvii/list/ListHoverFrame;

    if-eqz v0, :cond_b

    .line 1174
    invoke-virtual {v0, v5}, Lcom/narvii/list/ListHoverFrame;->setAlignView(Landroid/view/View;)V

    :cond_b
    return-void

    .line 1113
    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverRecycle()V

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

    .line 1007
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onViewCreated$0$NVListFragment(I)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVListView;->setFooterPadding(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onWifiStateChange$1$NVListFragment()V
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    return-void
.end method

.method public synthetic lambda$videoAutoPlayChange$2$NVListFragment()V
    .locals 2

    .line 1372
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/narvii/nvplayerview/delegate/IVideoListView;

    invoke-interface {v0, v1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    return-void
.end method

.method public logImpression()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    return-void
.end method

.method public logImpressionQuit()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

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

    .line 616
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActiveChanged(Z)V

    .line 617
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz v1, :cond_0

    .line 618
    invoke-interface {v0, p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 114
    new-instance v0, Lcom/narvii/logging/ImpressionDelegate;

    invoke-direct {v0, p0}, Lcom/narvii/logging/ImpressionDelegate;-><init>(Lcom/narvii/app/NVFragment;)V

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    .line 115
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateWifiActive()V

    .line 117
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateVideoAutoPlay()V

    .line 118
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->registerWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 119
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->registerVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "isSwipeRefreshEnabled"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    const/4 v0, 0x0

    const-string v1, "overScrollMode"

    .line 123
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 130
    sget p3, Lcom/narvii/lib/R$layout;->list_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDataSetChanged(Landroid/widget/ListAdapter;)V
    .locals 1

    const/4 p1, 0x1

    .line 632
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->hoverDirty:Z

    .line 633
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 635
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {p1}, Lcom/narvii/logging/ImpressionDelegate;->postImpressionRunnable()V

    .line 636
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz v0, :cond_0

    .line 637
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 568
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 571
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 572
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onDetach()V

    .line 573
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz v1, :cond_0

    .line 574
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onDestroy()V

    .line 577
    :cond_0
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverDestory()V

    .line 579
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->getInstance(Landroid/content/Context;)Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver;->unRegisterWifiStateChangeListener(Lcom/narvii/nvplayerview/broadcast/NetworkConnectChangeReceiver$IWifiStateChangeListener;)V

    .line 581
    sget-object v0, Lcom/narvii/setting/VideoAutoPlayService;->INSTANCE:Lcom/narvii/setting/VideoAutoPlayService;

    invoke-virtual {v0, p0}, Lcom/narvii/setting/VideoAutoPlayService;->unRegisterVideoAutoPlayChangeListener(Lcom/narvii/setting/VideoAutoPlayChangeListener;)V

    :cond_1
    return-void
.end method

.method protected onEmptyRetry()V
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 872
    check-cast v0, Lcom/narvii/list/NVAdapter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected onErrorRetry()V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 774
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

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

    .line 283
    iget-boolean p2, p0, Lcom/narvii/list/NVListFragment;->showScrollBarOnlyWhenScroll:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 286
    :cond_0
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_4

    .line 287
    move-object p2, p1

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isSwipeRefresh()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isNestedScrollingChild()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->setIsNestedScrollingChild(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewContentBackground()V

    .line 289
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListViewConfig()V

    .line 290
    new-instance v0, Lcom/narvii/list/NVListFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/list/NVListFragment$1;-><init>(Lcom/narvii/list/NVListFragment;Landroid/widget/ListView;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 334
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getMenuController()Lcom/narvii/app/NVFragment$MenuController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 336
    new-instance v0, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;

    invoke-direct {v0, p0, p1}, Lcom/narvii/list/NVListFragment$ListScrollDistanceCalculator;-><init>(Lcom/narvii/list/NVListFragment;Lcom/narvii/app/NVFragment$MenuController;)V

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 338
    :cond_3
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz v0, :cond_4

    .line 339
    invoke-interface {p1, p2}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onListViewCreated(Lcom/narvii/nvplayerview/delegate/IVideoListView;)V

    :cond_4
    return-void
.end method

.method public onLogLevelActiveChanged(Z)V
    .locals 1

    .line 624
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->canSendActiveLog(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onLogLevelActiveChanged(Z)V

    .line 628
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/logging/ImpressionDelegate;->onLogActiveChanged(Z)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    const-string v0, "__adapter"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/list/NVAdapter;->dispatchLoginResult(ZLandroid/content/Intent;)Z

    goto :goto_0

    .line 801
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onLoginResult(ZLandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 595
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onPause()V

    .line 596
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->flingListener:Lcom/narvii/list/NVListFragment$FlingListener;

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Lcom/narvii/list/NVListFragment$FlingListener;->run()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    if-eqz v1, :cond_1

    .line 600
    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {v0}, Lcom/narvii/widget/NVListView;->spOnPause()V

    .line 601
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz v1, :cond_1

    .line 602
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onPause()V

    :cond_1
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 991
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

    .line 995
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 996
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 997
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 998
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

    .line 587
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz v1, :cond_0

    .line 588
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onResume()V

    .line 590
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 555
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 556
    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    const-string v1, "isSwipeRefreshEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    iget v0, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    const-string v1, "overScrollMode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 559
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "adapter"

    .line 561
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 0

    .line 1391
    invoke-super {p0, p1}, Lcom/narvii/app/theme/NVThemeFragment;->onThemeChange(I)V

    .line 1392
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 139
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x102000a

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    .line 142
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$dimen;->list_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 143
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->impressionDelegate:Lcom/narvii/logging/ImpressionDelegate;

    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/ImpressionDelegate;->setListView(Landroid/view/ViewGroup;)V

    .line 144
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListView()V

    .line 146
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 147
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->shouldInitSwipeRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->setupSwipeRefreshLayout()Z

    .line 151
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->list_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 152
    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    instance-of v1, v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    if-eqz v1, :cond_1

    .line 153
    check-cast v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x102000d

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 157
    check-cast v0, Lcom/narvii/widget/SpinningView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const v1, -0x777778

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    :cond_4
    const v0, 0x1020004

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->emptyIconId()I

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    sget v3, Lcom/narvii/lib/R$id;->empty_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->emptyIconId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    :cond_5
    sget v0, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 170
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 171
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/narvii/lib/R$color;->empty_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, -0x1

    .line 171
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->emptyMessage()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 175
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_8
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_9

    move-object p1, v0

    goto :goto_4

    :cond_9
    sget v3, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 179
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_c

    .line 181
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->emptyRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_c

    .line 183
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    .line 184
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 183
    :cond_b
    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    :cond_c
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const/4 v2, 0x1

    if-eqz p1, :cond_e

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, p0}, Lcom/narvii/app/NVActivity;->bottomPadding(Lcom/narvii/app/NVFragment;)I

    move-result p1

    if-lez p1, :cond_f

    .line 194
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->autoAddBottomPadding()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 195
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_6
    const/4 v1, 0x1

    goto :goto_7

    .line 197
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    instance-of v3, v3, Lcom/narvii/app/NVBaseScrollableTabFragment;

    if-eqz v3, :cond_f

    goto :goto_6

    :cond_e
    const/4 p1, 0x0

    :cond_f
    :goto_7
    if-eqz v1, :cond_10

    .line 206
    new-instance v1, Lcom/narvii/list/-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0;

    invoke-direct {v1, p0, p1}, Lcom/narvii/list/-$$Lambda$NVListFragment$dYZH4xAZUiX4CGa2qrgLon9ViB0;-><init>(Lcom/narvii/list/NVListFragment;I)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_10
    if-nez p2, :cond_11

    goto :goto_8

    :cond_11
    const-string p1, "adapter"

    .line 215
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 216
    :goto_8
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 218
    instance-of p2, p1, Lcom/narvii/list/NVAdapter;

    if-eqz p2, :cond_13

    .line 219
    move-object p2, p1

    check-cast p2, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_12

    .line 221
    invoke-virtual {p2, v0}, Lcom/narvii/list/NVAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    :cond_12
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 226
    :cond_13
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    :cond_14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->flyingScroll()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 230
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    new-instance p2, Lcom/narvii/list/NVListFragment$FlingListener;

    invoke-direct {p2, p0}, Lcom/narvii/list/NVListFragment$FlingListener;-><init>(Lcom/narvii/list/NVListFragment;)V

    iput-object p2, p0, Lcom/narvii/list/NVListFragment;->flingListener:Lcom/narvii/list/NVListFragment$FlingListener;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_15
    return-void
.end method

.method public onWifiStateChange(Z)V
    .locals 2

    .line 1347
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-nez v0, :cond_0

    return-void

    .line 1350
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    if-eq p1, v1, :cond_2

    .line 1351
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    if-eqz p1, :cond_1

    .line 1353
    invoke-interface {v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->prepared()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1354
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/narvii/list/-$$Lambda$NVListFragment$ZGk3eivad7zXOf3HVxW6WEqG_sE;

    invoke-direct {v0, p0}, Lcom/narvii/list/-$$Lambda$NVListFragment$ZGk3eivad7zXOf3HVxW6WEqG_sE;-><init>(Lcom/narvii/list/NVListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1357
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateVideoAutoPlay()V

    .line 1358
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    :cond_2
    return-void
.end method

.method public resetHover()V
    .locals 0

    .line 1208
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->hoverRecycle()V

    .line 1209
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverUpdateView()V

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    .line 904
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setDarkTheme(Z)V

    .line 905
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateListView()V

    return-void
.end method

.method public setEmptyText(I)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setEmptyView(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 725
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 726
    sget v0, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 727
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 728
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->empty_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 728
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 731
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(Landroid/view/View;)V

    return-object p1
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 710
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 712
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 715
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 716
    sget v0, Lcom/narvii/lib/R$id;->empty_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 718
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_b

    .line 736
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    .line 737
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 738
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->errorViewLayoutId()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    .line 738
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    .line 740
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 741
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->retry:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/narvii/list/NVListFragment$6;

    invoke-direct {v2, p0}, Lcom/narvii/list/NVListFragment$6;-><init>(Lcom/narvii/list/NVListFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->frame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, -0xaaaaab

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/narvii/lib/R$string;->normal_error_offline1:I

    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    invoke-virtual {p0, v5}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 753
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;->isDeviceOffline()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p1, v4

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, -0xaaaaab

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 758
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v2, -0x1

    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    :cond_7
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 762
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    sget v2, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    goto :goto_3

    :cond_9
    :goto_2
    sget v2, Lcom/narvii/lib/R$color;->button_text_light:I

    :goto_3
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    :cond_a
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_b
    if-nez p1, :cond_c

    .line 766
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    if-eqz p1, :cond_c

    const/16 v0, 0x8

    .line 767
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_4
    return-void
.end method

.method public setHoverAdapter(Lcom/narvii/list/HoverAdapter;)V
    .locals 1

    .line 675
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->hoverAdapter:Lcom/narvii/list/HoverAdapter;

    if-eqz p1, :cond_1

    .line 677
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    instance-of v0, p1, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    .line 678
    check-cast p1, Lcom/narvii/widget/NVListView;

    new-instance v0, Lcom/narvii/list/NVListFragment$4;

    invoke-direct {v0, p0}, Lcom/narvii/list/NVListFragment$4;-><init>(Lcom/narvii/list/NVListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 690
    :cond_0
    new-instance v0, Lcom/narvii/list/NVListFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/list/NVListFragment$5;-><init>(Lcom/narvii/list/NVListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 703
    :goto_0
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    check-cast p1, Lcom/narvii/widget/NVListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setSectionHeaderEnabled(Z)V

    .line 704
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverUpdateView()V

    :cond_1
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 654
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->adapterObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 655
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 659
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    .line 660
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapterObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 663
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 667
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->onDataSetChanged(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected setListContentBgWhenHasPageBackground()Z
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setListViewVisibility(Landroid/widget/ListView;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1380
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1381
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment;->listViewFirstBecomeVisible:Z

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 1382
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz p2, :cond_1

    .line 1383
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_1
    const/4 p1, 0x1

    .line 1385
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->listViewFirstBecomeVisible:Z

    :cond_2
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 400
    :cond_0
    iput p1, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    .line 401
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    :cond_1
    return-void
.end method

.method public setScrollToHideKeyboard(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->scrollToHideKeyboard:Z

    return-void
.end method

.method protected setSectionHeaderTag()Z
    .locals 1

    .line 1102
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverBelowOverlayPlaceHolder()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setShowScrollBarOnlyWhenScroll(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->showScrollBarOnlyWhenScroll:Z

    return-void
.end method

.method public setSwipeRefreshEnabled(Z)V
    .locals 0

    .line 417
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    return-void
.end method

.method protected setupSwipeRefreshLayout()Z
    .locals 8

    .line 499
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 501
    instance-of v2, v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 502
    check-cast v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    goto :goto_2

    .line 505
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_2

    .line 506
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 508
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-eq v4, v5, :cond_3

    .line 513
    new-instance v2, Lcom/narvii/list/NVListFragment$2;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, p0, v6}, Lcom/narvii/list/NVListFragment$2;-><init>(Lcom/narvii/list/NVListFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 524
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 525
    iget-object v6, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v1, v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 531
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 532
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isNestedScrollingChild()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setIsNestedScrollingChild(Z)V

    .line 533
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    const-string v0, "config"

    .line 534
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 535
    iget-object v2, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    new-array v4, v1, [I

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    aput v0, v4, v3

    invoke-virtual {v2, v4}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 536
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    if-lez v0, :cond_4

    .line 538
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v2

    add-int/2addr v0, v2

    .line 540
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    move-result v4

    add-int/2addr v2, v4

    .line 541
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->externalOffset()I

    move-result v5

    add-int/2addr v4, v5

    .line 542
    iget-object v5, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    add-int/2addr v2, v0

    add-int/2addr v0, v4

    invoke-virtual {v5, v3, v2, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 544
    :cond_5
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method protected shouldInitSwipeRefresh()Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->isSwipeRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->isSwipeRefreshEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected showListviewWhenLoading()Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

    move-result v0

    return v0
.end method

.method public smoothScrollToTop()V
    .locals 4

    .line 882
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    .line 884
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/narvii/list/HideTopAdapter;

    .line 887
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method

.method protected updateListView()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    if-eqz v1, :cond_1

    .line 265
    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setBlinkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 272
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/narvii/list/NVListFragment;->overScrollMode:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method

.method public updateListViewConfig()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 385
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isActionBarOverlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVListView;->addActionBarOverlayHeader(Lcom/narvii/app/NVContext;)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 390
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 391
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateListViewContentBackground()V
    .locals 3

    .line 365
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->shouldShowPageBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->setListContentBgWhenHasPageBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateThemeUI()V
    .locals 4

    .line 1402
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    const-string v0, "config"

    .line 1403
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 1404
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    :cond_0
    return-void
.end method

.method protected updateVideoAutoPlay()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    return-void
.end method

.method protected updateViews()V
    .locals 9

    .line 811
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_18

    .line 815
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 818
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 819
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 823
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 826
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 828
    :cond_3
    instance-of v3, v0, Lcom/narvii/list/NVAdapter;

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    .line 829
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 830
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v3

    .line 831
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v5

    .line 832
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 834
    :goto_1
    iget-object v7, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    invoke-virtual {p0, v7, v4}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 835
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v4, :cond_a

    if-eqz v3, :cond_7

    .line 836
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->forceShowListWhenEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const/4 v7, 0x4

    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 838
    :cond_a
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v4, :cond_c

    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    if-nez v6, :cond_b

    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    const/4 v5, 0x4

    .line 839
    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 841
    :cond_c
    iget-object v4, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    if-eqz v4, :cond_e

    if-nez v3, :cond_d

    if-nez v6, :cond_d

    const/4 v1, 0x0

    .line 842
    :cond_d
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    :cond_e
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_9

    .line 846
    :cond_f
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    .line 848
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    :cond_11
    :goto_5
    invoke-virtual {p0, v3, v4}, Lcom/narvii/list/NVListFragment;->setListViewVisibility(Landroid/widget/ListView;Z)V

    .line 849
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v3, :cond_14

    if-eqz v0, :cond_13

    .line 850
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->showListviewWhenLoading()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    const/4 v4, 0x4

    goto :goto_7

    :cond_13
    :goto_6
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 852
    :cond_14
    iget-object v3, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v3, :cond_16

    if-eqz v0, :cond_15

    goto :goto_8

    :cond_15
    const/4 v2, 0x4

    .line 853
    :goto_8
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 855
    :cond_16
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->progressView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 856
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    :cond_17
    :goto_9
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->hoverUpdateView()V

    return-void

    .line 812
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method protected updateWifiActive()V
    .locals 3

    .line 1322
    :try_start_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/narvii/list/NVListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1326
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
    iput-boolean v1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public videoAutoPlayChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1365
    iput-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 1367
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment;->wifiActive:Z

    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1369
    iput-boolean p1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    .line 1371
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->prepared()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1372
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Lcom/narvii/list/-$$Lambda$NVListFragment$JxSITtD7ZPUkiTJOJqFk7IHSzAk;

    invoke-direct {v0, p0}, Lcom/narvii/list/-$$Lambda$NVListFragment$JxSITtD7ZPUkiTJOJqFk7IHSzAk;-><init>(Lcom/narvii/list/NVListFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1374
    :cond_2
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    iget-boolean v0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    invoke-interface {p1, v0}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->setAutoPlay(Z)V

    return-void
.end method
