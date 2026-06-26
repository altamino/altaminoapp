.class Lcom/narvii/quiz/QuizQuestionFragment$4$1;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizQuestionFragment$4;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$4;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$4$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 389
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$4$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$4;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$4;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1102(Lcom/narvii/quiz/QuizQuestionFragment;Z)Z

    .line 390
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$4$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$4;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$4;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1000(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$4$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$4;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$4;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1300(Lcom/narvii/quiz/QuizQuestionFragment;)V

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
