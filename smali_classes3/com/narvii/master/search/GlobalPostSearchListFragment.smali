.class public Lcom/narvii/master/search/GlobalPostSearchListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalPostSearchListFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;
.implements Lcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;,
        Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;
    }
.end annotation


# instance fields
.field final SEARCH_SOURCE:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

.field feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

.field languageService:Lcom/narvii/language/ContentLanguageService;

.field prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

.field searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->SEARCH_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->mVideoListDelegate:Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/narvii/list/NVListFragment;->videoAutoPlay:Z

    return p0
.end method

.method public static synthetic lambda$Ik6dFhviGAtY7m6PQe6Sc4jKMt4(Lcom/narvii/master/search/GlobalPostSearchListFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private onSearchText(Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz v0, :cond_0

    .line 176
    iput-object p1, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 177
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->notifyDataSetChanged()V

    return-void
.end method

.method private showSearchHistory()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 74
    new-instance p1, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 76
    new-instance p1, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/search/GlobalPostSearchListFragment$1;-><init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;Lcom/narvii/app/NVContext;)V

    .line 101
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 103
    new-instance v0, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;-><init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    .line 104
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    const-string v1, "search_key"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/narvii/master/HeadlineDividerAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/HeadlineDividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 106
    iget-object v1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/master/HeadlineDividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v1, "hide_match_id_adapter"

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0, v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    :cond_0
    new-instance v1, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/search/GlobalPostSearchListFragment$SearchResultHeaderAdapter;-><init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 126
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Posts"

    return-object v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 310
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onCreate$0$GlobalPostSearchListFragment(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 59
    invoke-interface {v0, p1, v1}, Lcom/narvii/master/search/ChangeSearchTextListener;->changeSearchText(Ljava/lang/String;Z)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->SEARCH_SOURCE:Lcom/narvii/util/statistics/TmpValue;

    const-string v1, "Recent Searches"

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigChanged()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 54
    new-instance p1, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->prefsHelper:Lcom/narvii/master/search/GlobalPostSearchPrefsHelper;

    const-string p1, "content_language"

    .line 55
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 56
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const-string v0, "searchHistoryList"

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 57
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    new-instance v0, Lcom/narvii/master/search/-$$Lambda$GlobalPostSearchListFragment$OX9YMaa8UakV5rXgakxi2Hhofng;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/-$$Lambda$GlobalPostSearchListFragment$OX9YMaa8UakV5rXgakxi2Hhofng;-><init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Lkotlin/jvm/functions/Function1;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    new-instance v0, Lcom/narvii/master/search/-$$Lambda$GlobalPostSearchListFragment$Ik6dFhviGAtY7m6PQe6Sc4jKMt4;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/-$$Lambda$GlobalPostSearchListFragment$Ik6dFhviGAtY7m6PQe6Sc4jKMt4;-><init>(Lcom/narvii/master/search/GlobalPostSearchListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02aa

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 170
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->onSearchText(Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1, p1}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->onSearchText(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->feedAdapter:Lcom/narvii/master/search/GlobalPostSearchListFragment$FeedAdapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 155
    iget-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalPostSearchListFragment;->notifyDataSetChanged()V

    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
