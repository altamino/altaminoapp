.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;
.super Ljava/lang/Object;
.source "QuizzesResultRankingListFragment.java"

# interfaces
.implements Lcom/narvii/feed/FeedHelper$StartQuizListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuizStartFailed()V
    .locals 0

    return-void
.end method

.method public onQuizStarted()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$1;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
