.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;
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

    .line 915
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    iput-object p2, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;->val$nextQuiz:Lcom/narvii/model/Blog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 918
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$5;->val$nextQuiz:Lcom/narvii/model/Blog;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1900(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;Lcom/narvii/model/Blog;Z)V

    return-void
.end method
