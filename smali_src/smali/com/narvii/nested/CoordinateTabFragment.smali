.class public abstract Lcom/narvii/nested/CoordinateTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;
.implements Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;


# instance fields
.field private appbarLayout:Lcom/narvii/nested/NVAppBarLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bodyRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentShowingFragment:Lcom/narvii/app/NVFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private enableSwipeRefreshLayout:Z

.field private enterRefresh:Z

.field private final headerRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastVerticalOffset:I

.field private final listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observer:Landroid/database/DataSetObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private observerRegistered:Z

.field private final pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final positionToIndexMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final realPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private refreshRequestSent:Z

.field private refreshingCount:I

.field private showTabCount:I

.field private swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tabLayout:Lcom/narvii/widget/NVPagerTabLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewPager:Lcom/narvii/widget/NVViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$listener$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$observer$1;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$observer$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/nested/a;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/nested/a;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/nested/b;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/nested/b;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    .line 56
    return-void
.end method

.method public static final synthetic access$getBodyRefreshCallback$p(Lcom/narvii/nested/CoordinateTabFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/nested/CoordinateTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/nested/CoordinateTabFragment;->lastVerticalOffset:I

    .line 3
    return p0
.end method

.method public static final synthetic access$setLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->lastVerticalOffset:I

    .line 3
    return-void
.end method

.method private static final bodyRefreshCallback$lambda$2(Lcom/narvii/nested/CoordinateTabFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    .line 9
    move-result p1

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshingCount(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 1

    .line 1
    .line 2
    if-nez p6, :cond_2

    .line 3
    .line 4
    and-int/lit8 p6, p5, 0x4

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p6, :cond_0

    .line 8
    move-object p3, v0

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 11
    .line 12
    if-eqz p5, :cond_1

    .line 13
    move-object p4, v0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    .line 20
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p1, "Super calls with default arguments not supported in this target, function: getBaseAdapter"

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method private static final headerRefreshCallback$lambda$3(Lcom/narvii/nested/CoordinateTabFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    .line 2
    const-string/jumbo p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    .line 9
    move-result p1

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshingCount(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/narvii/nested/CoordinateTabFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->headerRefreshCallback$lambda$3(Lcom/narvii/nested/CoordinateTabFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic o(Lcom/narvii/nested/CoordinateTabFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->bodyRefreshCallback$lambda$2(Lcom/narvii/nested/CoordinateTabFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic p(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/nested/CoordinateTabFragment;->setupSwipeRefreshLayout$lambda$5$lambda$4(Lcom/narvii/nested/CoordinateTabFragment;)V

    return-void
.end method

.method private final setupSwipeRefreshLayout()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/nested/c;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/narvii/nested/c;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 13
    .line 14
    :cond_0
    const-string v0, "config"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    new-array v4, v2, [I

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, -0x1

    .line 43
    .line 44
    :goto_0
    aput v0, v4, v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshTopOffset()I

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    sget v4, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 61
    move-result v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    sget v5, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 71
    move-result v4

    .line 72
    .line 73
    iget-object v5, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 74
    .line 75
    if-eqz v5, :cond_3

    .line 76
    add-int/2addr v1, v0

    .line 77
    add-int/2addr v0, v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    move-result-object v0

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    const/4 v0, 0x0

    .line 91
    .line 92
    :goto_1
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    instance-of v0, v0, Lcom/narvii/nested/behavior/SpringBehavior;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    move v0, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move v0, v3

    .line 108
    .line 109
    :goto_2
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 110
    .line 111
    if-nez v1, :cond_6

    .line 112
    goto :goto_4

    .line 113
    .line 114
    :cond_6
    if-nez v0, :cond_7

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    goto :goto_3

    .line 122
    :cond_7
    move v2, v3

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    :goto_4
    return-void
.end method

.method private static final setupSwipeRefreshLayout$lambda$5$lambda$4(Lcom/narvii/nested/CoordinateTabFragment;)V
    .locals 3

    .line 1
    .line 2
    const-string/jumbo v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshRequestSent:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    .line 26
    :goto_0
    iput-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshingCount(I)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 41
    .line 42
    instance-of v1, v0, Lcom/narvii/list/NVListFragment;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string v1, "null cannot be cast to non-null type com.narvii.list.NVListFragment"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/list/NVListFragment;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVListFragment;->onRefresh(Lcom/narvii/util/Callback;)V

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    instance-of v1, v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    const-string v1, "null cannot be cast to non-null type com.narvii.paging.NVRecyclerViewFragment"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 69
    .line 70
    new-instance v1, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$1$1$1;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$1$1$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onRefresh(Lcom/narvii/paging/source/PageRequestCallback;)V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_3
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->manuallyRefresh(Lcom/narvii/util/Callback;)V

    .line 85
    .line 86
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->sendHeaderRequest(Lcom/narvii/util/Callback;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nested/tab/SelectTabViewDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/nested/tab/SelectTabViewDelegate;-><init>()V

    .line 6
    return-object v0
.end method

.method protected defaultTabIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    return-object v0
.end method

.method public final getBaseAdapter(Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;>;)",
            "Lcom/narvii/app/NVScrollablePagerAdapter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "labelResIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentClzzList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/narvii/app/NVScrollablePagerAdapter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "labelResIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentClzzList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 19
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/narvii/app/NVScrollablePagerAdapter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "labelResIds"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fragmentClzzList"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v8, v6, :cond_8

    .line 6
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v8

    goto :goto_1

    :cond_0
    move v10, v8

    :goto_1
    const-string v11, ""

    const/4 v12, 0x0

    if-eqz v4, :cond_2

    .line 7
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    :cond_1
    :goto_2
    move-object v15, v11

    goto :goto_4

    .line 8
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_3
    move-object v11, v12

    .line 9
    :cond_4
    :goto_3
    invoke-static {v11}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :goto_4
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Ljava/lang/Class;

    if-eqz v3, :cond_5

    .line 11
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_5

    :cond_5
    move v11, v7

    :goto_5
    if-ge v10, v11, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroid/os/Bundle;

    :cond_6
    move-object/from16 v18, v12

    .line 12
    invoke-virtual {v0, v10, v15}, Lcom/narvii/nested/CoordinateTabFragment;->getTabView(ILjava/lang/String;)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 14
    new-instance v11, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    move-object v13, v11

    invoke-direct/range {v13 .. v18}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lcom/narvii/nested/CoordinateTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 16
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v11, v0, Lcom/narvii/nested/CoordinateTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 17
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 18
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must override [getTabView] method, when you user this methods"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iput v9, v0, Lcom/narvii/nested/CoordinateTabFragment;->showTabCount:I

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 20
    invoke-virtual {v3, v5}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    return-object v3

    .line 21
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must add fragment class"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getCurIndex()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getCurrentShowingFragment()Lcom/narvii/app/NVFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    return-object v0
.end method

.method public final getEnableSwipeRefreshLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    return v0
.end method

.method public final getEnterRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->enterRefresh:Z

    return v0
.end method

.method public final getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return-object p1
.end method

.method public final getHeaderRefreshCallback()Lcom/narvii/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    return-object v0
.end method

.method public final getListener()Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    return-object v0
.end method

.method public final getObserver()Landroid/database/DataSetObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public final getObserverRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    return v0
.end method

.method public final getPageChangeListener()Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    return-object v0
.end method

.method public final getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object v0
.end method

.method public final getPositionToIndexMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getRealPositions()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->realPositions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getRefreshRequestSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshRequestSent:Z

    return v0
.end method

.method public getRefreshingCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshingCount:I

    return v0
.end method

.method protected final getShowTabCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->showTabCount:I

    return v0
.end method

.method public final getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method

.method public final getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getViewPager()Lcom/narvii/widget/NVViewPager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string/jumbo v0, "viewPager"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected final isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 0
    .param p1    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onAppBarLayoutScroll(I)V
    .locals 0

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 6
    .param p1    # Lcom/narvii/app/NVActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 12
    move-result v2

    .line 13
    move v3, v1

    .line 14
    .line 15
    :goto_0
    if-ge v3, v2, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    instance-of v5, v4, Lcom/narvii/app/FragmentOnBackListener;

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    check-cast v4, Lcom/narvii/app/FragmentOnBackListener;

    .line 26
    .line 27
    .line 28
    invoke-interface {v4, p1}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v1
.end method

.method public onCollapseStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget p3, Lcom/narvii/lib/R$layout;->fragment_coordinate_tab:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    .line 20
    :cond_1
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
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/nested/NVAppBarLayout;->removeOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lcom/narvii/nested/NVAppBarLayout;->removeCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVPagerTabLayout;->removePositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    .line 27
    :cond_2
    return-void
.end method

.method public onInstantiateItem(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "any"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPositionChange(IF)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v2, v1, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    if-ne v2, p1, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    const/4 v5, 0x1

    .line 23
    int-to-float v5, v5

    .line 24
    sub-float/2addr v5, p2

    .line 25
    .line 26
    .line 27
    invoke-interface {v4, v3, v2, v5}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v4, p1, 0x1

    .line 31
    .line 32
    if-ne v2, v4, :cond_1

    .line 33
    .line 34
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v4, v3, v2, p2}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    .line 48
    invoke-interface {v4, v3, v2, v5}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    .line 49
    .line 50
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string v0, "enableSwipeRefreshLayout"

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    return-void
.end method

.method public onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "f"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    instance-of p2, p1, Lcom/narvii/list/NVListFragment;

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    move-object p2, p1

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/list/NVListFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    .line 27
    .line 28
    :cond_0
    instance-of p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setOverScrollMode(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->setSwipeRefreshEnabled(Z)V

    .line 39
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 27
    .line 28
    :cond_0
    iput-boolean v2, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    .line 29
    .line 30
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->viewpager:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "findViewById(...)"

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/widget/NVViewPager;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->setViewPager(Lcom/narvii/widget/NVViewPager;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->isScrollable()Z

    .line 52
    move-result v1

    .line 53
    xor-int/2addr v1, v2

    .line 54
    .line 55
    iput-boolean v1, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 91
    .line 92
    sget v0, Lcom/narvii/lib/R$id;->tabs:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVPagerTabLayout;->addPositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    .line 117
    .line 118
    :cond_4
    sget v0, Lcom/narvii/lib/R$id;->swipe_refresh_layout:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    check-cast v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 127
    .line 128
    sget v0, Lcom/narvii/lib/R$id;->appbar_layout:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 137
    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/narvii/nested/NVAppBarLayout;->addOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V

    .line 144
    .line 145
    :cond_5
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 146
    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p0}, Lcom/narvii/nested/NVAppBarLayout;->addCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;->setupSwipeRefreshLayout()V

    .line 154
    .line 155
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 156
    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 161
    move-result-object p1

    .line 162
    goto :goto_0

    .line 163
    :cond_7
    const/4 p1, 0x0

    .line 164
    .line 165
    :goto_0
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 166
    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    instance-of v0, v0, Lcom/narvii/nested/behavior/SpringBehavior;

    .line 176
    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    const-string v0, "null cannot be cast to non-null type com.narvii.nested.behavior.SpringBehavior"

    .line 184
    .line 185
    .line 186
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    check-cast p1, Lcom/narvii/nested/behavior/SpringBehavior;

    .line 189
    .line 190
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;

    .line 191
    .line 192
    .line 193
    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lcom/narvii/nested/behavior/SpringBehavior;->setSpringOffsetCallback(Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;)V

    .line 197
    .line 198
    :cond_8
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 199
    .line 200
    if-eqz p1, :cond_9

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    .line 207
    move-result p1

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->updateTabView(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    .line 214
    move-result-object p1

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    .line 218
    move-result v0

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 222
    .line 223
    if-eqz p2, :cond_a

    .line 224
    .line 225
    const-string p1, "enableSwipeRefreshLayout"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 229
    move-result p1

    .line 230
    .line 231
    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    .line 232
    :cond_a
    return-void
.end method

.method public final resetAdapter()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter(I)V

    return-void
.end method

.method public final resetAdapter(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    :cond_3
    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 9
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    .line 10
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getViewPager()Lcom/narvii/widget/NVViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sendHeaderRequest(Lcom/narvii/util/Callback;)V
    .locals 1
    .param p1    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshingCount(I)V

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 16
    :cond_0
    return-void
.end method

.method public final setAppbarLayout(Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    return-void
.end method

.method public final setCurrentShowingFragment(Lcom/narvii/app/NVFragment;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    return-void
.end method

.method public final setEnableSwipeRefreshLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    return-void
.end method

.method public final setEnterRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->enterRefresh:Z

    return-void
.end method

.method public final setObserverRegistered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observerRegistered:Z

    return-void
.end method

.method public final setPagerAdapter(Lcom/narvii/app/NVScrollablePagerAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVScrollablePagerAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-void
.end method

.method public final setRefreshRequestSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshRequestSent:Z

    return-void
.end method

.method public setRefreshingCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshingCount:I

    return-void
.end method

.method protected final setShowTabCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->showTabCount:I

    return-void
.end method

.method public final setSwipeRefreshLayout(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/list/refresh/SwipeRefreshLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-void
.end method

.method public final setTabLayout(Lcom/narvii/widget/NVPagerTabLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/widget/NVPagerTabLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 13
    :cond_0
    return-void
.end method

.method public final setViewPager(Lcom/narvii/widget/NVViewPager;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/NVViewPager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    return-void
.end method

.method public springRefreshOffset()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/high16 v1, 0x42820000    # 65.0f

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected swipeRefreshTopOffset()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    :cond_0
    return v0
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public final updateHeaderLayout()V
    .locals 0

    return-void
.end method

.method public updateTabView(I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    if-ne p1, v3, :cond_0

    .line 23
    const/4 v6, 0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move v6, v2

    .line 26
    .line 27
    .line 28
    :goto_1
    invoke-interface {v4, v5, v3, v6}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onSelected(Landroid/view/View;IZ)V

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public useUniformSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
