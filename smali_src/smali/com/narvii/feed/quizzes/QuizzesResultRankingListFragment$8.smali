.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->showNextQuizzesLayout()V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()D

    .line 12
    move-result-wide v0

    .line 13
    double-to-float p1, v0

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    sub-float/2addr v0, p1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const/high16 v1, 0x42b40000    # 90.0f

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 28
    move-result p1

    .line 29
    mul-float/2addr v0, p1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$8;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->z(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/FrameLayout;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 39
    :cond_0
    return-void
.end method
