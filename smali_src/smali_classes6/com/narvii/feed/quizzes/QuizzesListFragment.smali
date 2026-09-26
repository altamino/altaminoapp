.class public Lcom/narvii/feed/quizzes/QuizzesListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;
    }
.end annotation


# instance fields
.field private hotCategoriesAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

.field private trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;


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

.method static bridge synthetic t(Lcom/narvii/feed/quizzes/QuizzesListFragment;)Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->hotCategoriesAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->hotCategoriesAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 26
    .line 27
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 36
    .line 37
    .line 38
    const v2, 0x7f120cce

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0, v2, v1}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->setupAdapter(Lcom/narvii/app/NVContext;Lcom/narvii/list/NVAdapter;Ljava/lang/String;Z)Lcom/narvii/list/NVAdapter;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    return-object p1
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSwipeRefresh()Z
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
    .line 5
    .line 6
    const v0, 0x7f120e4e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "statistics"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 20
    .line 21
    const-string v0, "Quizzes Page Opened"

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "Source"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v0, "Quizzes Page Opened Total"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 41
    :cond_0
    return-void
.end method

.method protected onErrorRetry()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 13
    :cond_0
    return-void
.end method
