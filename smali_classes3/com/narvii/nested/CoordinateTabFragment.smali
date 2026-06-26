.class public abstract Lcom/narvii/nested/CoordinateTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "CoordinateTabFragment.kt"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;
.implements Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoordinateTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoordinateTabFragment.kt\ncom/narvii/nested/CoordinateTabFragment\n*L\n1#1,444:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

.field private final bodyRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentShowingFragment:Lcom/narvii/app/NVFragment;

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
.end field

.field private lastVerticalOffset:I

.field private final listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

.field private final observer:Landroid/database/DataSetObserver;

.field private final pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field private pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

.field private final positionToIndexMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
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
.end field

.field private refreshRequestSent:Z

.field private refreshingCount:I

.field private showTabCount:I

.field private swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field private tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

.field private updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

.field public viewPager:Lcom/narvii/widget/NVViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    .line 158
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$listener$1;

    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$listener$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    .line 274
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$observer$1;

    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$observer$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 281
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;

    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$pageChangeListener$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    .line 309
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$bodyRefreshCallback$1;

    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$bodyRefreshCallback$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 316
    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;

    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$headerRefreshCallback$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public static final synthetic access$getBodyRefreshCallback$p(Lcom/narvii/nested/CoordinateTabFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/nested/CoordinateTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method public static final synthetic access$getLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/narvii/nested/CoordinateTabFragment;->lastVerticalOffset:I

    return p0
.end method

.method public static final synthetic access$setLastVerticalOffset$p(Lcom/narvii/nested/CoordinateTabFragment;I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->lastVerticalOffset:I

    return-void
.end method

.method public static synthetic getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 1

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 201
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getBaseAdapter"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setupSwipeRefreshLayout()V
    .locals 6

    .line 324
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 325
    new-instance v1, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/narvii/nested/CoordinateTabFragment$setupSwipeRefreshLayout$$inlined$let$lambda$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    :cond_0
    const-string v0, "config"

    .line 347
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 348
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-array v4, v2, [I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    aput v0, v4, v3

    invoke-virtual {v1, v4}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 349
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshTopOffset()I

    move-result v0

    .line 350
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 351
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 353
    iget-object v5, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v5, :cond_3

    add-int/2addr v1, v0

    add-int/2addr v0, v4

    invoke-virtual {v5, v3, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 355
    :goto_1
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/nested/behavior/SpringBehavior;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 356
    :goto_2
    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected abstract createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
.end method

.method public createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;
    .locals 1

    .line 196
    new-instance v0, Lcom/narvii/nested/tab/SelectTabViewDelegate;

    invoke-direct {v0}, Lcom/narvii/nested/tab/SelectTabViewDelegate;-><init>()V

    return-object v0
.end method

.method protected defaultTabIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    return-object v0
.end method

.method public final getBaseAdapter(Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 7
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

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 7
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

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/narvii/nested/CoordinateTabFragment;->getBaseAdapter$default(Lcom/narvii/nested/CoordinateTabFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final getBaseAdapter(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "labelResIds"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fragmentClzzList"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 206
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v6, :cond_8

    .line 208
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

    if-eqz v4, :cond_1

    .line 210
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_4

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_3

    .line 212
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v12

    :cond_3
    :goto_2
    const-string v13, "if (index < labelResIds.\u2026belResIds[index]) else \"\""

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    :cond_4
    :goto_3
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v18, v13

    check-cast v18, Ljava/lang/Class;

    if-eqz v3, :cond_5

    .line 215
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    if-ge v10, v13, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    :cond_6
    move-object/from16 v19, v12

    .line 216
    invoke-virtual {v0, v10, v11}, Lcom/narvii/nested/CoordinateTabFragment;->getTabView(ILjava/lang/String;)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_7

    .line 218
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 219
    new-instance v12, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    move-object v14, v12

    move-object/from16 v16, v11

    invoke-direct/range {v14 .. v19}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v11, v0, Lcom/narvii/nested/CoordinateTabFragment;->realPositions:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    iget-object v11, v0, Lcom/narvii/nested/CoordinateTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 217
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must override [getTabView] method, when you user this methods"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_8
    iput v9, v0, Lcom/narvii/nested/CoordinateTabFragment;->showTabCount:I

    .line 227
    new-instance v1, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;

    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/narvii/nested/CoordinateTabFragment$getBaseAdapter$adapter$1;-><init>(Lcom/narvii/nested/CoordinateTabFragment;Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    .line 243
    invoke-virtual {v1, v5}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    return-object v1

    .line 203
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must add fragment class"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public final getCurIndex()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getCurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentShowingFragment()Lcom/narvii/app/NVFragment;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    return-object v0
.end method

.method public final getEnableSwipeRefreshLayout()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    return v0
.end method

.method public final getEnterRefresh()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->enterRefresh:Z

    return v0
.end method

.method public final getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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

    .line 316
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    return-object v0
.end method

.method public final getListener()Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    return-object v0
.end method

.method public final getObserver()Landroid/database/DataSetObserver;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public final getPageChangeListener()Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    return-object v0
.end method

.method public final getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 1

    .line 42
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

    .line 50
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

    .line 49
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->realPositions:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final getRefreshRequestSent()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshRequestSent:Z

    return v0
.end method

.method public getRefreshingCount()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshingCount:I

    return v0
.end method

.method protected final getShowTabCount()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->showTabCount:I

    return v0
.end method

.method public final getSwipeRefreshLayout()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method

.method public final getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object v0
.end method

.method public getTabView(ILjava/lang/String;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getViewPager()Lcom/narvii/widget/NVViewPager;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAppBarLayoutOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V
    .locals 0

    return-void
.end method

.method public onAppBarLayoutScroll(I)V
    .locals 0

    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 6

    .line 415
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 420
    invoke-virtual {v0, v3}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 421
    instance-of v5, v4, Lcom/narvii/app/FragmentOnBackListener;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/narvii/app/FragmentOnBackListener;

    invoke-interface {v4, p1}, Lcom/narvii/app/FragmentOnBackListener;->onBackPressed(Lcom/narvii/app/NVActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onCollapseStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget p3, Lcom/narvii/lib/R$layout;->fragment_coordinate_tab:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 130
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/narvii/nested/NVAppBarLayout;->removeOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/narvii/nested/NVAppBarLayout;->removeCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVPagerTabLayout;->removePositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onInstantiateItem(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "any"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPositionChange(IF)V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 434
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 435
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v1, p1, :cond_0

    .line 437
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    int-to-float v5, v5

    sub-float/2addr v5, p2

    invoke-interface {v4, v3, v1, v5}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, p1, 0x1

    if-ne v1, v4, :cond_1

    .line 438
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3, v1, p2}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    goto :goto_1

    .line 439
    :cond_1
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    invoke-interface {v4, v3, v1, v5}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onScrolled(Landroid/view/View;IF)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    iget-boolean v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    const-string v1, "enableSwipeRefreshLayout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSubFragmentCreated(Landroid/support/v4/app/Fragment;I)V
    .locals 2

    const-string p2, "f"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->useUniformSwipeRefresh()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 253
    instance-of p2, p1, Lcom/narvii/list/NVListFragment;

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    .line 254
    move-object p2, p1

    check-cast p2, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p2, v1}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 255
    invoke-virtual {p2, v0}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    .line 257
    :cond_0
    instance-of p2, p1, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz p2, :cond_1

    .line 258
    check-cast p1, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p1, v1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setOverScrollMode(I)V

    .line 259
    invoke-virtual {p1, v0}, Lcom/narvii/paging/NVRecyclerViewFragment;->setSwipeRefreshEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 67
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 69
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.viewpager)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/narvii/widget/NVViewPager;

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 70
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    const-string v1, "viewPager"

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->isScrollable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 71
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_1

    .line 72
    sget v3, Lcom/narvii/lib/R$id;->viewpager:I

    invoke-virtual {p0, v3}, Lcom/narvii/nested/CoordinateTabFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 74
    :cond_1
    sget v0, Lcom/narvii/lib/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVViewPager;

    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 77
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->createUpdateTabViewDelegate()Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    .line 79
    sget v0, Lcom/narvii/lib/R$id;->tabs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVPagerTabLayout;

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 80
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVPagerTabLayout;->addPositionListener(Lcom/narvii/widget/NVPagerTabLayout$PositionChangeListener;)V

    .line 83
    :cond_4
    sget v0, Lcom/narvii/lib/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 85
    sget v0, Lcom/narvii/lib/R$id;->appbar_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 86
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->listener:Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    invoke-virtual {p1, v0}, Lcom/narvii/nested/NVAppBarLayout;->addOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lcom/narvii/nested/NVAppBarLayout;->addCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V

    .line 88
    :cond_6
    invoke-direct {p0}, Lcom/narvii/nested/CoordinateTabFragment;->setupSwipeRefreshLayout()V

    .line 89
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v2

    .line 90
    :goto_1
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/nested/behavior/SpringBehavior;

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Lcom/narvii/nested/behavior/SpringBehavior;

    new-instance v0, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcom/narvii/nested/CoordinateTabFragment$onViewCreated$2;-><init>(Lcom/narvii/nested/CoordinateTabFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/nested/behavior/SpringBehavior;->setSpringOffsetCallback(Lcom/narvii/nested/behavior/SpringBehavior$SpringOffsetCallback;)V

    goto :goto_2

    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.nested.behavior.SpringBehavior"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    :cond_a
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/nested/CoordinateTabFragment;->updateTabView(I)V

    .line 116
    iget-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    if-eqz p2, :cond_b

    const-string p1, "enableSwipeRefreshLayout"

    .line 119
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    :cond_b
    return-void

    .line 116
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final resetAdapter()V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->resetAdapter(I)V

    return-void
.end method

.method public final resetAdapter(I)V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    const/4 v1, 0x0

    const-string v2, "viewPager"

    if-eqz v0, :cond_1

    .line 395
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 396
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 400
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 402
    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 404
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 405
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    .line 406
    :cond_4
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/narvii/nested/CoordinateTabFragment;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 408
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :catch_0
    :goto_2
    return-void

    .line 404
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public sendHeaderRequest(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/narvii/nested/CoordinateTabFragment;->getRefreshingCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/narvii/nested/CoordinateTabFragment;->setRefreshingCount(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 301
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setAppbarLayout(Lcom/narvii/nested/NVAppBarLayout;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    return-void
.end method

.method public final setCurrentShowingFragment(Lcom/narvii/app/NVFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    return-void
.end method

.method public final setEnableSwipeRefreshLayout(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->enableSwipeRefreshLayout:Z

    return-void
.end method

.method public final setEnterRefresh(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->enterRefresh:Z

    return-void
.end method

.method public final setPagerAdapter(Lcom/narvii/app/NVScrollablePagerAdapter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-void
.end method

.method public final setRefreshRequestSent(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshRequestSent:Z

    return-void
.end method

.method public setRefreshingCount(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->refreshingCount:I

    return-void
.end method

.method protected final setShowTabCount(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->showTabCount:I

    return-void
.end method

.method public final setSwipeRefreshLayout(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-void
.end method

.method public final setTabLayout(Lcom/narvii/widget/NVPagerTabLayout;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 137
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public final setViewPager(Lcom/narvii/widget/NVViewPager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/narvii/nested/CoordinateTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    return-void
.end method

.method public springRefreshOffset()I
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method protected swipeRefreshTopOffset()I
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    if-lez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    :cond_0
    return-void
.end method

.method public final updateHeaderLayout()V
    .locals 0

    return-void
.end method

.method public updateTabView(I)V
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/narvii/nested/CoordinateTabFragment;->tabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 269
    iget-object v4, p0, Lcom/narvii/nested/CoordinateTabFragment;->updateTabViewDelegate:Lcom/narvii/nested/tab/UpdateTabViewDelegate;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v5

    if-ne p1, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-interface {v4, v5, v3, v6}, Lcom/narvii/nested/tab/UpdateTabViewDelegate;->onSelected(Landroid/view/View;IZ)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public useUniformSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
