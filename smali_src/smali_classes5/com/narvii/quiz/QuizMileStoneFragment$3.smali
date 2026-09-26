.class Lcom/narvii/quiz/QuizMileStoneFragment$3;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$3;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$3;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->u(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$3;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->u(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 19
    return-void
.end method
