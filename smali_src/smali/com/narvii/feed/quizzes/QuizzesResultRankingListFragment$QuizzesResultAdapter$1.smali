.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/VersatileLoaderView$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStateChange(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->g(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;Z)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->f(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;Z)V

    .line 27
    :cond_0
    return-void
.end method
