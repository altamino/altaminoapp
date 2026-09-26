.class public Lcom/narvii/master/search/GlobalSearchTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/master/search/ChangeSearchTextListener;
.implements Lcom/narvii/search/ISearchBarHost;


# static fields
.field public static final HOT_SEARCH_INTERVAL:J = 0x3e8L

.field public static final INDEX_CHAT:I = 0x2

.field public static final INDEX_COMMUNITY:I = 0x0

.field public static final INDEX_OTHERS:I = 0x3

.field public static final INDEX_USER:I = 0x1


# instance fields
.field private defaultIndex:Ljava/lang/Integer;

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
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$1;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
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
    .line 10
    if-eqz v0, :cond_3

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_0
    const-string v0, "others"

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_1
    const-string v0, "chats"

    .line 28
    return-object v0

    .line 29
    .line 30
    :cond_2
    const-string v0, "users"

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_3
    const-string v0, "communities"

    .line 34
    return-object v0
.end method

.method private getDefaultTabIndex(I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 30
    move-result v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    sub-int/2addr v0, p1

    .line 34
    return v0

    .line 35
    :cond_1
    return p1
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 10
    return-void
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
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

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
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->getCurrentSearchType()Ljava/lang/String;

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

.method public static synthetic n(Lcom/narvii/master/search/GlobalSearchTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->lambda$onViewCreated$0()V

    return-void
.end method

.method static bridge synthetic o(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public changeSearchText(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 39
    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    if-le v2, v3, :cond_0

    .line 22
    const/4 v2, 0x0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const/16 v2, 0x8

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_1
    return-object v0
.end method

.method public defaultOffScreenPage()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public defaultTabIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->getDefaultTabIndex(I)I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    return-object p1

    :cond_1
    const-class p1, Lcom/narvii/master/search/GlobalChatsSearchFragment;

    return-object p1

    :cond_2
    const-class p1, Lcom/narvii/master/search/GlobalUserSearchFragment;

    return-object p1

    :cond_3
    const-class p1, Lcom/narvii/master/CommunitySearchListFragment;

    return-object p1
.end method

.method protected getHintStingId(I)I
    .locals 0

    const p1, 0x7f12105c

    return p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "global_search"

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
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

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
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    const p1, 0x7f120e39

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_1
    const p1, 0x7f12105a

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_2
    const p1, 0x7f121251

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_3
    const p1, 0x7f12030a

    .line 29
    .line 30
    :goto_0
    if-eqz p1, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_4
    const/4 p1, 0x0

    .line 37
    return-object p1
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

.method public isGlobal()Z
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
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/app/ComScoreSectionDispatcher;->INSTANCE:Lcom/narvii/app/ComScoreSectionDispatcher;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/ComScoreSectionDispatcher;->sectionChangeToNone()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const/16 v1, 0x33

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p1, "statistics"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 32
    .line 33
    const-string v0, "Global Search (Communities, Posts)"

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "Global Search (Communities, Posts) Total"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string v0, "Source"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 53
    .line 54
    :cond_0
    const-string p1, "tab"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    const-string v0, "chat"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    const/4 p1, 0x2

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_1
    const-string v0, "community"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-eqz p1, :cond_2

    .line 83
    const/4 p1, 0x0

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultIndex:Ljava/lang/Integer;

    .line 90
    :cond_2
    :goto_0
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
    const p3, 0x7f0d02dc

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

.method protected onInstantiateItem(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    .line 4
    .line 5
    instance-of v0, p1, Lcom/narvii/master/search/ChangeSearchTextRegister;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/master/search/ChangeSearchTextRegister;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p0}, Lcom/narvii/master/search/ChangeSearchTextRegister;->setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 11
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 5

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
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isPermalink(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    .line 34
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    new-instance v1, Landroid/content/Intent;

    .line 38
    .line 39
    const-string v2, "android.intent.action.VIEW"

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    new-instance v2, Landroid/content/ComponentName;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    const-class v4, Lcom/narvii/app/ForwardActivity;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 67
    .line 68
    .line 69
    :catch_0
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 82
    .line 83
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 91
    :cond_3
    return-void
.end method

.method public onSearchEditTouchUpListener()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;->onEditTouchUp()V

    .line 14
    :cond_0
    return-void
.end method

.method public onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "SearchHistory"

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
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 18
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
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 13
    .line 14
    .line 15
    :cond_0
    const p2, 0x7f0a0c92

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    new-instance p2, Lcom/narvii/master/search/GlobalSearchTabFragment$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$2;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 43
    .line 44
    new-instance p2, Lcom/narvii/master/search/GlobalSearchTabFragment$3;

    .line 45
    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$3;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 53
    .line 54
    new-instance p2, Lcom/narvii/master/search/m;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/narvii/master/search/m;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setClearClickListener(Lcom/narvii/widget/SearchBar$OnClearClickListener;)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 66
    move-result p2

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 72
    .line 73
    .line 74
    const p2, 0x7f0a0c98

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Landroid/widget/Button;

    .line 81
    .line 82
    new-instance p2, Lcom/narvii/master/search/GlobalSearchTabFragment$4;

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$4;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultTabIndex()I

    .line 99
    move-result p2

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 103
    move-result p2

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, p2}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 107
    .line 108
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 109
    .line 110
    if-eqz p1, :cond_2

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 116
    move-result p1

    .line 117
    const/4 v0, 0x1

    .line 118
    .line 119
    if-ne p1, v0, :cond_1

    .line 120
    .line 121
    const/16 p1, 0x8

    .line 122
    goto :goto_0

    .line 123
    :cond_1
    const/4 p1, 0x0

    .line 124
    .line 125
    .line 126
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_2
    return-void
.end method

.method public setSearchId(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public switchTab(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    .line 13
    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method
