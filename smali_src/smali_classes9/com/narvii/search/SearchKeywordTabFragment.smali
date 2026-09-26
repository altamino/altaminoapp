.class public Lcom/narvii/search/SearchKeywordTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/ISearchBarHost;


# static fields
.field public static final INDEX_CHAT:I = 0x3

.field public static final INDEX_MEMBER:I = 0x2

.field public static final INDEX_POST:I = 0x1


# instance fields
.field configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private searchBar:Lcom/narvii/widget/SearchBar;

.field searchIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchIdMap:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/search/SearchKeywordTabFragment$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/search/SearchKeywordTabFragment$1;-><init>(Lcom/narvii/search/SearchKeywordTabFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    return-object p0
.end method

.method private getCurrentSearchType()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getIndexOfRealPosition(I)I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    const/4 v1, 0x2

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_0
    const-string v0, "chats"

    .line 23
    return-object v0

    .line 24
    .line 25
    .line 26
    :cond_1
    const-string/jumbo v0, "users"

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_2
    const-string v0, "posts"

    .line 30
    return-object v0
.end method

.method private logSearchEvent(Lcom/narvii/master/search/SearchLog;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchIdMap:Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    iget-object v1, p1, Lcom/narvii/master/search/SearchLog;->nvContext:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    sget-object v2, Lcom/narvii/logging/ActSemantic;->search:Lcom/narvii/logging/ActSemantic;

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    const-string v2, "inputText"

    .line 39
    .line 40
    iget-object v3, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    sget-object v2, Lcom/narvii/logging/ObjectType;->query:Lcom/narvii/logging/ObjectType;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget-object v2, p1, Lcom/narvii/master/search/SearchLog;->area:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_1
    const-string v2, "InputArea"

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    const-string v2, "searchType"

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/narvii/search/SearchKeywordTabFragment;->getCurrentSearchType()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    const-string v2, "searchId"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iget-boolean p1, p1, Lcom/narvii/master/search/SearchLog;->instant:Z

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    const-string v1, "instantSearch"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 93
    :cond_2
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method private primaryColor()I
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 16
    move-result v0

    .line 17
    return v0
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

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

    :cond_0
    const-class p1, Lcom/narvii/search/SearchChatListFragment;

    return-object p1

    :cond_1
    const-class p1, Lcom/narvii/search/SearchUserListFragment;

    return-object p1

    :cond_2
    const-class p1, Lcom/narvii/search/SearchPostListFragment;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "community_search"

    return-object v0
.end method

.method public getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchIdMap:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string v0, "search"

    .line 17
    .line 18
    const-string v1, "searchId is null"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-ne p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPostEnabled()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    const p1, 0x7f121064

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    return-object v1

    .line 22
    :cond_1
    const/4 v0, 0x2

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    .line 27
    const p1, 0x7f12106b

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_2
    const/4 v0, 0x3

    .line 34
    .line 35
    if-ne p1, v0, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isChatEnabled()Z

    .line 41
    move-result p1

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPublicChatEnabled()Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    .line 54
    const p1, 0x7f120e4c

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_3
    return-object v1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d04a3

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a0e27

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Landroid/widget/TextView;

    .line 35
    const/4 v0, -0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    return-object p2
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 15
    return-void
.end method

.method public onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->instant()Lcom/narvii/master/search/SearchLog$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/narvii/search/SearchKeywordTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->configHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d030f

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/narvii/search/SearchKeywordTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 40
    :cond_1
    return-void
.end method

.method public onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "Tab"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/master/search/SearchLog$Builder;->area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/search/SearchKeywordTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 18
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 14
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0c8f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/SearchBar;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 22
    .line 23
    const-string v0, "q"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SearchBar;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    :cond_0
    iget-object p2, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/search/SearchKeywordTabFragment;->primaryColor()I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/search/SearchKeywordTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/search/SearchKeywordTabFragment$2;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/search/SearchKeywordTabFragment$2;-><init>(Lcom/narvii/search/SearchKeywordTabFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    const p2, 0x7f0a0d93

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/narvii/search/SearchKeywordTabFragment;->primaryColor()I

    .line 60
    move-result p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    .line 74
    move-result p2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 78
    move-result p2

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, p2}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/util/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 91
    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 98
    move-result p1

    .line 99
    const/4 v0, 0x1

    .line 100
    .line 101
    if-ne p1, v0, :cond_1

    .line 102
    .line 103
    const/16 p1, 0x8

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    const/4 p1, 0x0

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_2
    return-void
.end method
