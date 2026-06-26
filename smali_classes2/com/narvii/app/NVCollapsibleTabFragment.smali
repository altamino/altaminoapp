.class public abstract Lcom/narvii/app/NVCollapsibleTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "NVCollapsibleTabFragment.java"

# interfaces
.implements Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field private final bodyRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

.field protected currentShowingFragment:Lcom/narvii/app/NVFragment;

.field private final headerRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observer:Landroid/database/DataSetObserver;

.field onPageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field protected pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

.field private positionToIndexMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private realPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private refreshingCount:I

.field protected scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

.field protected swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field protected viewPager:Lcom/narvii/widget/NVViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$1;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->onPageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    .line 129
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$2;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    .line 139
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$3;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 197
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$5;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$5;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/NVCollapsibleTabFragment;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/narvii/app/NVCollapsibleTabFragment;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/narvii/app/NVCollapsibleTabFragment;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method private setupSwipeRefreshLayout()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    new-instance v1, Lcom/narvii/app/NVCollapsibleTabFragment$4;

    invoke-direct {v1, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$4;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    const-string v0, "config"

    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 175
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v2, 0x1

    new-array v2, v2, [I

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 176
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeTopOffset()I

    move-result v0

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 178
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 179
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    add-int/2addr v1, v0

    add-int/2addr v0, v2

    invoke-virtual {v4, v3, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    return-void
.end method


# virtual methods
.method protected abstract bodyLayoutId()I
.end method

.method public createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 11

    .line 249
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 250
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const-string v2, "_"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_5

    .line 255
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 257
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getFragment(I)Ljava/lang/Class;

    move-result-object v8

    .line 258
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getBundles(I)Landroid/os/Bundle;

    move-result-object v9

    .line 259
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 261
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v1, v6, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    :cond_0
    move-object v7, v4

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    new-instance v10, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_5

    .line 273
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabLabel(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 275
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getFragment(I)Ljava/lang/Class;

    move-result-object v9

    .line 276
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getBundles(I)Landroid/os/Bundle;

    move-result-object v10

    .line 277
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    .line 279
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v3, v7, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v4

    :cond_3
    move-object v8, v4

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 282
    new-instance v4, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 290
    :cond_5
    new-instance v1, Lcom/narvii/app/NVCollapsibleTabFragment$6;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/app/NVCollapsibleTabFragment$6;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 299
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    return-object v1
.end method

.method protected defaultTabIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBodyView()Landroid/view/View;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurIndex()I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getCurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getFragment(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end method

.method public getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method protected getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexOfRealPosition(I)I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 364
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object v0
.end method

.method public getRealPositionOfIndex(I)I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getScrollableTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object v0
.end method

.method protected abstract getTabLabel(I)Ljava/lang/String;
.end method

.method protected getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract headerLayoutId()I
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    sget p3, Lcom/narvii/lib/R$layout;->fragment_collapsible_tab_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 97
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public onHeaderCollapsed()V
    .locals 0

    return-void
.end method

.method public onHeaderExpanded()V
    .locals 0

    return-void
.end method

.method public onHeaderOffsetChanged(IIFZ)V
    .locals 0

    return-void
.end method

.method public onHeaderStartCollapsing()V
    .locals 0

    return-void
.end method

.method public onHeaderStartExpanding()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method

.method protected onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V
    .locals 0

    .line 311
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->useUniformSwipeRefresh()Z

    move-result p2

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/narvii/list/NVListFragment;

    if-eqz p2, :cond_0

    .line 312
    check-cast p1, Lcom/narvii/list/NVListFragment;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    const/4 p2, 0x0

    .line 313
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    sget p2, Lcom/narvii/lib/R$id;->collapsible_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 69
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->headerLayoutId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->setTopLayout(I)V

    .line 70
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->bodyLayoutId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->setBottomLayout(I)V

    .line 71
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 74
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 75
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 77
    sget p2, Lcom/narvii/lib/R$id;->viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVViewPager;

    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 78
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->isScrollable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 79
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->onPageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 81
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 83
    sget p2, Lcom/narvii/lib/R$id;->tabs:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVPagerTabLayout;

    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 84
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 86
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 87
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {p2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVCollapsibleTabFragment;->updateTabView(I)V

    .line 89
    sget p2, Lcom/narvii/lib/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 90
    invoke-direct {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->setupSwipeRefreshLayout()V

    return-void
.end method

.method public resetAdapter()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->resetAdapter(I)V

    return-void
.end method

.method public resetAdapter(I)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :catch_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 228
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 229
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 230
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    .line 231
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected sendHeaderRequest(Lcom/narvii/util/Callback;)V
    .locals 1

    .line 191
    iget v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 193
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 103
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method protected stickyFooterLayoutId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected swipeTopOffset()I
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method protected updateTabView(I)V
    .locals 0

    return-void
.end method

.method protected useUniformSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
