.class Lcom/narvii/quiz/QuizQuestionFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizQuestionFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment$5;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

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
    iget-object p1, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f010019

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/quiz/QuizQuestionFragment$5$1;->this$1:Lcom/narvii/quiz/QuizQuestionFragment$5;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment$5;->this$0:Lcom/narvii/quiz/QuizQuestionFragment;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/narvii/quiz/QuizQuestionFragment;->alarmTV:Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 25
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
