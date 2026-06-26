.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;
.super Ljava/lang/Object;
.source "QuizMileStoneFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 557
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1600(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object p1

    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 566
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1600(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 567
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object p1, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const-string v0, "currentQuestion"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 568
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;->this$2:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->access$1900(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
