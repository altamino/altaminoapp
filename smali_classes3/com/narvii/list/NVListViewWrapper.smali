.class public abstract Lcom/narvii/list/NVListViewWrapper;
.super Lcom/narvii/app/theme/view/NVThemeFrameLayout;
.source "NVListViewWrapper.java"

# interfaces
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field protected static final STATE_FOCUSED:[I

.field protected static final STATE_NORMAL:[I

.field protected static final STATE_PRESSED:[I


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field private final adapterObserver:Landroid/database/DataSetObserver;

.field private final emptyRetryListener:Landroid/view/View$OnClickListener;

.field protected emptyView:Landroid/view/View;

.field protected errorView:Landroid/view/View;

.field private frame:Landroid/widget/FrameLayout;

.field protected isSwipeRefreshEnabled:Z

.field private listView:Landroid/widget/ListView;

.field protected nvContext:Lcom/narvii/app/NVContext;

.field private nvTheme:Lcom/narvii/app/theme/NVTheme;

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

.field protected swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 43
    sput-object v1, Lcom/narvii/list/NVListViewWrapper;->STATE_PRESSED:[I

    new-array v0, v0, [I

    const v1, 0x101009c

    aput v1, v0, v2

    .line 44
    sput-object v0, Lcom/narvii/list/NVListViewWrapper;->STATE_FOCUSED:[I

    new-array v0, v2, [I

    .line 45
    sput-object v0, Lcom/narvii/list/NVListViewWrapper;->STATE_NORMAL:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

    .line 53
    new-instance p1, Lcom/narvii/app/theme/NVTheme;

    invoke-direct {p1}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/narvii/list/NVListViewWrapper;->overScrollMode:I

    .line 255
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$2;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$2;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

    .line 514
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$4;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$4;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->refreshCallback:Lcom/narvii/util/Callback;

    .line 531
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$5;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$5;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 64
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

    .line 53
    new-instance p1, Lcom/narvii/app/theme/NVTheme;

    invoke-direct {p1}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/narvii/list/NVListViewWrapper;->overScrollMode:I

    .line 255
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$2;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$2;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

    .line 514
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$4;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$4;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->refreshCallback:Lcom/narvii/util/Callback;

    .line 531
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$5;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$5;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 69
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/list/NVListViewWrapper;)Landroid/widget/ListAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method private getNVTheme()Lcom/narvii/app/theme/NVTheme;
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/theme/NVThemeOwner;

    if-eqz v1, :cond_0

    .line 592
    check-cast v0, Lcom/narvii/app/theme/NVThemeOwner;

    invoke-interface {v0}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v0

    return-object v0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    .line 74
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getLayoutId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method private isDarkTheme()Z
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v0

    return v0
.end method

.method private isDeviceOffline()Z
    .locals 3

    const/4 v0, 0x0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 373
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
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
.method protected abstract createAdapter()Landroid/widget/ListAdapter;
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

    .line 366
    sget v0, Lcom/narvii/lib/R$layout;->error_view:I

    return v0
.end method

.method protected externalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 158
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->color_default_primary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 78
    sget v0, Lcom/narvii/lib/R$layout;->list_layout:I

    return v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 582
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

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

    .line 563
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 565
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, -0x19191a

    goto :goto_1

    .line 566
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getSelectorDarkColor()I

    move-result v1

    .line 570
    :goto_1
    sget-object v2, Lcom/narvii/list/NVListViewWrapper;->STATE_PRESSED:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 571
    sget-object v2, Lcom/narvii/list/NVListViewWrapper;->STATE_FOCUSED:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 572
    sget-object v1, Lcom/narvii/list/NVListViewWrapper;->STATE_NORMAL:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 2

    .line 578
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->list_selector_dark:I

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

    .line 485
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method

.method public isNestedScrollingChild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

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

.method protected onAttachedToWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 84
    invoke-virtual {p0, p0}, Lcom/narvii/list/NVListViewWrapper;->onViewCreated(Landroid/view/View;)V

    return-void
.end method

.method protected onDataSetChanged(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 264
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateViews()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onErrorRetry()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v1, :cond_0

    .line 361
    check-cast v0, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;)V
    .locals 1

    .line 193
    instance-of v0, p1, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_2

    .line 194
    check-cast p1, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isNestedScrollingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setIsNestedScrollingChild(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateListViewContentBackground()V

    .line 196
    new-instance v0, Lcom/narvii/list/NVListViewWrapper$1;

    invoke-direct {v0, p0}, Lcom/narvii/list/NVListViewWrapper$1;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListViewWrapper;->onRefresh(Lcom/narvii/util/Callback;)V

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

    .line 499
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 500
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 501
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 502
    check-cast p1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getSwipeRefreshFlag()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->refreshCallback:Lcom/narvii/util/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onThemeChange(I)V
    .locals 0

    .line 599
    invoke-super {p0, p1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->onThemeChange(I)V

    .line 600
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateListView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000a

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$dimen;->list_divider_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 96
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateListView()V

    .line 98
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    .line 100
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->shouldInitSwipeRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->setupSwipeRefreshLayout()Z

    .line 104
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->list_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    instance-of v1, v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    if-eqz v1, :cond_1

    .line 106
    check-cast v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x102000d

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 110
    check-cast v0, Lcom/narvii/widget/SpinningView;

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

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

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->emptyIconId()I

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    sget v1, Lcom/narvii/lib/R$id;->empty_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->emptyIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    :cond_5
    sget v0, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 123
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 124
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->empty_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, -0x1

    .line 124
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->emptyMessage()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 128
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_8
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    sget v0, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_c

    .line 134
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 136
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 137
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 136
    :cond_b
    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :cond_c
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onListViewCreated(Landroid/widget/ListView;)V

    .line 144
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 147
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_d

    .line 148
    move-object v0, p1

    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 149
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 152
    :cond_d
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_e
    return-void
.end method

.method public setEmptyText(I)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    sget v1, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setEmptyView(I)Landroid/view/View;
    .locals 3

    .line 312
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 313
    sget v0, Lcom/narvii/lib/R$id;->empty_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 315
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$color;->empty_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 315
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->setEmptyView(Landroid/view/View;)V

    return-object p1
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 299
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 302
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 303
    sget v0, Lcom/narvii/lib/R$id;->empty_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateViews()V

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_b

    .line 323
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    .line 324
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->errorViewLayoutId()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 325
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 327
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    invoke-virtual {v0, v2, v3}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->retry:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/narvii/list/NVListViewWrapper$3;

    invoke-direct {v2, p0}, Lcom/narvii/list/NVListViewWrapper$3;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    sget v2, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, -0xaaaaab

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/narvii/lib/R$string;->normal_error_offline1:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDeviceOffline()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p1, v4

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

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

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 345
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v2, -0x1

    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    :cond_7
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    sget v0, Lcom/narvii/lib/R$id;->retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

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

    .line 351
    :cond_a
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_b
    if-nez p1, :cond_c

    .line 353
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    if-eqz p1, :cond_c

    const/16 v0, 0x8

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_4
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    .line 280
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 283
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/narvii/list/NVAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 287
    :cond_1
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onDataSetChanged(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setSwipeRefreshEnabled(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

    return-void
.end method

.method protected setupSwipeRefreshLayout()Z
    .locals 8

    .line 442
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 444
    instance-of v2, v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 445
    check-cast v1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    goto :goto_2

    .line 448
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_2

    .line 449
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 451
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-eq v4, v5, :cond_3

    .line 456
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/narvii/list/refresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 457
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 458
    iget-object v6, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v1, v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 464
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 465
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isNestedScrollingChild()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setIsNestedScrollingChild(Z)V

    .line 466
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 467
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 468
    iget-object v2, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    new-array v4, v1, [I

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    aput v0, v4, v3

    invoke-virtual {v2, v4}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 474
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->externalOffset()I

    move-result v2

    add-int/2addr v0, v2

    .line 475
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->externalOffset()I

    move-result v4

    add-int/2addr v2, v4

    .line 476
    iget-object v4, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    add-int/2addr v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v4, v3, v0, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method protected shouldInitSwipeRefresh()Z
    .locals 1

    .line 438
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected updateListView()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    instance-of v1, v0, Lcom/narvii/widget/NVListView;

    if-eqz v1, :cond_1

    .line 179
    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setBlinkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 186
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/narvii/list/NVListViewWrapper;->overScrollMode:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method

.method protected updateListViewContentBackground()V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected updateViews()V
    .locals 8

    .line 384
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    .line 388
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 396
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 398
    :cond_1
    instance-of v3, v0, Lcom/narvii/list/NVAdapter;

    if-eqz v3, :cond_8

    .line 399
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 400
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v3

    .line 401
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v4

    .line 402
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 403
    :goto_0
    iget-object v6, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x4

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 404
    iget-object v6, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz v6, :cond_5

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x4

    .line 405
    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 407
    :cond_5
    iget-object v4, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    if-eqz v4, :cond_7

    if-nez v3, :cond_6

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    .line 408
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListViewWrapper;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 412
    :cond_8
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    .line 413
    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    const/4 v4, 0x4

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 414
    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz v3, :cond_b

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x4

    .line 415
    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_b
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 418
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_6
    return-void

    .line 385
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
