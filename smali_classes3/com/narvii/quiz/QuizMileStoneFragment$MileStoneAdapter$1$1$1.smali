.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "QuizMileStoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;->this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 561
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;->this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->access$1900(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V

    .line 562
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;->this$3:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1600(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method
