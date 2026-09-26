.class public abstract Lcom/narvii/list/NVListViewWrapper;
.super Lcom/narvii/app/theme/view/NVThemeFrameLayout;
.source "SourceFile"

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
    .locals 1

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/list/NVListViewWrapper;->STATE_PRESSED:[I

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/list/NVListViewWrapper;->STATE_FOCUSED:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/narvii/list/NVListViewWrapper;->STATE_NORMAL:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

    .line 2
    new-instance p1, Lcom/narvii/app/theme/NVTheme;

    invoke-direct {p1}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/list/NVListViewWrapper;->overScrollMode:I

    .line 3
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$2;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$2;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

    .line 4
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$4;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$4;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->refreshCallback:Lcom/narvii/util/Callback;

    .line 5
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$5;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$5;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 6
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

    .line 8
    new-instance p1, Lcom/narvii/app/theme/NVTheme;

    invoke-direct {p1}, Lcom/narvii/app/theme/NVTheme;-><init>()V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/list/NVListViewWrapper;->overScrollMode:I

    .line 9
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$2;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$2;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

    .line 10
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$4;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$4;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->refreshCallback:Lcom/narvii/util/Callback;

    .line 11
    new-instance p1, Lcom/narvii/list/NVListViewWrapper$5;

    invoke-direct {p1, p0}, Lcom/narvii/list/NVListViewWrapper$5;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 12
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->init()V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/list/NVListViewWrapper;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method private getNVTheme()Lcom/narvii/app/theme/NVTheme;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/theme/NVThemeOwner;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/theme/NVThemeOwner;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/app/theme/NVThemeOwner;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvTheme:Lcom/narvii/app/theme/NVTheme;

    .line 16
    return-object v0
.end method

.method private init()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getLayoutId()I

    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    return-void
.end method

.method private isDarkTheme()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private isDeviceOffline()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

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

.method protected getLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->list_layout:I

    return v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

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
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

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
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

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
    const v1, -0x19191a

    .line 22
    goto :goto_1

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getSelectorDarkColor()I

    .line 26
    move-result v1

    .line 27
    .line 28
    :goto_1
    sget-object v2, Lcom/narvii/list/NVListViewWrapper;->STATE_PRESSED:[I

    .line 29
    .line 30
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    sget-object v2, Lcom/narvii/list/NVListViewWrapper;->STATE_FOCUSED:[I

    .line 39
    .line 40
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    sget-object v1, Lcom/narvii/list/NVListViewWrapper;->STATE_NORMAL:[I

    .line 49
    .line 50
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 51
    const/4 v3, 0x0

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getSelectorDarkColor()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

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

.method protected getSwipeRefreshFlag()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

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

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p0}, Lcom/narvii/list/NVListViewWrapper;->onViewCreated(Landroid/view/View;)V

    .line 7
    return-void
.end method

.method protected onDataSetChanged(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateViews()V

    .line 4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 7
    return-void
.end method

.method protected onErrorRetry()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

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

.method protected onListViewCreated(Landroid/widget/ListView;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefresh()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isNestedScrollingChild()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->setIsNestedScrollingChild(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateListViewContentBackground()V

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/list/NVListViewWrapper$1;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/narvii/list/NVListViewWrapper$1;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 37
    :cond_2
    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
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

    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->outerRefreshCallback:Lcom/narvii/util/Callback;

    .line 2
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_0

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->onThemeChange(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateListView()V

    .line 7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const v0, 0x102000a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/ListView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    sget v2, Lcom/narvii/lib/R$dimen;->list_divider_height:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateListView()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->shouldInitSwipeRefresh()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->setupSwipeRefreshLayout()Z

    .line 40
    .line 41
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->list_frame:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Landroid/widget/FrameLayout;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    instance-of v1, v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    check-cast v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getFrameDarkBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->setDarkBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    const v0, 0x102000d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    .line 80
    .line 81
    instance-of v1, v0, Lcom/narvii/widget/SpinningView;

    .line 82
    const/4 v2, -0x1

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 96
    move-result v1

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_2
    const v1, -0x777778

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    :goto_0
    move v1, v2

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 108
    .line 109
    .line 110
    :cond_4
    const v0, 0x1020004

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->emptyIconId()I

    .line 122
    move-result v0

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    .line 127
    .line 128
    sget v1, Lcom/narvii/lib/R$id;->empty_icon:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 135
    .line 136
    if-eqz v1, :cond_5

    .line 137
    const/4 v1, 0x0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    check-cast v0, Landroid/widget/ImageView;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->emptyIconId()I

    .line 146
    move-result v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    .line 151
    :cond_5
    sget v0, Lcom/narvii/lib/R$id;->empty_text:I

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p1

    .line 156
    .line 157
    instance-of v0, p1, Landroid/widget/TextView;

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    check-cast p1, Landroid/widget/TextView;

    .line 162
    .line 163
    .line 164
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 165
    move-result v0

    .line 166
    .line 167
    if-nez v0, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-eqz v0, :cond_6

    .line 174
    goto :goto_2

    .line 175
    .line 176
    .line 177
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    sget v1, Lcom/narvii/lib/R$color;->empty_text_color:I

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 184
    move-result v0

    .line 185
    goto :goto_3

    .line 186
    :cond_7
    :goto_2
    move v0, v2

    .line 187
    .line 188
    .line 189
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->emptyMessage()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    move-result v1

    .line 198
    .line 199
    if-nez v1, :cond_8

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    :cond_8
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    .line 205
    .line 206
    if-nez p1, :cond_9

    .line 207
    const/4 p1, 0x0

    .line 208
    goto :goto_4

    .line 209
    .line 210
    :cond_9
    sget v0, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    :goto_4
    if-eqz p1, :cond_c

    .line 217
    .line 218
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    instance-of v0, p1, Landroid/widget/TextView;

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    check-cast p1, Landroid/widget/TextView;

    .line 228
    .line 229
    .line 230
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 231
    move-result v0

    .line 232
    .line 233
    if-nez v0, :cond_b

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 237
    move-result v0

    .line 238
    .line 239
    if-eqz v0, :cond_a

    .line 240
    goto :goto_5

    .line 241
    .line 242
    .line 243
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    sget v1, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 250
    move-result v2

    .line 251
    .line 252
    .line 253
    :cond_b
    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    :cond_c
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onListViewCreated(Landroid/widget/ListView;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->createAdapter()Landroid/widget/ListAdapter;

    .line 262
    move-result-object p1

    .line 263
    .line 264
    if-eqz p1, :cond_e

    .line 265
    .line 266
    instance-of v0, p1, Lcom/narvii/list/NVAdapter;

    .line 267
    .line 268
    if-eqz v0, :cond_d

    .line 269
    move-object v0, p1

    .line 270
    .line 271
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 275
    .line 276
    .line 277
    :cond_d
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    :cond_e
    return-void
.end method

.method public setEmptyText(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_1
    return-void
.end method

.method public setEmptyView(I)Landroid/view/View;
    .locals 3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

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

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

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
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->setEmptyView(Landroid/view/View;)V

    return-object p1
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    sget v0, Lcom/narvii/lib/R$id;->empty_retry:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyRetryListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->updateViews()V

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 7

    .line 1
    .line 2
    if-eqz p1, :cond_b

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->errorViewLayoutId()I

    .line 23
    move-result v2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 32
    .line 33
    sget-object v0, Lcom/narvii/app/theme/NVTheme;->Companion:Lcom/narvii/app/theme/NVTheme$Companion;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->getNVTheme()Lcom/narvii/app/theme/NVTheme;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/narvii/app/theme/NVTheme$Companion;->bindNVThemeView(Lcom/narvii/app/theme/NVTheme;Landroid/view/View;)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 45
    .line 46
    sget v2, Lcom/narvii/lib/R$id;->retry:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    new-instance v2, Lcom/narvii/list/NVListViewWrapper$3;

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, p0}, Lcom/narvii/list/NVListViewWrapper$3;-><init>(Lcom/narvii/list/NVListViewWrapper;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->frame:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 68
    .line 69
    sget v2, Lcom/narvii/lib/R$id;->text:I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    const/4 v2, -0x1

    .line 77
    .line 78
    .line 79
    const v3, -0xaaaaab

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    sget v6, Lcom/narvii/lib/R$string;->normal_error_offline1:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 96
    move-result-object v5

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v5, "\n"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    sget v6, Lcom/narvii/lib/R$string;->normal_error_offline2:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDeviceOffline()Z

    .line 125
    move-result v5

    .line 126
    .line 127
    if-eqz v5, :cond_1

    .line 128
    move-object p1, v4

    .line 129
    .line 130
    .line 131
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 135
    move-result p1

    .line 136
    .line 137
    if-nez p1, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 141
    move-result p1

    .line 142
    .line 143
    if-eqz p1, :cond_2

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    move p1, v3

    .line 146
    goto :goto_1

    .line 147
    :cond_3
    :goto_0
    move p1, v2

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    :cond_4
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 153
    .line 154
    sget v0, Lcom/narvii/lib/R$id;->error:I

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    check-cast p1, Landroid/widget/TextView;

    .line 161
    .line 162
    if-eqz p1, :cond_7

    .line 163
    .line 164
    .line 165
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 166
    move-result v0

    .line 167
    .line 168
    if-nez v0, :cond_6

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 172
    move-result v0

    .line 173
    .line 174
    if-eqz v0, :cond_5

    .line 175
    goto :goto_2

    .line 176
    :cond_5
    move v2, v3

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    .line 181
    :cond_7
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 182
    .line 183
    sget v0, Lcom/narvii/lib/R$id;->retry:I

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object p1

    .line 188
    .line 189
    check-cast p1, Landroid/widget/TextView;

    .line 190
    .line 191
    if-eqz p1, :cond_a

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/narvii/app/theme/view/NVThemeFrameLayout;->isDarkNvTheme()Z

    .line 199
    move-result v2

    .line 200
    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    .line 204
    invoke-direct {p0}, Lcom/narvii/list/NVListViewWrapper;->isDarkTheme()Z

    .line 205
    move-result v2

    .line 206
    .line 207
    if-eqz v2, :cond_8

    .line 208
    goto :goto_3

    .line 209
    .line 210
    :cond_8
    sget v2, Lcom/narvii/lib/R$color;->button_text_gray_w:I

    .line 211
    goto :goto_4

    .line 212
    .line 213
    :cond_9
    :goto_3
    sget v2, Lcom/narvii/lib/R$color;->button_text_light:I

    .line 214
    .line 215
    .line 216
    :goto_4
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 217
    move-result v0

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    :cond_a
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    goto :goto_5

    .line 227
    .line 228
    :cond_b
    if-nez p1, :cond_c

    .line 229
    .line 230
    iget-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->errorView:Landroid/view/View;

    .line 231
    .line 232
    if-eqz p1, :cond_c

    .line 233
    .line 234
    const/16 v0, 0x8

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_c
    :goto_5
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    instance-of v0, v0, Lcom/narvii/list/NVAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

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
    iput-object p1, p0, Lcom/narvii/list/NVListViewWrapper;->adapter:Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

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
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->adapterObserver:Landroid/database/DataSetObserver;

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
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

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
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onDataSetChanged(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method public setSwipeRefreshEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

    return-void
.end method

.method protected setupSwipeRefreshLayout()Z
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

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
    iput-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

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
    new-instance v2, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v6}, Lcom/narvii/list/refresh/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    iput-object v2, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    iget-object v6, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

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
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isNestedScrollingChild()Z

    .line 82
    move-result v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setIsNestedScrollingChild(Z)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 91
    .line 92
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    .line 93
    .line 94
    const-string v1, "config"

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 110
    move-result v0

    .line 111
    .line 112
    .line 113
    filled-new-array {v0}, [I

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    sget v1, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 127
    move-result v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->externalOffset()I

    .line 131
    move-result v1

    .line 132
    add-int/2addr v0, v1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    sget v2, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 142
    move-result v1

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->externalOffset()I

    .line 146
    move-result v2

    .line 147
    add-int/2addr v1, v2

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3, v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 153
    .line 154
    :cond_4
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 155
    .line 156
    if-eqz v0, :cond_5

    .line 157
    const/4 v3, 0x1

    .line 158
    :cond_5
    return v3
.end method

.method protected shouldInitSwipeRefresh()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefresh()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/list/NVListViewWrapper;->isSwipeRefreshEnabled:Z

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

.method protected updateListView()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

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
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListSelector()Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setBlinkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 37
    move-result v0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListDividerDrawable()Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 54
    .line 55
    iget v1, p0, Lcom/narvii/list/NVListViewWrapper;->overScrollMode:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 59
    return-void
.end method

.method protected updateListViewContentBackground()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/widget/NVListView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListView()Landroid/widget/ListView;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->setListContentBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    return-void
.end method

.method protected updateViews()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/list/NVListViewWrapper;->getListAdapter()Landroid/widget/ListAdapter;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x4

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_c

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_1
    instance-of v3, v0, Lcom/narvii/list/NVAdapter;

    .line 36
    .line 37
    if-eqz v3, :cond_8

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/list/NVAdapter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 43
    move-result v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 47
    move-result v4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    const/4 v5, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v5, v1

    .line 57
    .line 58
    :goto_0
    iget-object v6, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    move v7, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v7, v2

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    iget-object v6, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    .line 69
    .line 70
    if-eqz v6, :cond_5

    .line 71
    .line 72
    if-eqz v3, :cond_4

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    if-nez v5, :cond_4

    .line 77
    move v4, v1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v4, v2

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    :cond_5
    iget-object v4, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    .line 85
    .line 86
    if-eqz v4, :cond_7

    .line 87
    .line 88
    if-nez v3, :cond_6

    .line 89
    .line 90
    if-nez v5, :cond_6

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    move v1, v2

    .line 93
    .line 94
    .line 95
    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->errorMessage()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListViewWrapper;->setErrorMessage(Ljava/lang/String;)V

    .line 103
    goto :goto_6

    .line 104
    .line 105
    .line 106
    :cond_8
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 107
    move-result v0

    .line 108
    .line 109
    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->listView:Landroid/widget/ListView;

    .line 110
    .line 111
    if-nez v0, :cond_9

    .line 112
    move v4, v1

    .line 113
    goto :goto_4

    .line 114
    :cond_9
    move v4, v2

    .line 115
    .line 116
    .line 117
    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    iget-object v3, p0, Lcom/narvii/list/NVListViewWrapper;->emptyView:Landroid/view/View;

    .line 120
    .line 121
    if-eqz v3, :cond_b

    .line 122
    .line 123
    if-eqz v0, :cond_a

    .line 124
    goto :goto_5

    .line 125
    :cond_a
    move v1, v2

    .line 126
    .line 127
    .line 128
    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    :cond_b
    iget-object v0, p0, Lcom/narvii/list/NVListViewWrapper;->progressView:Landroid/view/View;

    .line 131
    .line 132
    if-eqz v0, :cond_c

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_c
    :goto_6
    return-void

    .line 137
    .line 138
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    .line 141
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 142
    throw v0
.end method
