.class Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;
.super Ljava/lang/Object;
.source "QuizzesListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    iget-object p1, p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesListFragment;->access$000(Lcom/narvii/feed/quizzes/QuizzesListFragment;)Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    iget-object p1, p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesListFragment;->access$000(Lcom/narvii/feed/quizzes/QuizzesListFragment;)Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
