.class public Lcom/narvii/feed/quizzes/QuizzesListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "QuizzesListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;,
        Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;
    }
.end annotation


# instance fields
.field private hotCategoriesAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

.field private trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/quizzes/QuizzesListFragment;)Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 63
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 64
    new-instance p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V

    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->hotCategoriesAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

    .line 66
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->hotCategoriesAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$HotCategoriesAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 68
    new-instance v0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingSectionHeaderAdapter;-><init>(Lcom/narvii/feed/quizzes/QuizzesListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0d29

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    return-void
.end method

.method protected onErrorRetry()V
    .locals 3

    .line 76
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onErrorRetry()V

    .line 77
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onRefresh()V

    .line 85
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment;->trendingQuizzesListAdapter:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
