.class public Lcom/narvii/master/search/GlobalTopicSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;
.implements Lcom/narvii/master/search/ChangeSearchTextRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;,
        Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

.field aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field private changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

.field private curKey:Ljava/lang/String;

.field hotSearchRunnable:Ljava/lang/Runnable;

.field private searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    .line 11
    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Lcom/narvii/master/search/ChangeSearchTextListener;->changeSearchText(Ljava/lang/String;Z)V

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private searchText(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const-string v1, ""

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v1, p1

    .line 20
    .line 21
    :goto_0
    iput-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private showSearchHistory()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic t(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/narvii/master/search/GlobalTopicSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->lambda$onCreate$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/search/GlobalSearchMergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 13
    .line 14
    const-string v0, "hide_match_id_adapter"

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 27
    .line 28
    :cond_0
    new-instance v2, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    iput-object v2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 39
    .line 40
    new-instance v2, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 41
    .line 42
    .line 43
    const v3, 0x7f1211f7

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 47
    .line 48
    new-instance v3, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, p0, p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    .line 68
    :cond_1
    new-instance v2, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    .line 77
    const v0, 0x7f1211dd

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_2
    const v0, 0x7f12031f

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-direct {v2, p0, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 95
    const/4 v1, 0x1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 99
    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f120d75

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
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

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "topics"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 10
    .line 11
    const-string v0, "topic"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/master/search/n;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/master/search/n;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Le8/l;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Le8/l;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/master/search/o;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/narvii/master/search/o;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Le8/a;)V

    .line 39
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchText(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 29
    :cond_2
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 15
    .line 16
    const-string p2, ""

    .line 17
    .line 18
    iput-object p2, p1, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 31
    .line 32
    :cond_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    const-wide/16 v0, 0x3e8

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 45
    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
