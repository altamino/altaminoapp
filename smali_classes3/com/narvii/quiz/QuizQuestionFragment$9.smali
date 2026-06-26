.class Lcom/narvii/quiz/QuizQuestionFragment$9;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizQuestionFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$2100(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 535
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$9;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$600(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
