.class Lcom/narvii/quiz/QuizQuestionFragment$6$1;
.super Ljava/lang/Object;
.source "QuizQuestionFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$6;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010017

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 449
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$6$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$6;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$6;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

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
