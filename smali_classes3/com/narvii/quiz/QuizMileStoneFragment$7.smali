.class Lcom/narvii/quiz/QuizMileStoneFragment$7;
.super Ljava/lang/Object;
.source "QuizMileStoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;->setSuccessful()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$7;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$7;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1100(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/cofetti/CofettiView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/cofetti/CofettiView;->fire()V

    return-void
.end method
