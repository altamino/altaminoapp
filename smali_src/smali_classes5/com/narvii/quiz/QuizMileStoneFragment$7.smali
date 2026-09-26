.class Lcom/narvii/quiz/QuizMileStoneFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$7;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$7;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->p(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/cofetti/CofettiView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/widget/cofetti/CofettiView;->fire()V

    .line 10
    return-void
.end method
