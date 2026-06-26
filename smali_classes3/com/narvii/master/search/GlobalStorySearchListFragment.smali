.class public final Lcom/narvii/master/search/GlobalStorySearchListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalStorySearchListFragment.kt"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;
.implements Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;,
        Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;,
        Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;,
        Lcom/narvii/master/search/GlobalStorySearchListFragment$StoryStatusAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalStorySearchListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalStorySearchListFragment.kt\ncom/narvii/master/search/GlobalStorySearchListFragment\n*L\n1#1,367:1\n*E\n"
.end annotation


# instance fields
.field private final SEARCH_SOURCE:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _$_findViewCache:Ljava/util/HashMap;

.field private aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field private changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

.field private feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

.field private searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

.field private trendingStoryAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->SEARCH_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public static final synthetic access$getAminoIdMatchedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/AminoIdMatchedAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "aminoIdMatchedAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getFeedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "feedAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getLanguageService$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "languageService"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMVideoListDelegate$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method public static final synthetic access$getPrefsHelper$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "prefsHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$setAminoIdMatchedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/master/search/AminoIdMatchedAdapter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    return-void
.end method

.method public static final synthetic access$setFeedAdapter$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    return-void
.end method

.method public static final synthetic access$setLanguageService$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public static final synthetic access$setMVideoListDelegate$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-void
.end method

.method public static final synthetic access$setPrefsHelper$p(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    return-void
.end method

.method public static final synthetic access$showSearchHistory(Lcom/narvii/master/search/GlobalStorySearchListFragment;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method private final notifyDataSetChanged()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string v0, "feedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final onSearchText(Ljava/lang/String;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    const-string v1, "feedAdapter"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->setKeyword(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/story/StoryListAdapter;->resetList()V

    .line 172
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string p1, "aminoIdMatchedAdapter"

    .line 172
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final showSearchHistory()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "feedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 8

    .line 73
    new-instance p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 75
    new-instance p1, Lcom/narvii/master/search/GlobalStorySearchListFragment$createAdapter$mergeAdapter$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$createAdapter$mergeAdapter$1;-><init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V

    .line 87
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 89
    new-instance v0, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v2, 0x7f0f10ed

    invoke-direct {v0, p0, v2}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 90
    new-instance v2, Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;-><init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->trendingStoryAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;

    .line 91
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    .line 92
    new-instance v3, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v3, p0, v2, v2}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 93
    iget-object v4, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->trendingStoryAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 94
    iget-object v4, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->trendingStoryAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$TrendingStoryAdapter;

    invoke-virtual {v0, v4}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setHost$Amino_bundle(Lcom/narvii/list/NVAdapter;)V

    const/4 v4, 0x0

    const-string v6, "hide_match_id_adapter"

    .line 95
    invoke-virtual {p0, v6, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 96
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    :cond_0
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v0, p0, v2, v2}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 101
    new-instance v2, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;-><init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    .line 102
    iget-object v2, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    const-string v3, "feedAdapter"

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2, v5}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 104
    new-instance v2, Lcom/narvii/master/search/GlobalStorySearchListFragment$StoryStatusAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$StoryStatusAdapter;-><init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V

    .line 105
    iget-object v5, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-virtual {p0, v6, v4}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_1
    const-string p1, "aminoIdMatchedAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_2
    :goto_0
    new-instance v1, Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$SearchResultHeaderAdapter;-><init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 112
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1

    .line 105
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "searchHistoryDelegate"

    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getChangeSearchTextListener$Amino_bundle()Lcom/narvii/master/search/ChangeSearchTextListener;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 124
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Stories"

    return-object v0
.end method

.method public final getSEARCH_SOURCE$Amino_bundle()Lcom/narvii/util/statistics/TmpValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->SEARCH_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    return-object v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 3

    .line 356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return-object v1

    .line 359
    :cond_0
    new-instance v0, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {v0, p0, v2}, Lcom/narvii/nvplayer/delegate/DiscoverVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigChanged()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/story/StoryListAdapter;->resetList()V

    return-void

    :cond_0
    const-string v0, "feedAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 57
    new-instance p1, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x9

    invoke-direct {p1, v0, v2}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    const-string p1, "content_language"

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getService(\"content_language\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 59
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const-string v0, "searchHistoryList9"

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 60
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const-string v0, "searchHistoryDelegate"

    if-eqz p1, :cond_1

    new-instance v2, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;

    invoke-direct {v2, p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;-><init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;)V

    invoke-virtual {p1, v2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Lkotlin/jvm/functions/Function1;)V

    .line 65
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$2;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$2;-><init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0b02aa

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_1
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    const-string p1, "text"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->onSearchText(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "searchHistoryDelegate"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v1, v1}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->onSearchText(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "searchHistoryDelegate"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "feedAdapter"

    .line 128
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 148
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    const-string p2, "feedAdapter"

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;->setKeyword(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalStorySearchListFragment$FeedStoryAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/story/StoryListAdapter;->resetList()V

    .line 150
    iget-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->notifyDataSetChanged()V

    .line 153
    iget-object p1, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    check-cast p1, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->reset()V

    .line 155
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;->listViewFirstBecomeVisible()V

    goto :goto_0

    :cond_0
    const-string p1, "aminoIdMatchedAdapter"

    .line 150
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method

.method public final setChangeSearchTextListener$Amino_bundle(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
