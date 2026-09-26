.class Lcom/narvii/quiz/QuizQuestionFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$3;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/narvii/quiz/QuizQuestionFragment;->H(Lcom/narvii/quiz/QuizQuestionFragment;Z)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->y(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$3$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$3;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$3;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->O(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 26
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
