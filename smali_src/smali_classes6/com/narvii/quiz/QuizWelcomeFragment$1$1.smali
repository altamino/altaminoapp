.class Lcom/narvii/quiz/QuizWelcomeFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizWelcomeFragment$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizWelcomeFragment$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

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
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->n(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->o(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->n(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 37
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const v0, 0x7f010038

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 20
    .line 21
    const-wide/16 v0, 0xfa

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->n(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    return-void
.end method
