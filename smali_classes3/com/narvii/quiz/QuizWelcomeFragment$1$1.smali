.class Lcom/narvii/quiz/QuizWelcomeFragment$1$1;
.super Ljava/lang/Object;
.source "QuizWelcomeFragment.java"

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

    .line 140
    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$200(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    iget-object v0, v0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$100(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$200(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    iget-object p1, p1, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01002a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0xfa

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$1$1;->this$1:Lcom/narvii/quiz/QuizWelcomeFragment$1;

    iget-object v0, v0, Lcom/narvii/quiz/QuizWelcomeFragment$1;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizWelcomeFragment;->access$200(Lcom/narvii/quiz/QuizWelcomeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
