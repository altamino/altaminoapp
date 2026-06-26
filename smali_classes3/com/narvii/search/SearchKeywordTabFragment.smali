.class public Lcom/narvii/search/SearchKeywordTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SearchKeywordTabFragment.java"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/ISearchBarHost;


# static fields
.field public static final INDEX_CHAT:I = 0x3

.field public static final INDEX_MEMBER:I = 0x2

.field public static final INDEX_POST:I = 0x1


# instance fields
.field configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private searchBar:Lcom/narvii/widget/SearchBar;

.field searchIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchIdMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/narvii/search/SearchKeywordTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/search/SearchKeywordTabFragment$1;-><init>(Lcom/narvii/search/SearchKeywordTabFragment;)V

    iput-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object p0
.end method

.method private getCurrentSearchType()Ljava/lang/String;
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getIndexOfRealPosition(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "chats"

    return-object v0

    :cond_1
    const-string v0, "users"

    return-object v0

    :cond_2
    const-string v0, "posts"

    return-object v0
.end method

.method private logSearchEvent(Lcom/narvii/master/search/SearchLog;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchIdMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, p1, Lcom/narvii/master/search/SearchLog;->nvContext:Lcom/narvii/app/NVContext;

    sget-object v2, Lcom/narvii/logging/ActSemantic;->search:Lcom/narvii/logging/ActSemantic;

    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    const-string v3, "inputText"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/narvii/master/search/SearchLog;->area:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "InputArea"

    .line 263
    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    .line 264
    invoke-direct {p0}, Lcom/narvii/search/SearchKeywordTabFragment;->getCurrentSearchType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "searchType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "searchId"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-boolean p1, p1, Lcom/narvii/master/search/SearchLog;->instant:Z

    .line 265
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "instantSearch"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_2
    return-void
.end method

.method private primaryColor()I
    .locals 1

    const-string v0, "config"

    .line 159
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 160
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected getFragment(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 194
    :cond_0
    const-class p1, Lcom/narvii/search/SearchChatListFragment;

    return-object p1

    .line 192
    :cond_1
    const-class p1, Lcom/narvii/search/SearchUserListFragment;

    return-object p1

    .line 190
    :cond_2
    const-class p1, Lcom/narvii/search/SearchPostListFragment;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommunitySearch"

    return-object v0
.end method

.method public getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string v0, "search"

    const-string v1, "searchId is null"

    .line 245
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0f0f58

    .line 168
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const p1, 0x7f0f0f5f

    .line 173
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 175
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f0d27

    .line 176
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 202
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0474

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090b41

    .line 203
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method public onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 235
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->instant()Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/search/SearchKeywordTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 100
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02dd

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 221
    :cond_0
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/search/SearchKeywordTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 222
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 223
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    if-eqz v1, :cond_1

    .line 224
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 252
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    const-string p2, "Tab"

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/SearchLog$Builder;->area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/search/SearchKeywordTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 211
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    if-eqz v1, :cond_0

    .line 212
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0909c7

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SearchBar;

    iput-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 119
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {v0, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    if-nez p2, :cond_0

    .line 121
    iget-object p2, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    const-string v0, "q"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/narvii/widget/SearchBar;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    iget-object p2, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-direct {p0}, Lcom/narvii/search/SearchKeywordTabFragment;->primaryColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 125
    iget-object p2, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    new-instance v0, Lcom/narvii/search/SearchKeywordTabFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/search/SearchKeywordTabFragment$2;-><init>(Lcom/narvii/search/SearchKeywordTabFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const p2, 0x7f090a9a

    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/narvii/search/SearchKeywordTabFragment;->primaryColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 139
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 141
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz p1, :cond_2

    .line 142
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_2
    return-void
.end method
