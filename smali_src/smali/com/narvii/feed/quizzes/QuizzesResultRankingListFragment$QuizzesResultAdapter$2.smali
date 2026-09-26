.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/e;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()D

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    .line 19
    .line 20
    .line 21
    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/k;->a(DDDDD)D

    .line 22
    move-result-wide v0

    .line 23
    double-to-float p1, v0

    .line 24
    float-to-double v0, p1

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 30
    .line 31
    cmpl-double v0, v0, v2

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$2;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 68
    return-void
.end method
