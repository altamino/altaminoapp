.class Lcom/narvii/quiz/QuizMileStoneFragment$2;
.super Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;
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
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$2;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$CenterLinearSmoothScroller;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$2;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$100(Lcom/narvii/quiz/QuizMileStoneFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
