.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;
.super Ljava/lang/Object;
.source "QuizzesResultRankingListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->shareQuizzesScore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    const-string v0, "current_quiz_result"

    .line 989
    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$400(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    const-string v2, "isGuestMode"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Quiz Results"

    goto :goto_0

    :cond_0
    const-string v1, "Quiz Ranking"

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 985
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$9;->call(Landroid/content/Intent;)V

    return-void
.end method
