.class public Lcom/narvii/master/search/GlobalTopicSearchFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GlobalTopicSearchFragment.java"

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

    .line 31
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment$1;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$rap4apnYA9GQu-WrzmQvyA00L2c(Lcom/narvii/master/search/GlobalTopicSearchFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method private searchText(Ljava/lang/String;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    if-nez p1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    iput-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    iget-object v1, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 153
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    return-void
.end method

.method private showSearchHistory()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 74
    new-instance p1, Lcom/narvii/master/search/GlobalSearchMergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 75
    new-instance v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    const/4 v0, 0x0

    const-string v1, "hide_match_id_adapter"

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    :cond_0
    new-instance v2, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object v2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    .line 82
    iget-object v2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {v2, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 84
    new-instance v2, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    const v3, 0x7f0f10ed

    invoke-direct {v2, p0, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 85
    new-instance v3, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;

    invoke-direct {v3, p0, p0}, Lcom/narvii/master/search/GlobalTopicSearchFragment$TrendingAdapter;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 86
    invoke-virtual {v2, v3}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 87
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-virtual {p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    :cond_1
    new-instance v2, Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f10d1

    goto :goto_0

    :cond_2
    const v0, 0x7f0f02d4

    :goto_0
    invoke-direct {v2, p0, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 93
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    invoke-virtual {v2, v0}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 94
    invoke-virtual {p1, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/master/search/GlobalSearchMergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method protected emptyMessage()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0c48

    .line 102
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 134
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Topics"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onCreate$0$GlobalTopicSearchFragment(Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 65
    invoke-interface {v0, p1, v1}, Lcom/narvii/master/search/ChangeSearchTextListener;->changeSearchText(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 62
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const-string v0, "topic"

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 63
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    new-instance v0, Lcom/narvii/master/search/-$$Lambda$GlobalTopicSearchFragment$iExIbGI-HxnmSwmSsx6XEnJ3dOE;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/-$$Lambda$GlobalTopicSearchFragment$iExIbGI-HxnmSwmSsx6XEnJ3dOE;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Lkotlin/jvm/functions/Function1;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    new-instance v0, Lcom/narvii/master/search/-$$Lambda$GlobalTopicSearchFragment$rap4apnYA9GQu-WrzmQvyA00L2c;

    invoke-direct {v0, p0}, Lcom/narvii/master/search/-$$Lambda$GlobalTopicSearchFragment$rap4apnYA9GQu-WrzmQvyA00L2c;-><init>(Lcom/narvii/master/search/GlobalTopicSearchFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 139
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    invoke-direct {p0, p2}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchText(Ljava/lang/String;)V

    .line 141
    invoke-static {p2}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/narvii/master/search/GlobalTopicSearchFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 158
    iput-object p2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    if-eqz p1, :cond_0

    .line 160
    invoke-static {p2}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->adapter:Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;

    const-string p2, ""

    iput-object p2, p1, Lcom/narvii/master/search/GlobalTopicSearchFragment$Adapter;->keyword:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz p1, :cond_1

    .line 166
    iget-object p2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->curKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 168
    :cond_1
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    iget-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->hotSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setChangeSearchTextListener(Lcom/narvii/master/search/ChangeSearchTextListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/narvii/master/search/GlobalTopicSearchFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    return-void
.end method
