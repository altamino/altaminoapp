.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$2;
.super Ljava/lang/Object;
.source "QuizzesResultRankingListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
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
.field final synthetic this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/content/Intent;)V
    .locals 2

    .line 653
    :try_start_0
    sget-object v0, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    const-string v1, "Quiz Ranking"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;->access$1800(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 649
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$ShareAndReplayAdapter$2;->call(Landroid/content/Intent;)V

    return-void
.end method
