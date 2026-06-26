.class Lcom/narvii/quiz/QuizReviewListFragment$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "QuizReviewListFragment.java"


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

    .line 162
    iput-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$1;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 166
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$1;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizReviewListFragment;->access$000(Lcom/narvii/quiz/QuizReviewListFragment;)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 172
    iget-object p1, p0, Lcom/narvii/quiz/QuizReviewListFragment$1;->this$0:Lcom/narvii/quiz/QuizReviewListFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizReviewListFragment;->access$000(Lcom/narvii/quiz/QuizReviewListFragment;)V

    return-void
.end method
