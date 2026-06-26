.class public Lcom/narvii/master/search/GlobalSearchTabFragment;
.super Lcom/narvii/app/NVScrollableTabFragment;
.source "GlobalSearchTabFragment.java"

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

    .line 48
    invoke-direct {p0}, Lcom/narvii/app/NVScrollableTabFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$1;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object p0
.end method

.method private getCurrentSearchType()Ljava/lang/String;
    .locals 2

    .line 416
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVScrollableTabFragment;->getIndexOfRealPosition(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "others"

    return-object v0

    :cond_1
    const-string v0, "chats"

    return-object v0

    :cond_2
    const-string v0, "users"

    return-object v0

    :cond_3
    const-string v0, "communities"

    return-object v0
.end method

.method private getDefaultTabIndex(I)I
    .locals 1

    .line 222
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p1

    .line 223
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    :cond_1
    return p1
.end method

.method private logSearchEvent(Lcom/narvii/master/search/SearchLog;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p1, Lcom/narvii/master/search/SearchLog;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 389
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
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

    .line 392
    :goto_0
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    .line 393
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->getCurrentSearchType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "searchType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "searchId"

    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-boolean p1, p1, Lcom/narvii/master/search/SearchLog;->instant:Z

    .line 394
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "instantSearch"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_2
    return-void
.end method


# virtual methods
.method public changeSearchText(Ljava/lang/String;Z)V
    .locals 0

    .line 361
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    if-nez p2, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object p2, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p2}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 366
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method protected createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 4

    .line 236
    invoke-super {p0}, Lcom/narvii/app/NVScrollableTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

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

    .line 215
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->getDefaultTabIndex(I)I

    move-result v0

    return v0

    .line 218
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->defaultTabIndex()I

    move-result v0

    return v0
.end method

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

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 287
    :cond_0
    const-class p1, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    return-object p1

    .line 283
    :cond_1
    const-class p1, Lcom/narvii/master/search/GlobalChatsSearchFragment;

    return-object p1

    .line 285
    :cond_2
    const-class p1, Lcom/narvii/master/search/GlobalUserSearchFragment;

    return-object p1

    .line 281
    :cond_3
    const-class p1, Lcom/narvii/master/CommunitySearchListFragment;

    return-object p1
.end method

.method protected getHintStingId(I)I
    .locals 0

    const p1, 0x7f0f0f4e

    return p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "GlobalSearch"

    return-object v0
.end method

.method public getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    const-string v0, "search"

    const-string v1, "searchId is null"

    .line 410
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method protected getTabLabel(I)Ljava/lang/String;
    .locals 4

    .line 245
    sget v0, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/4 v1, 0x0

    const v2, 0x7f0f02bf

    const/16 v3, 0x65

    if-ne v0, v3, :cond_1

    if-nez p1, :cond_0

    .line 247
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const v2, 0x7f0f0d13

    goto :goto_0

    :cond_3
    const v2, 0x7f0f0f4c

    goto :goto_0

    :cond_4
    const v2, 0x7f0f1148

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 267
    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 2

    .line 300
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0474

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090b41

    .line 301
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onViewCreated$0$GlobalSearchTabFragment()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method public onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 376
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->instant()Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string p1, "tab"

    .line 126
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chat"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultIndex:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const-string v0, "community"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultIndex:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02ac

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onInstantiateItem(Ljava/lang/Object;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->onInstantiateItem(Ljava/lang/Object;)V

    .line 354
    instance-of v0, p1, Lcom/narvii/master/search/ChangeSearchTextRegister;

    if-eqz v0, :cond_0

    .line 355
    check-cast p1, Lcom/narvii/master/search/ChangeSearchTextRegister;

    invoke-interface {p1, p0}, Lcom/narvii/master/search/ChangeSearchTextRegister;->setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 324
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isPermalink(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/narvii/app/ForwardActivity;->isCommunityLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 328
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/app/ForwardActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 330
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 332
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 338
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    .line 339
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    if-eqz v1, :cond_3

    .line 340
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onSearchEditTouchUpListener()V
    .locals 2

    .line 345
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 346
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;

    invoke-interface {v0}, Lcom/narvii/widget/SearchBar$OnSearchEditTouchUpListener;->onEditTouchUp()V

    :cond_0
    return-void
.end method

.method public onSearchFromHistory(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 371
    invoke-static {p1, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    const-string p2, "SearchHistory"

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/SearchLog$Builder;->area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public onSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V
    .locals 0

    .line 381
    invoke-static {p0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    const-string p2, "Tab"

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/SearchLog$Builder;->area(Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->logSearchEvent(Lcom/narvii/master/search/SearchLog;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 314
    instance-of v1, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    if-eqz v1, :cond_0

    .line 315
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 158
    invoke-static {p2}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_0
    const p2, 0x7f0909ca

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SearchBar;

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 161
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 163
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Lcom/narvii/master/search/GlobalSearchTabFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$2;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    new-instance p2, Lcom/narvii/master/search/GlobalSearchTabFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$3;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 183
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    new-instance p2, Lcom/narvii/master/search/-$$Lambda$GlobalSearchTabFragment$piun2T-dJhDhej4FJWWlAZpYtAU;

    invoke-direct {p2, p0}, Lcom/narvii/master/search/-$$Lambda$GlobalSearchTabFragment$piun2T-dJhDhej4FJWWlAZpYtAU;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setClearClickListener(Lcom/narvii/widget/SearchBar$OnClearClickListener;)V

    .line 184
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 186
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    const p2, 0x7f0909d0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 187
    new-instance p2, Lcom/narvii/master/search/GlobalSearchTabFragment$4;

    invoke-direct {p2, p0}, Lcom/narvii/master/search/GlobalSearchTabFragment$4;-><init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->setPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 195
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->defaultTabIndex()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 196
    iget-object p1, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mPagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz p1, :cond_2

    .line 197
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

.method public setSearchId(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment;->searchIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public switchTab(I)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/narvii/app/NVBaseScrollableTabFragment;->mViewPager:Lcom/narvii/widget/NVViewPager;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVScrollableTabFragment;->getRealPositionOfIndex(I)I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public tabLayoutBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 308
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method
