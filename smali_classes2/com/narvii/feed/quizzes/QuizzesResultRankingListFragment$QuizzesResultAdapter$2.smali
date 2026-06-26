.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "QuizzesResultRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->showBeatResultView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 10

    .line 558
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 560
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 563
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method
