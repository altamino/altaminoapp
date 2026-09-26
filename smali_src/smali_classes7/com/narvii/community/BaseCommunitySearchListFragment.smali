.class public abstract Lcom/narvii/community/BaseCommunitySearchListFragment;
.super Lcom/narvii/community/search/BaseSearchListFragment;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/search/BaseSearchListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/BaseCommunitySearchListFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    .line 3
    return p0
.end method

.method static synthetic access$400(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/community/BaseCommunitySearchListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showTrending:Z

    .line 3
    return p0
.end method

.method static synthetic access$600(Lcom/narvii/community/BaseCommunitySearchListFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method protected getCurSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected jumpToSearchResultView()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->notifyAllAdapters()V

    .line 4
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/search/BaseSearchListFragment;->onSearchButtonClicked()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/search/BaseSearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->notifyAllAdapters()V

    .line 13
    :cond_0
    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
