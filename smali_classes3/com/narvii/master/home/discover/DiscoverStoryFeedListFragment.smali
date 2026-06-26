.class public final Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "DiscoverStoryFeedListFragment.kt"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;
.implements Lcom/narvii/master/home/story/CommentSheetDisplayHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;,
        Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$DataSource;
    }
.end annotation


# instance fields
.field private final AUTO_REFRESH_PAUSE_THRESHOLD:I

.field private _$_findViewCache:Ljava/util/HashMap;

.field private bottomSheetLayout:Landroid/widget/FrameLayout;

.field public languageService:Lcom/narvii/language/ContentLanguageService;

.field private lastPauseTime:J

.field private final receiver:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    const v0, 0x124f80

    .line 58
    iput v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->AUTO_REFRESH_PAUSE_THRESHOLD:I

    .line 64
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;-><init>(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBottomSheetLayout$p(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$preload(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->preload(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public static final synthetic access$setAdapter$p(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public static final synthetic access$setBottomSheetLayout$p(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method private final checkIfRefresh()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->lastPauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->lastPauseTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->AUTO_REFRESH_PAUSE_THRESHOLD:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 153
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method private final preload(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 244
    iget-boolean p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method private final recordPauseTime()V
    .locals 2

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->lastPauseTime:J

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 4

    .line 129
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 130
    new-instance v1, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$StoryFeedListAdapter;-><init>(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;Lcom/narvii/app/NVContext;)V

    .line 131
    new-instance v2, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v3, 0x2

    .line 132
    invoke-virtual {v2, v1, v3}, Lcom/narvii/paging/adapter/RecyclerViewColumnAdapter;->setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;I)V

    .line 133
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Lcom/narvii/adapter/recyclerview/OverlayThemeTopOffsetAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/adapter/recyclerview/OverlayThemeTopOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    :cond_0
    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 137
    new-instance v1, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/master/widget/MasterBottomOffsetAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "languageService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLastPauseTime()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->lastPauseTime:J

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "ForYou"

    return-object v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 240
    new-instance v0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    if-nez p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->recordPauseTime()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->checkIfRefresh()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "content_language"

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 77
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/narvii/language/ContentLanguageService;->registerLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    .line 79
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.INTEREST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 82
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f03a5

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "languageService"

    .line 77
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b0297

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->receiver:Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$receiver$1;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/narvii/language/ContentLanguageService;->unRegisterLanguageChangeListener(Lcom/narvii/language/LanguageChangeListener;)V

    return-void

    :cond_0
    const-string v0, "languageService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onLanguageChanged(Ljava/lang/String;)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b01c4

    .line 104
    invoke-virtual {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->setGlobalEmptyView(I)Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "childFragmentManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected sendPageViewEventToThirdParty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBottomSheetLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->bottomSheetLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setLastPauseTime(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/narvii/master/home/discover/DiscoverStoryFeedListFragment;->lastPauseTime:J

    return-void
.end method
