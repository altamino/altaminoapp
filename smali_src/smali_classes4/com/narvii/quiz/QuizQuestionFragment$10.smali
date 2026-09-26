.class Lcom/narvii/quiz/QuizQuestionFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->N(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->v(Lcom/narvii/quiz/QuizQuestionFragment;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$10;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/quiz/QuizQuestionFragment;->Q(Lcom/narvii/quiz/QuizQuestionFragment;)V

    .line 19
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
