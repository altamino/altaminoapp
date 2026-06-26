.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "QuizzesResultRankingListFragment.java"


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

    .line 675
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 676
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/model/CurrentQuizzesResult;->isFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$2000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b05c0

    .line 681
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09050a

    .line 682
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 693
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09050a

    if-ne v0, v1, :cond_0

    .line 694
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 695
    new-instance p2, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p2, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 696
    sget-object p3, Lcom/narvii/util/logging/LoggingSource;->Replay:Lcom/narvii/util/logging/LoggingSource;

    iput-object p3, p2, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 697
    iget-object p3, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p3}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1700(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/Blog;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p1, p4}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    .line 698
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$HellModeAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return p4

    .line 701
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
