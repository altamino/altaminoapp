.class Lcom/narvii/quiz/QuizReviewListFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizReviewListFragment;->initRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizReviewListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizReviewListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$1;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$1;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/quiz/QuizReviewListFragment;->p(Lcom/narvii/quiz/QuizReviewListFragment;)V

    .line 9
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$1;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/quiz/QuizReviewListFragment;->p(Lcom/narvii/quiz/QuizReviewListFragment;)V

    .line 9
    return-void
.end method
