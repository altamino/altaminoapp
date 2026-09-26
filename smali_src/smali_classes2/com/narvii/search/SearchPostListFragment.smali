.class public Lcom/narvii/search/SearchPostListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/search/SearchPostListFragment$Adapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/search/SearchPostListFragment$Adapter;-><init>(Lcom/narvii/search/SearchPostListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 8
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "posts_list"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

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
    return-void
.end method

.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/search/SearchPostListFragment$Adapter;->p(Lcom/narvii/search/SearchPostListFragment$Adapter;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 10
    const/4 p2, 0x0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    .line 16
    const-string p1, "statistics"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 23
    .line 24
    const-string p2, "Search for content"

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string p2, "Search Total"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    const-string p2, "Type"

    .line 37
    .line 38
    const-string v0, "Post"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 42
    :cond_0
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/search/SearchPostListFragment$Adapter;->o(Lcom/narvii/search/SearchPostListFragment$Adapter;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/narvii/search/SearchPostListFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 22
    :cond_0
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/search/SearchPostListFragment$Adapter;->p(Lcom/narvii/search/SearchPostListFragment$Adapter;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/search/SearchPostListFragment;->mAdapter:Lcom/narvii/search/SearchPostListFragment$Adapter;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 23
    :cond_0
    return-void
.end method
