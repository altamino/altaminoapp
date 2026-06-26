.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;
.super Ljava/lang/Object;
.source "QuizzesResultRankingListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->updateNextQuizzesContainer(Lcom/narvii/model/Blog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

.field final synthetic val$nextQuiz:Lcom/narvii/model/Blog;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    iput-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;->val$nextQuiz:Lcom/narvii/model/Blog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 926
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;->val$nextQuiz:Lcom/narvii/model/Blog;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    .line 927
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 928
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$6;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
