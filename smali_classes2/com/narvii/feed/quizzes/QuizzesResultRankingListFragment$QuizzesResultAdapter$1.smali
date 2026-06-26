.class Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;
.super Ljava/lang/Object;
.source "QuizzesResultRankingListFragment.java"

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

    .line 525
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 529
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    iget-object p1, p1, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;->access$1000(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->access$1100(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;Z)V

    .line 531
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;

    invoke-static {p1, v0}, Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;->access$1202(Lcom/narvii/feed/quizzes/QuizzesResultRankingListFragment$QuizzesResultAdapter;Z)Z

    :cond_0
    return-void
.end method
