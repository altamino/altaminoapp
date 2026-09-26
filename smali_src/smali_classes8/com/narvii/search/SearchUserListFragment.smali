.class public Lcom/narvii/search/SearchUserListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/search/SearchUserListFragment$Adapter;
    }
.end annotation


# instance fields
.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

.field public source:Ljava/lang/String;

.field stated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, "Search"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->source:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 15
    return-void
.end method

.method private synthetic lambda$createAdapter$0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    instance-of p2, p2, Lcom/narvii/search/ISearchBarHost;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/search/ISearchBarHost;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, p0, p1}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/search/SearchUserListFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/search/SearchUserListFragment;->lambda$createAdapter$0(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/search/SearchUserListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/search/SearchUserListFragment$Adapter;-><init>(Lcom/narvii/search/SearchUserListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/search/SearchUserListFragment;->mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/search/b;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/search/b;-><init>(Lcom/narvii/search/SearchUserListFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->setRefreshListener(Lcom/narvii/search/InstantSearchListener$RefreshListener;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/search/SearchUserListFragment;->mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

    .line 25
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "users_list"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isRootFragment()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    const p1, 0x7f121065

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 20
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->mAdapter:Lcom/narvii/search/SearchUserListFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/narvii/search/SearchUserListFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/narvii/search/InstantSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/narvii/search/SearchUserListFragment;->stated:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p1, "statistics"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 24
    .line 25
    const-string p2, "Search Member"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/search/SearchUserListFragment;->source:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string p2, "Search Member Total"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    const/4 p1, 0x1

    .line 42
    .line 43
    iput-boolean p1, p0, Lcom/narvii/search/SearchUserListFragment;->stated:Z

    .line 44
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a04eb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    instance-of p2, p1, Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    const p2, 0x7f120d75

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    return-void
.end method
