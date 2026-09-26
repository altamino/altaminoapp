.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HellModeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->v(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/narvii/model/CurrentQuizzesResult;->isFinished:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->C(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0677

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    const p2, 0x7f0a0660

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0660

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance p1, Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    new-instance p2, Lcom/narvii/feed/FeedHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    sget-object p3, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    .line 24
    .line 25
    iput-object p3, p2, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 26
    .line 27
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->D(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    .line 31
    move-result-object p3

    .line 32
    const/4 p4, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3, p1, p4}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 41
    return p4

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 45
    move-result p1

    .line 46
    return p1
.end method
