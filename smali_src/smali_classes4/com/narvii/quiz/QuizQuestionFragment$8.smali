.class Lcom/narvii/quiz/QuizQuestionFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/quiz/QuizQuestionFragment;->Q(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/quiz/QuizQuestionFragment;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/quiz/QuizQuestionFragment$8;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/quiz/QuizQuestionFragment;->u(Lcom/narvii/quiz/QuizQuestionFragment;)Ljava/lang/Runnable;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-void
.end method
