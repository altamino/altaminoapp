.class Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesListFragment;)Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter$1;->this$1:Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;->this$0:Lcom/narvii/feed/quizzes/QuizzesListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/feed/quizzes/QuizzesListFragment;->t(Lcom/narvii/feed/quizzes/QuizzesListFragment;)Lcom/narvii/feed/quizzes/QuizzesListFragment$TrendingQuizzesListAdapter;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x2

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 24
    :cond_0
    return-void
.end method
