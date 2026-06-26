.class Lcom/narvii/quiz/QuizQuestionFragment$11;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment;->showQuestion()V
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

    .line 614
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$11;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 622
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$11;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$2300(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 623
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$11;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$1400(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 624
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$11;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->access$2100(Lcom/narvii/quiz/QuizQuestionFragment;)V

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
