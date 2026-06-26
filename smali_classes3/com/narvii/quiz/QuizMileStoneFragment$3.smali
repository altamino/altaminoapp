.class Lcom/narvii/quiz/QuizMileStoneFragment$3;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "QuizMileStoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;IZ)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$3;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 261
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$3;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$200(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 262
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$3;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$200(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
