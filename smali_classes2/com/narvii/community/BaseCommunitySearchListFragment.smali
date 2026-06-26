.class public abstract Lcom/narvii/community/BaseCommunitySearchListFragment;
.super Lcom/narvii/community/search/BaseSearchListFragment;
.source "BaseCommunitySearchListFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;,
        Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;,
        Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;,
        Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;
    }
.end annotation


# instance fields
.field protected changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

.field protected searchId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/narvii/community/search/BaseSearchListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/BaseCommunitySearchListFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/community/BaseCommunitySearchListFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected getCurSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected jumpToSearchResultView()V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->notifyAllAdapters()V

    return-void
.end method

.method protected abstract matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;
.end method

.method protected notifyAllAdapters()V
    .locals 0

    return-void
.end method

.method public onEditTouchUp()V
    .locals 0

    return-void
.end method

.method protected onSearch(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSearchButtonClicked()V
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/narvii/community/search/BaseSearchListFragment;->onSearchButtonClicked()V

    .line 292
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 293
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/narvii/community/search/BaseSearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->notifyAllAdapters()V

    :cond_0
    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
